<?php
/*
* Contact form
*/
$rescont = $innerbred = '';

if (defined('CONTACT_PAGE')) {
    $siteRegulars = Config::find_by_id(1);

    $tellinked = '';
    $telno = explode(",", $siteRegulars->whatsapp);
    foreach ($telno as $tel) {
        $tellinked .= '<a href="tel:' . $tel . '" class="text-black-50" target="_blank" rel="noopener noreferrer">' . $tel . '</a>';
        if (end($telno) != $tel) {
            $tellinked .= ', ';
        }
    }

    $email_txt = '';
    $emails = explode(",", $siteRegulars->contact_info2);
    foreach ($emails as $email) {
        $email_txt .= '<a href="mailto:' . $email . '" class="text-black-50" target="_blank" rel="noopener noreferrer">' . $email . '</a>';
        if (end($emails) != $email) {
            $email_txt .= ', ';
        }
    }

    $img = BASE_URL . 'template/web/assets/images/main-slider/about.jpg';
    // other image from Preference Mgmt
    if (!empty($siteRegulars->other_upload)) {
        if (file_exists(SITE_ROOT . "images/preference/other/" . $siteRegulars->other_upload)) {
            $img = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        }
    }
    $imglink = $siteRegulars->contact_upload;
    if (!empty($imglink)) {
        $img = IMAGE_PATH . 'preference/contact/' . $siteRegulars->contact_upload;
    }

    $rescont .= '
        <!-- Page Title -->
        <section class="page-title mb-5" style="background-image: url(' . $img . ');">
            <div class="auto-container">
                <div class="content-box">
                    <div class="content-wrapper">
                        <div class="title">
                            <h1>Contact us</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
        <!-- section fifty six -->
        <section class="section-fifty-six pt-3">
            <div class="auto-container">
                <div class="row">
            <div class="col-lg-4">
                        <div class="col-lg-12 mb-4">
                        <div class="block-fifty-six d-flex gap-4 align-items-center py-3">
                            <div class="icon text-black-50"><i class="flaticon-open"></i></div>
                          <div class="contact_information">
                                <h3>Email Address</h3>
                            <div class="text">' . $email_txt . '</div>
                          </div>
                        </div>
                    </div>
                    <div class="col-lg-12 mb-4">
                        <div class="block-fifty-six d-flex gap-4 align-items-center py-3">
                            <div class="icon text-black-50"><i class="flaticon-call-2"></i></div>
                          <div class="contact_information">
                                <h3>Phone Number</h3>
                            <div class="text">' . $tellinked . '</div>
                          </div>
                        </div>
                    </div>
                    <div class="col-lg-12 mb-4">
                        <div class="block-fifty-six d-flex gap-4 align-items-center py-3">
                            <div class="icon text-black-50"><i class="flaticon-location-2"></i></div>
                                <div class="contact_information">
                                <h3>Office Address</h3>
                            <div class="text">' . $siteRegulars->fiscal_address . '</div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-lg-8">
                <div class="contact-map">
                <iframe src="' . $siteRegulars->location_map . '" width="100%" height="470" frameborder="0" style="border:0; width: 100%" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
            </div>
         </div>
            </div>
        </section>
    ';
}

$jVars['module:contact-us'] = $rescont;
