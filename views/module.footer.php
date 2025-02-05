<?php
$siteRegulars = Config::find_by_id(1);
$lastElement = '';
$phonelinked = '';
$whatsapp = '';
$tellinked = '';

$phoneno = explode(",", $siteRegulars->whatsapp);
foreach ($phoneno as $phone) {
    $phonelinked .= '<a href="tel:+' . $phone . '" target="_blank" rel="noopener noreferrer">' . $phone . '</a>';
    if (end($phoneno) != $phone) {
        $phonelinked .= ', ';
    }
}

$footer = '
<footer id="mad-footer" class="mad-footer footer-2">
            <!--================ Footer row ================-->
            <div class="mad-footer-main">
                <div class="container-fluid">

                    <div class="row justify-content-between vr-size-2" style="border-bottom: 1px solid #857373;padding-bottom: 10px;margin-bottom: 26px;">
                        <div class="col-xxl-4 col-xl-4">
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">' . $siteRegulars->sitename . '</h6>
                                <div class="mad-vr-list">
                                    <ul>
                                        <li>'. $siteRegulars->fiscal_address .'</li>
                                        <li><b>Landline:</b> '. $tellinked .'</li>
                                        <li><b>Phone:</b><a href= "tel:'. $siteRegulars->address .'" target="_blank" rel="noopener noreferrer" > '. $siteRegulars->address .'</a>(Viber, WhatsApp)</li>
                                        <li><b>Email:</b><a href="mailto:'. $siteRegulars->email_address .'" target="_blank" rel="noopener noreferrer" class="mad-link"> '. $siteRegulars->email_address .'</a>
                                        </li>
                                    </ul>
                                    <div class="mad-social-icons" style="margin-top:12px;">
                                    <ul>
                                    ' . $jVars['module:socilaLinkbtm'] . ' 
                                    </ul>
                                    </div>
                                </div>
                            </section>
                        </div>

                        <div class="col-xl-2 col-lg-3 col-md-3">
                            <!--================ Widget ================-->
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Quick Links</h6>
                                <div class="mad-vr-list menu">
                                '. $jVars['module:footer-menu'] .'
                                   
                                </div>
                            </section>
                            <!--================ End of Widget ================-->
                        </div>

                        <div class="col-xxl-4 col-xl-4">
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Kathmandu Reservation Office</h6>
                                <div class="mad-vr-list">
                                    <ul>
                                        <li>'. $siteRegulars->mail_address.'</li>
                                        <li><b>Phone:</b> '. $phonelinked.'</li>
                                        <li><b>P.O Box:</b> '. $siteRegulars->pobox.'</li>
                                        <li><b>Email:</b><a href="mailto:'. $siteRegulars->contact_info2.'" class="mad-link"> '. $siteRegulars->contact_info2.'</a>
                                        </li>
                                    </ul>
                                </div>
                            </section>
                        </div>

                    </div>
                    <div class="row justify-content-between vr-size-2">
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <!--================ Widget ================-->
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Part Of</h6>
                                <div class="mad-vr-list">
                                    <ul style="display:flex;">
                                        <li style="margin-right: 20px;"><img src="template/web/images/awards/ace_footer_logo.png" alt="Logo" style="width: 100px;"></li>
                                        <li><img src="template/web/images/awards/logo-dark.png" alt="" style="width: 200px;"></li>
                                    </ul>
                                </div>
                            </section>
                            <!--================ End of Widget ================-->
                        </div>

                        
                        
                        <div class="col-xl-5 col-lg-6 col-md-6">
                            <!--================ Widget ================-->
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Booking Engine</h6>
                                <div class="mad-vr-list">
                                    <ul class="book-eng">
                                    ' . $jVars['module:otatop'] . ' 
                                    </ul>
                                </div>
                            </section>
                            <!--================ End of Widget ================-->
                        </div>

                        <div class="col-xl-3 col-lg-6 col-md-6">
                            <!--================ Widget ================-->
                            <section class="mad-widget">
                                <h6 class="mad-widget-title">Affiliated with</h6>
                                <div class="btn-set mad-logos">
                                    <a href="#">
                                        <img src="template/web/images/awards/han-logo.png" alt="" style="width: 70px;">
                                    </a>

                                    <a href="#">
                                        <img src="template/web/images/awards/pata-logo.png" alt="" style="width: 70px;">
                                    </a>
                                </div>
                            </section>
                            <!--================ End of Widget ================-->
                        </div>

                        
                    </div>

                    <div class="mad-footer-bottom">
                        <p class="copyrights align-center">
                             '. $jVars['site:copyright'] .'
                        </p>
                    </div>
                </div>
            </div>
            <!--================ End of Footer row ================-->
        </footer>
        <!--================ End of Footer ================-->
</div>
';

$jVars['module:footer-booking'] = $footer;


$resort_email = '';
$resortEmails = explode(",", $siteRegulars->contact_info2);
foreach ($resortEmails as $resortEmail) {
    $mlAddress = str_replace('@', '&#64;', $resortEmail);
    $resort_email .= '<a href="mailto:' . $mlAddress . '" target="_blank" rel="noopener noreferrer">' . $mlAddress . '</a>';
    $resort_email .= (end($resortEmails) != $mlAddress) ? ', ' : '';
}
$corporation_reservation_number = '';
$corpReserveNumbers = explode(",", $siteRegulars->contact_info);
foreach ($corpReserveNumbers as $corpReserveNumber) {
    $corporation_reservation_number .= '<a href="tel:' . $corpReserveNumber . '" target="_blank" rel="noopener noreferrer">' . $corpReserveNumber . '</a>';
    if (end($corpReserveNumbers) != $corpReserveNumber) {
        $corporation_reservation_number .= ', ';
    }
}

$corporation_sales_number = '';
$corpSalesNumbers = explode(",", $siteRegulars->address);
foreach ($corpSalesNumbers as $corpSalesNumber) {
    $corporation_sales_number .= '<a href="tel:' . $corpSalesNumber . '" target="_blank" rel="noopener noreferrer">' . $corpSalesNumber . '</a>';
    if (end($corpSalesNumbers) != $corpSalesNumber) {
        $corporation_sales_number .= ', ';
    }
}

$corporate_email = '';
$corporateEmails = explode(",", $siteRegulars->email_address);
foreach ($corporateEmails as $corporateEmail) {
    $emlAddress = str_replace('@', '&#64;', $corporateEmail);
    $corporate_email .= '<a href="mailto:' . $emlAddress . '" target="_blank" rel="noopener noreferrer">' . $emlAddress . '</a>';
    $corporate_email .= (end($corporateEmails) != $emlAddress) ? ', ' : '';
}


$footer2 = '
<style>
    .main-footer.style-two.footer-styling {
        // background: linear-gradient(180deg, rgb(104 104 56) 0%, rgb(63 63 22 / 76%) 100%), url('.BASE_URL.'template/web/assets/images/barpeepal/footer.webp);
         background: linear-gradient(182deg, rgb(35 30 30) 0%, rgb(0 0 0 / 76%) 100%), url('.BASE_URL.'template/web/assets/images/barpeepal/footer.webp);
        background-size: cover;
    }
</style>

<footer class="main-footer style-two footer-styling">
    <div class="auto-container">
        <div class="widget-wrapper pb-0">
            <div class="row">
                <div class="col-lg-2 col-md-6">
                    <div class="footer-logo mt-2 mb-4"><img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" width="160px" alt="Logo"></div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="logo d-flex gap-3 flex-wrap justify-content-lg-center mb-5 mb-md-0">
                                '.$jVars['module:socilaLinkbtm'] .'
                              <a href="https://www.hotelpokhara.com/" class="w-75" target="_blank"> <img src="'.BASE_URL.'template/web/assets/images/barpeepal/silver.png" width="107" alt="Logo"></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="column col-lg-2 col-md-6 offset-lg-1">
                    <div class="widget links-widget contact-widget">
                        <h4>Quick Links</h4>
                        <div class="row">
                            <div class="col-sm-12">
                                ' . $jVars['module:menu:footer-menu-1'] . '
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 footer__icons">
                    <div class="widget contact-widget">
                        <h4>Bar Peepal Resort</h4>
                        <ul>
                            <li><i class="fal fa-map-marker-alt"></i> <span>' . $siteRegulars->fiscal_address . '</span></li>
                            <li><i class="fal fa-phone "></i><span>' . $phonelinked . '</span></li>
                            <li><i class="fal fa-envelope"></i><span>' . $resort_email . '</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 footer__icons offset-lg-1">
                    <div class="widget contact-widget">
                        <h4>Corporate Office</h4>
                        <ul>
                            <li><i class="fal fa-map-marker-alt"></i><span>' . $siteRegulars->mail_address . '</span></li>
                            <li><i class="fal fa-phone"></i> <span>Reservation: ' . $corporation_reservation_number . '</span></li>
                            <li><i class="fal fa-phone"></i> <span>Sales: ' . $corporation_sales_number . '</span></li>
                            <li><i class="fal fa-envelope"></i><span>' . $corporate_email . '</a></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Bottom -->
    <div class="footer-bottom">
        <div class="auto-container">
            <div class="wrapper-box border-top justify-content-center justify-content-xl-between">
                <div class="copyright">
                    ' . $jVars['site:copyright'] . '
                </div>
                <div class="brand-logo">
                    <div class="merchant d-flex justify-content-xl-end gap-4 justify-content-center">
                        <div class="logo"><img src="'.BASE_URL.'template/web/assets/images/barpeepal/payment.webp" class=" d-block ms-xl-auto" alt="Payment" width="160px"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
';

$jVars['module:footer-booking2'] = $footer2;


if (!empty($siteRegulars->whatsapp_a)) {
    // pr($siteRegulars);
    $whatsapp = '
    <div class="whats_app">
        <a href="https://wa.me/977' . $siteRegulars->whatsapp_a . '" target="_blank" class="whatsapp" rel="noopener noreferrer">
            <img src="' . BASE_URL . 'template/web/assets/images/barpeepal/whatsapp.webp" alt="Whatsapp" width="50px">
        </a>
    </div>';
}

$jVars['module:footer-whatsapp'] = $whatsapp;

