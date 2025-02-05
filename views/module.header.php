<?php
$siteRegulars = Config::find_by_id(1);
$booking_code = Config::getField('hotel_code', true);
$header = ob_start();
$tellinked = '';
$telno = explode("/", $siteRegulars->contact_info);
$lastElement = array_shift($telno);
$tellinked .= '<a href="tel:' . $lastElement . '" target="_blank" rel="noopener noreferrer" >' . $lastElement . '</a>/';
foreach ($telno as $tel) {

    $tellinked .= '<a href="tel:+977-' . $tel . '" target="_blank" rel="noopener noreferrer" >' . $tel . '</a>';
    if (end($telno) != $tel) {
        $tellinked .= '/';
    }
}

$header = ob_get_clean();


$header1 = '
    <header class="main-header header-style-three position-absolute">
        <!-- Header Upper -->        
        <div class="header-upper">
            <div class="auto-container">
                <div class="inner-container">
                    <div class="logo-box main-logo">
                        <div class="logo">
                            <a href="' . BASE_URL . 'home">
                                <img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" alt="Logo" width="150px;">
                            </a>
                        </div>
                    </div>
                    <!--Nav Box-->
                    <div class="nav-outer">
                        <!--Mobile Navigation Toggler-->
                        <div class="mobile-nav-toggler"><img src="' . BASE_URL . 'template/web/assets/images/icons/icon-bar3.webp" alt="Bar"></div>
                        <!-- Main Menu -->
                        <nav class="main-menu navbar-expand-md navbar-light">
                            <div class="collapse navbar-collapse show clearfix" id="navbarSupportedContent">
                               ' . $jVars['module:res-menu'] . '
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!--End Header Upper-->
        <!-- Sticky Header  -->
        <div class="sticky-header">
            <div class="header-upper">
                <div class="auto-container">
                    <div class="inner-container">
                        <div class="logo-box main-logo">
                            <div class="logo">
                                <a href="' . BASE_URL . 'home">
                                    <img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" alt="Logo">
                                </a>
                            </div>
                        </div>
                        <!--Nav Box-->
                        <div class="nav-outer">
                            <!--Mobile Navigation Toggler-->
                            <div class="mobile-nav-toggler"><img src="' . BASE_URL . 'template/web/assets/images/icons/icon-bar3.webp" alt="Bar"></div>
                            <!-- Main Menu -->
                            <nav class="main-menu navbar-expand-md navbar-light"></nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Sticky Menu -->
        <!-- Mobile Menu  -->
        <div class="mobile-menu">
            <div class="menu-backdrop"></div>
            <div class="close-btn"><i class="icon far fa-times"></i></div>
            <nav class="menu-box">
                <div class="nav-logo">
                    <a href="' . BASE_URL . 'home">
                        <img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" alt="Logo" title="" width="150px">
                    </a>
                </div>
                <div class="menu-outer">
                    <!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
                </div>
            </nav>
        </div>
        <!-- End Mobile Menu -->
        <div class="nav-overlay">
            <div class="cursor"></div>
            <div class="cursor-follower"></div>
        </div>
    </header>
';
$jVars['module:header1'] = $header1;