<?php
$booking_code = Config::getField('hotel_code', true);


/*
* Home accmodation list
*/
$reshmpkg = '';
$imageList = '';
$whats_nearby = '';
$room_detail = '';


if (defined('HOME_PAGE')) {
    $acid = Package::get_accommodationId();
    $pkgRec = Package::find_by_id($acid);
    if (!empty($pkgRec)) {
        $subRec = Subpackage::getPackage_limit($acid);
        if (!empty($subRec)) {
            $reshmpkg .= '
            <section class="section-twenty-five spacing_padding_rooms bg_image_tree">
                <div class="auto-container">
                    <div class="sub-title text-center">Indulge in Luxury & Elegance at Bar Peepal Resort</div>
                    <h2 class="sec-title text-center">Rooms & Suites</h2>
                    <div class="theme_carousel owl-theme owl-carousel" 
                        data-options=\'{
                            "loop": true, 
                            "margin": 30, 
                            "autoheight":true, 
                            "lazyload":true, 
                            "nav": false,
                            "dots": true, 
                            "autoplay": true, 
                            "responsive":{ "0" :{ "items": "1" }, "768" :{ "items" : "2" } , "1000":{ "items" : "3" }}
                        }\'>
            ';

            foreach ($subRec as $subRow) {
                $img123 = unserialize($subRow->image);
                $imgpath = (!empty($subRow->image) && !empty($img123) && isset($img123[0])) ?
                    IMAGE_PATH . 'subpackage/' . $img123[0] :
                    IMAGE_PATH . 'static/inner-img.jpg';
                $reshmpkg .= '
                <div class="slide-item">
                    <div class="block-twenty-five">
                        <div class="image"><img src="' . $imgpath . '" alt="' . $subRow->title . '"></div>
                        <div class="lower-content">
                            <div class="pricing">' . $subRow->currency . ' ' . $subRow->onep_price . '/Night</div>
                            <div class="icon-list">
                                <ul>
                                    <li>
                                        <i class="flaticon-user"></i>
                                        <h4>Occupancy</h4>
                                        <div class="text">' . $subRow->twop_price . '</div>
                                    </li>
                                    <li>
                                        <i class="flaticon-preview"></i>
                                        <h4>Size</h4>
                                        <div class="text">' . $subRow->room_size . '</div>
                                    </li>
                                    <li>
                                        <i class="flaticon-bed"></i>
                                        <h4>Bed</h4>
                                        <div class="text">' . $subRow->bed . '</div>
                                    </li>
                                </ul>
                            </div>
                            <h3>' . $subRow->title . '</h3>
                            <a href="' . BASE_URL . $subRow->slug . '" class="theme-btn btn-style-four"><span>View Room</span></a>
                        </div>
                    </div>
                </div>
                ';
            }

            $reshmpkg .= '
                    </div>
                </div>
            </section>
            ';
        }
    }
}


$jVars['module:home-accommodation'] = $reshmpkg;



/*
* Home sub package list
*/
$newpkg = '';

if (defined('HOME_PAGE')) {
    //$slug = !empty($_REQUEST['slug'])? addslashes($_REQUEST['slug']) : '';
    //$pkgRec = Package::getPackage();
    //if (!empty($pkgRec)) {

    /* foreach($pkgRec as $pkgRow) {
        $imglink = '';*/
    /* if ($pkgRow->banner_image != "a:0:{}") {
         $imageList = unserialize($pkgRow->banner_image);
         $file_path = SITE_ROOT . 'images/package/banner/' . $imageList[0];
         if (file_exists($file_path)) {
             $imglink = IMAGE_PATH . 'package/banner/' . $imageList[0];
         }
     } */
    // if(($pkgRow->type)==0) {
    $newpkg .= '<div class="col-sm-6">
                <div class="mosaic_container">
                     <a href="' . BASE_URL . 'page/about-us">
                    <img src="' . BASE_URL . 'template/web/img/mosaic_1.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Experience Peninsula</span>
                    </a>
                </div>
            </div>';
    //}else{
    $newpkg .= '<div class="col-sm-6">
         
         <div class="col-xs-12">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'services">
                        <img src="' . BASE_URL . 'template/web/img/mosaic_2.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Services & Faciities</span>
                        </a>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'rooms">
                        <img src="' . BASE_URL . 'template/web/img/room.jpg" alt="rooms" class="img-responsive add_bottom_30"><span class="caption_2">
Accommodation</span>
                        </a>
                    </div>
                </div>
                  <div class="col-xs-6">
                     <a href="' . BASE_URL . 'dining">
                    <div class="mosaic_container">
                        <img src="' . BASE_URL . 'template/web/img/dining.jpg" alt="dining" class="img-responsive add_bottom_30"><span class="caption_2">Dining & Bar</span>
                    </div>
                    </a>
                </div>
                
                  </div>
                ';

    //}
    //}
    //}
}
$jVars['module:newpkg'] = $newpkg;


/////
$reshplist = $pakagehometype = '';
$cnt = 1;
if (defined('HOME_PAGE')) {
    $pgkRows = Package::find_by_id();
    $pkgRec = Subpackage::getPackage_limits();
    // pr($pkgRec);
    if (!empty($pkgRec)) {

        foreach ($pkgRec as $pkgRow) {
            //echo "<pre>";print_r($pkgRow);die();

            //if(!empty($pkgRow->image2)) {


            //echo "<pre>";print_r($reshplist);die();
            if (($cnt % 3) == 2) {
                $reshplist .= ' <div class="container margin_60">
        <div class="row">
            <div class="col-md-5 col-md-offset-1 col-md-push-5">
                  <figure class="room_pic left"><a href="' . BASE_URL . '' . $pkgRow->slug . '"><img src="' . IMAGE_PATH . 'subpackage/image/' . $pkgRow->image2 . '" alt="' . $pkgRow->title . '" class="img-responsive"></a><span class="wow zoomIn"><sup>' . $pkgRow->currency . ' </sup>' . $pkgRow->onep_price . '<small>Per night</small></span></figure>
            </div>
            <div class="col-md-4 col-md-offset-1 col-md-pull-6">
                <div class="room_desc_home">
                    <h3>' . $pkgRow->title . '</h3>
                    <p>
                         ' . $pkgRow->detail . ' 
                    </p>
                    <ul>';
                $saveRec = unserialize($pkgRow->feature);
                $count = 1;
                if ($saveRec != null) {
                    $featureList = $saveRec[47][1];
                    //echo "<pre>";print_r($featureList);die();

                    if (!empty($featureList)) {
                        $icoRec = '';

                        foreach ($featureList as $fetRow) {

                            $icoRec = Features::get_by_id($fetRow);
                            $reshplist .= '<li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="' . $icoRec->icon . '"></i></span>
                                    <div class="tooltip-content">' . $icoRec->title . '</div>
                              </div>
                              </li>';


                            if ($count++ == 5) break;
                        }
                    }
                }
                $reshplist .= '</ul>
                    <a href="' . BASE_URL . '' . $pkgRow->slug . '" class="btn_1_outline">Read more</a>
                </div><!-- End room_desc_home -->
            </div>
        </div><!-- End row -->
    </div>';
            } else {
                $reshplist .= '  <div class="container_styled_1">
        <div class="container margin_60">
            <div class="row">
                <div class="col-md-5 col-md-offset-1">
                    <figure class="room_pic"><a href="' . BASE_URL . '' . $pkgRow->slug . '"><img src="' . IMAGE_PATH . 'subpackage/image/' . $pkgRow->image2 . '" alt="' . $pkgRow->title . ' " class="img-responsive"></a><span class="wow zoomIn"><sup>' . $pkgRow->currency . ' </sup>' . $pkgRow->onep_price . '<small>Per night</small></span></figure>
                </div>
                <div class="col-md-4 col-md-offset-1">
                    <div class="room_desc_home">
                        <h3>' . $pkgRow->title . '  </h3>
                        <p>
                            ' . $pkgRow->detail . '
                        </p>
                        <ul>';
                $saveRec = unserialize($pkgRow->feature);
                $count = 1;
                if ($saveRec != null) {
                    $featureList = $saveRec[47][1];
                    //echo "<pre>";print_r($featureList);die();

                    if (!empty($featureList)) {
                        $icoRec = '';

                        foreach ($featureList as $fetRow) {

                            $icoRec = Features::get_by_id($fetRow);
                            $reshplist .= '<li>
                            <div class="tooltip_styled tooltip-effect-4">
                                <span class="tooltip-item"><i class="' . $icoRec->icon . '"></i></span>
                                    <div class="tooltip-content">' . $icoRec->title . '</div>
                              </div>
                              </li>';


                            if ($count++ == 5) break;
                        }
                    }
                }
                $reshplist .= '</ul>
                        <a href="' . BASE_URL . '' . $pkgRow->slug . '" class="btn_1_outline">Read more</a>
                    </div><!-- End room_desc_home -->
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </div>';
            }
            $cnt++;
            //}

        }
    }
    /* $reshplist.= '</div>
                 </div>
             </div>';*/
}

$jVars['module:home-packagelist'] = $reshplist;
$jVars['module:home-package-type-list'] = $pakagehometype;



$roomlist = $roombread = '';
$modalpopup = '';
$room_package = $room_modal = $room_modal_script = '';

if (defined('PACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $pkgRow = Package::find_by_slug($slug);

    if ($pkgRow->type == 1) {

        $imglink = BASE_URL . 'template/web/assets/images/main-slider/about.jpg';
        // offer image from Preference Mgmt
        if (!empty($siteRegulars->offer_upload)) {
            if (file_exists(SITE_ROOT . "images/preference/offer/" . $siteRegulars->offer_upload)) {
                $imglink = IMAGE_PATH . 'preference/offer/' . $siteRegulars->offer_upload;
            }
        }
        // Banner image of Package
        $pkgRowImg = $pkgRow->banner_image;
        if ($pkgRowImg != "a:0:{}") {
            $pkgRowList = unserialize($pkgRowImg);
            $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
            if (file_exists($file_path) and !empty($pkgRowList[0])) {
                $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
            }
        }

        $roomlist .= '
            <section class="page-title" style="background-image: url(' . $imglink . ');">
                <div class="auto-container">
                    <div class="content-box">
                        <div class="content-wrapper">
                            <div class="title">
                                <h1>' . $pkgRow->title . '</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- section thirty eight -->
            <section class="section-thirty-eight package_rooms">
                <div class="auto-container">
        ';

        $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type='{$pkgRow->id}' ORDER BY sortorder DESC ";
        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
        $limit = 200;
        $total = $db->num_rows($db->query($sql));
        $startpoint = ($page * $limit) - $limit;
        $sql .= " LIMIT " . $startpoint . "," . $limit;
        $query = $db->query($sql);
        $pkgRec = Subpackage::find_by_sql($sql);

        if (!empty($pkgRec)) {
            foreach ($pkgRec as $key => $subpkgRow) {
                $roomlist .= '
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="image room_listing_img">
                                <img src="' . IMAGE_PATH . 'subpackage/image/' . $subpkgRow->image2 . '" alt="' . $subpkgRow->title . '">
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="block-thirty-eight">
                                <div class="icon-list">
                                    <ul>
                                        <li>
                                            <i class="flaticon-user"></i>
                                            <h4>Occupancy</h4>
                                            <div class="text">' . $subpkgRow->twop_price . '</div>
                                        </li>
                                        <li>
                                            <i class="flaticon-preview"></i>
                                            <h4>Size</h4>
                                            <div class="text">' . $subpkgRow->room_size . '</div>
                                        </li>
                                        <li>
                                            <i class="flaticon-bed"></i>
                                            <h4>Bed</h4>
                                            <div class="text">' . $subpkgRow->bed . '</div>
                                        </li>
                                    </ul>
                                </div>
                                <h3><a href="' . BASE_URL . $subpkgRow->slug . '" class="text-black">' . $subpkgRow->title . '</a></h3>
                                <div class="text-two text__limit">' . strip_tags($subpkgRow->detail) . '</div>
                                <div class="inner-box">
                                    <div class="pricing">Starting From ' . $subpkgRow->currency . ' ' . $subpkgRow->onep_price . '/Night</div>
                                    <a href="' . BASE_URL . 'result.php?hotel_code=' . $booking_code . '" target="_blank" rel="noopener noreferrer" class="theme-btn btn-style-four"><span>Book Now</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                ';
            }
        }

        $roomlist .= '
                </div>
            </section>
        ';
    }
    else {
        $imglink = BASE_URL . 'template/web/assets/images/main-slider/about.jpg';
        // other image from Preference Mgmt
        if (!empty($siteRegulars->offer_upload)) {
            if (file_exists(SITE_ROOT . "images/preference/offer/" . $siteRegulars->offer_upload)) {
                $imglink = IMAGE_PATH . 'preference/offer/' . $siteRegulars->offer_upload;
            }
        }
        // Banner image of Package
        $pkgRowImg = $pkgRow->banner_image;
        if ($pkgRowImg != "a:0:{}") {
            $pkgRowList = unserialize($pkgRowImg);
            $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
            if (file_exists($file_path) and !empty($pkgRowList[0])) {
                $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
            }
        }

        $roomlist .= '
            <section class="page-title" style="background-image: url(' . $imglink . ');">
               <div class="auto-container">
                   <div class="content-box">
                       <div class="content-wrapper">
                           <div class="title">
                               <h1>' . $pkgRow->title . '</h1>
                           </div>
                       </div>
                   </div>
               </div>
            </section>
            <section class="section-thirty-eight">
               <div class="auto-container column__orders">
        ';

        $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";
        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
        $limit = 200;
        $total = $db->num_rows($db->query($sql));
        $startpoint = ($page * $limit) - $limit;
        $sql .= " LIMIT " . $startpoint . "," . $limit;
        $query = $db->query($sql);
        $pkgRec = Subpackage::find_by_sql($sql);

        if (!empty($pkgRec)) {
            foreach ($pkgRec as $key => $subpkgRow) {
                $roomlist .= '
                    <div class="row mb-3">
                        <div class="col-lg-6">
                            <div class="image room_listing_img hall_listing_img">
                                <img src="' . IMAGE_PATH . 'subpackage/image/' . $subpkgRow->image2 . '" width="100%" alt="' . $subpkgRow->title . '">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="block-thirty-eight dining_padding">
                               <h3><a href="' . BASE_URL . $subpkgRow->slug . '" class="text-black">' . $subpkgRow->title . '</a></h3>
                              <div class="text-two text__limit hall__text"> ' . substr($subpkgRow->detail,0,220) . '... </div><br/>
                ';
                if ($pkgRow->id == 16) {
                    $roomlist .= '
                                <div class="icon-list">
                                    <ul class="my-3">
                                        <li>
                                            <i class="flaticon-preview"></i>
                                            <h4>Hall Size</h4>
                                            <div class="text">' . $subpkgRow->room_size . '</div>
                                        </li>
                                        <li>
                                            <i class="flaticon-user"></i>
                                            <h4>Max. Occupancy</h4>
                                            <div class="text">' . $subpkgRow->twop_price . '</div>
                                        </li>
                                       </ul>
                                    </div>
                                     <a href="javascript:void(0)" class="theme-btn btn-style-four hall_btn_styling" data-bs-toggle="modal" data-bs-target="#bar_peepal_hall_'.$subpkgRow->id.'"><span>Book Now</span></a>
                                </div>
                            </div>
                        </div>
                    ';
                    $room_modal .= '
                        <div class="modal fade" id="bar_peepal_hall_'.$subpkgRow->id.'" tabindex="-1" aria-labelledby="hall_Label" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header text-white" style="background-color: var(--color-orange);">
                                        <h1 class="modal-title fs-5" id="hall_Label">Hall Enquiry</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form id="forHall-'.$subpkgRow->id.'">
                                            <div class="mb-4">
                                                <input type="text" class="form-control" id="FullName" name="name" placeholder="Full Name *">
                                                <input type="hidden" class="form-control" name="hall" value="' . $subpkgRow->title . '" >
                                            </div>
                                            <div class="mb-4">
                                                <input type="email" class="form-control" id="email" name="email" placeholder="Email *">
                                            </div>
                                            <div class="mb-4">
                                                <input type="number" class="form-control" id="Contact" name="contact"
                                                    placeholder="Mobile No. *">
                                            </div>
                                            <div class="mb-4">
                                                <input type="text" class="form-control" id="event_name" name="event"
                                                    placeholder="Event Name *">
                                            </div>
                                            <div class="mb-4 d-flex justify-content-between gap-3">
                                                <div class="book_date flex-grow-1">
                                                    <input type="text" class="form-control datepicker" id="date" name="date" placeholder="Date">
                                                </div>
                                                <div class="no_pax flex-grow-1">
                                                    <input type="number" class="form-control" name="pax" id="number" placeholder="Pax">
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <textarea class="form-control" id="message-text" name="message"
                                                    placeholder="Message *"></textarea>
                                            </div>
                                            <!--<div class="mb-3">
                                                <div class="g-recaptcha" data-sitekey="6LcJdJspAAAAAOMSDeSzpDwDHqexpELexIkhOPck"></div>
                                            </div>-->
                                            <div id="result_msg-'.$subpkgRow->id.'" class="alert alert-success" style="display: none;"></div>
                                            <div class="modal-footer">
                                                <button type="submit" id="submit-'.$subpkgRow->id.'" class="theme-btn btn-style-one px-3 py-2 ">Submit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ';
                    $room_modal_script .= '
                        <script type="text/javascript">
                            jQuery(document).ready(function () {
                                jQuery("#forHall-'.$subpkgRow->id.'").validate({
                                    errorElement: "span",
                                    errorClass: "validate-has-error",
                                    rules: {
                                        name: {required: true, minlength: 2},
                                        email: {required: true, email: true},
                                        contact: {required: true, number: true},
                                        event: {required: true},
                                        date: {required: true},
                                        pax: {required: true, number: true},
                                        message: {required: true}
                                    },
                                    messages: {
                                        name: {required: "This field is required.", minlength: "Name must consist of at least 2 characters"},
                                        email: {required: "This field is required.", email: "Enter Correct Email"},
                                        contact: {required: "This field is required", number: "Enter valid phone number"},
                                        event: {required: "This field is required"},
                                        date: {required: "This field is required"},
                                        pax: {required: "This field is required", number: "Enter valid number"},
                                        message: {required: "This field is required"}
                                    },
                                    submitHandler: function (form) {
                                        var recaptcha = $("#g-recaptcha-response").val();
                                        if (recaptcha === "") {
                                            event.preventDefault();
                                            alert("Please check the recaptcha");
                                            return false;
                                        }
                                        var Frmval = jQuery("form#forHall-'.$subpkgRow->id.'").serialize();
                                        jQuery("button#submit-'.$subpkgRow->id.'").attr("disabled", "true").html("Processing...");
                
                                        jQuery.ajax({
                                            type: "POST",
                                            dataType: "JSON",
                                            url: base_url + "enquery_mail.php",
                                            data: "action=hallEnquiry&" + Frmval,
                                            success: function (data) {
                                                    var msg = eval(data);
                                                    jQuery("button#submit-'.$subpkgRow->id.'").removeAttr("disabled").html("Submit");
                                                    jQuery("div#result_msg-'.$subpkgRow->id.'").html(msg.message).css("display", "block").addClass("alert alert-success").fadeOut(8000);
                                                    jQuery("form#forHall-'.$subpkgRow->id.'")[0].reset();
                                                }
                                        });
                                        return false;
                                    }
                                });
                            });
                        </script>
                    ';
                }
                else if ($pkgRow->id == 17) {
                    $roomlist .= '
                                <div class="btn_wrapper">
                                    <a href="' . BASE_URL . $subpkgRow->slug . '" class="theme-btn btn-style-four hall_btn_styling"><span>Explore</span></a>
                                    <a href="#" class="theme-btn btn-style-four hall_btn_styling d-none"><span>View Menu</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    ';
                }
            }
        }

        $roomlist .= '
                </div>
            </section>
        ';
    }
}

$jVars['module:package:hall-modal'] = $room_modal;
$jVars['module:package:hall-modal-script'] = $room_modal_script;

// $halllist = '';
// $hall_details = '';
// if($pkgRow->type==11) {
//     $sql = "SELECT * FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC";
//     $hallRec = Subpackage::find_by_sql($sql);

//     if(!empty($hallRec)) {
//         $halllist .= '<section class="section-thirty-eight">
//             <div class="auto-container column__orders">';

//         foreach($hallRec as $hallRow) {
//             if(!empty($hallRow->image)) {
//                 $img123 = unserialize($hallRow->image);
//                 $imglink = IMAGE_PATH.'subpackage/'.$img123[0];
//             }

//             $hall_details .= ' <div class="row mb-3">
//                 <div class="col-lg-6">
//                     <div class="image room_listing_img hall_listing_img"><img src="assets/images/barpeepal/rooms/deluxe.jpg" width="100%" alt=""></div>
//                 </div>
//                 <div class="col-lg-6">
//                     <div class="block-thirty-eight">
//                             <h3><a href="" class="text-black">XYZ Hall</a></h3>
//                             <div class="text-two text__limit hall__text">Well-furnished accommodation with all necessary amenities that makes your time relaxing & blissful. You can enjoy the beautiful view of Fewa Lake from the private balcony of accommodation.</div>
//                             <div class="icon-list">
//                                 <ul class="my-3">
//                                     <li>
//                                         <i class="flaticon-preview"></i>
//                                         <h4>Hall Size</h4>
//                                         <div class="text">600sqm</div>
//                                         </li>
//                                     <li>
//                                     <i class="flaticon-user"></i>
//                                     <h4>Max. Occupancy</h4>
//                                     <div class="text">4 Person</div>
//                                     </li>
//                                     </ul>
//                                 </div>
//                                 <a href="javascript:void(0)" class="theme-btn btn-style-four hall_btn_styling" data-bs-toggle="modal"
//                                 data-bs-target="#bar_peepal_hall"><span>Book Now</span></a>
//                     </div>
//                 </div>
//             </div>
//             <
//             ';
//         }

//         $halllist .= 'section class="page-title" style="background-image: url(assets/images/main-slider/about.jpg);">
//         <div class="auto-container">
//             <div class="content-box">
//                 <div class="content-wrapper">
//                     <div class="title">
//                         <h1>Meeting & Events</h1>
//                     </div>
//                 </div>
//             </div>
//         </div>
//     </section>

//      <section class="section-thirty-eight">
//         <div class="auto-container column__orders">
//         '.$hall_details.'

//         </div>
//      </section>';


//     }
// }

// $jVars['module:list-package-hall'] = $halllist;
// if($pkgRow->id >= 14){

//     $room_package = '
//                 <!-- Rooms starts -->
//                 <div class="mad-content no-pd">
//             <div class="container">
//                 <div class="mad-section">
//                     <div class="row">
//                         <div class="col-lg-5">
//                             <div class="mad-pre-title">' . $pkgRow->title . '</div>
//                             <h2 class="mad-page-title" style="font-size: 42px;line-height: 46px;">' . $pkgRow->sub_title . '</h2>
//                         </div>

//                     </div>
//                     <div class="col-lg-7">
//                             <p class="mad-text-medium">' . $pkgRow->content . '
//                             </p>
//                         </div>
//                 </div>
//                             </div>
//                         </div>


//                 <!-- Room Ends -->';
// }



if (defined('HOME_PAGE')) {



    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '1' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);


    // pr($pkgRec);
    if (!empty($pkgRec)) {

        foreach ($pkgRec as $key => $subpkgRow) {
            $gallRec = SubPackageImage::getImagelist_by($subpkgRow->id);
            $imageList = '';
            $imagepath = '';
            $imageList = $gallRec[0];


            $file_path = SITE_ROOT . 'images/package/galleryimages/' . $imageList->image;
            if (file_exists($file_path) and !empty($imageList)):

                $imagepath = IMAGE_PATH . 'package/galleryimages/' . $imageList->image;


            endif;
            // pr($imagepath);

            $roomlist .= '
            <div class="mad-col">
                                <div class="mad-section with-overlay mad-colorizer--scheme-" data-bg-image-src="' . $imagepath . '" alt="' . $subpkgRow->title . '">
                                    <!--================ Entity ================-->
                                    <article class="mad-entity">
                                        <h3 class="mad-entity-title">' . $subpkgRow->title . '</h3>
                                        <p>
                                        ' . strip_tags($subpkgRow->detail) . '
                                        </p>
                                        <div class="btn-set justify-content-center">
                                            <a href="' . BASE_URL . 'result.php?hotel_code=' . $booking_code . '" class="btn btn-big" target="_blank">Book Now</a>
                                            <a href="' . BASE_URL . $subpkgRow->slug . '" class="btn btn-big style-2">Details</a>
                                        </div>
                                    </article>
                                    <!--================ End of Entity ================-->
                                </div>
                            </div>

                
                ';
        }
        $room_package = '
        <div class="mad-section no-pb mad-section--stretched-content-no-px mad-colorizer--scheme-color-">
        <div class="mad-title-wrap align-center">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="mad-pre-title">accommodation</div>
                    <h2 class="mad-page-title">Rooms & Suites</h2>
                    <p class="mad-text-medium">The hotel offers 68 rooms: Standard, Deluxe, Deluxe premium & Junior suite. The highlight of all the rooms are the spacious private balcony where guests can enjoy the most breathtaking views from the comforts of their own room.</p>
                </div>
            </div>
        </div>

        <div class="mad-section no-pd mad-section--stretched-content-no-px mad-colorizer--scheme-">
            <div class="mad-entities single-entity style-2 mad-grid owl-carousel mad-grid--cols-1 mad-owl-moving nav-size-2 no-dots">
                                ' . $roomlist . '
                                </div>
                                </div>
                            </div>
                            ';
    }
}



$jVars['module:list-modalpop-up'] = $modalpopup;
$jVars['module:list-package-room'] = $roomlist;
$jVars['module:room-detail'] = $room_detail;

$jVars['module:list-package-room-bred'] = $roombread;


/**
 *      Package Record
 */
$resubpkgDetail = $resubpkgbann = $bcont = '';

if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $id = !empty($_REQUEST['id']) ? addslashes($_REQUEST['id']) : '';
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
    $pkgRec = Package::find_by_id($subpkgRec->type);
    //echo "<pre>";print_r($slug);die();
    $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
    $otherPacs = Subpackage::get_relatedpkg($subpkgRec->type, $subpkgRec->id, 12);


   
    $jVars['module:form-controll'] = $bcont;
    $jVars['module:sub-package-banner'] = $resubpkgbann;
    // $jVars['module:sub-package-detail'] = $resubpkgDetail;



/**
*       Sub package
*/
    $resubpkgDetail = '';
    $subimg = '';
    $imageList = '';
    $subpackage_final = '';
    $rescont = '';
    if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {
        $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
        $subpkgRec = Subpackage::find_by_slug($slug);
        
        if(!empty($subpkgRec)) {
            $savedFeatures = unserialize($subpkgRec->feature);
            // PR($savedFeatures);
            if(!empty($savedFeatures) && isset($savedFeatures[118][1])) {
                $selectedFeatures = $savedFeatures[118][1]; 
                $facilityTitle = (!empty($savedFeatures[118][0][0])) ? $savedFeatures[118][0][0] : 'Facilities';
                $rescont = '<div class="bottom-border mt-md-5 pt-lg-5">
                    <h3 class="text-center">'.$facilityTitle.'</h3>
                  </div>
                  <div class="row">';
                
                foreach($selectedFeatures as $featureId) {
                    $feature = Features::get_by_id($featureId);
                    if($feature) {
                        $rescont .= '
                            <div class="col-md-3 mb-3">
                                <div class="block-43">
                                    <div class="icon-three">';
                                    
                        if(!empty($feature->icon)) {
                            $rescont .= '<i class="'.$feature->icon.'"></i>';
                        }else{
                             $rescont .= '<img src="' . BASE_URL . 'images/features/' . $feature->image . '">';
                        }
                        
                        $rescont .= '<div class="title">'.$feature->title.'</div>
                                    </div>
                                </div>
                            </div>';
                    }
                }
                
                $rescont .= '</div></div></div></div>';
            }
            
            
        }
    
    
    $jVars['module:generalfacilities-list'] = $rescont;
    


        if (!empty($subpkgRec)) {
            $imglink = BASE_URL . 'template/web/assets/images/main-slider/about.jpg';
            // other image from Preference Mgmt
            if (!empty($siteRegulars->other_upload)) {
                if (file_exists(SITE_ROOT . "images/preference/other/" . $siteRegulars->other_upload)) {
                    $imglink = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
                }
            }
            // banner image from Subpackage
            if(!empty($subpkgRec->image2)){
                if (file_exists(SITE_ROOT . "images/subpackage/image/" . $subpkgRec->image2)) {
                    $imglink = IMAGE_PATH . 'subpackage/image/' . $subpkgRec->image2;
                }
            }
            
            $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
            
            // Check package type and load appropriate template
            if ($pkgRec->type == 1) {
                // Room template
                $subpackage_final = '
                <section class="page-title" style="background-image: url(' . $imglink . ')">
                    <div class="auto-container">
                        <div class="content-box">
                            <div class="content-wrapper">
                                <div class="title">
                                    <h1>' . $subpkgRec->title . '</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="section-thirty-nine">
                    <div class="auto-container">
                        <div class="row">
                            <div class="col-xl-9 col-md-12 overflow-hidden">
                                <div class="owl-carousel room_sliders">
                ';
                foreach ($gallRec as $img) {
                    $subpackage_final .= '<div class="item"><img src="' . IMAGE_PATH . 'package/galleryimages/' . $img->image . '" alt="" width="100%"></div>';
                }
                $subpackage_final .= '
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-12 room_special px-lg-0">
                                <div class="pricing p-2">
                                 <span>Starting Price</span>
                                    <h2 class="room_pricing"><small class="starting_price">' . $subpkgRec->currency . ' </small> ' . $subpkgRec->onep_price . '<small class="starting_price"> /night</small></h2>
                                </div>
                                   
                                
                                <div class="check-availability-two inner_room_booking">
                                    <form class="form" action="result.php" target="_blank" action="rooms_2_col_gallery_v1.html" method="get">
                                    <input type="hidden" name="hotel_code" value="'. $booking_code .'">

                                        <ul>
                                            <li>
                                                <h5>Check In</h5>
                                                <input type="text" placeholder="Select a date" class="datepicker bg-transparent" name="hotel_check_in" id="checkin"/>
                                                <i class="far fa-calendar-alt"></i>
                                            </li>
                                            <li>
                                                <h5>Check Out</h5>
                                                <input type="text" placeholder="Select a date" class="datepicker bg-transparent" name="hotel_check_out" id="checkout"/>
                                                <i class="far fa-calendar-alt"></i>
                                            </li>
                                        </ul>
                                        <button type="submit">check availability</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-5 pt-5">
                            <div class="col-lg-12">
                                <div class="bottom-border">
                                    <h1 class="mb-3">' . $subpkgRec->title . '</h1>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 pe-5">
                                        <ul class="d-flex gap-5">
                                            <li><i class="flaticon-user pe-1"></i><span>' . $subpkgRec->twop_price . '</span></li>
                                            <li><i class="flaticon-preview pe-1"></i><span>' . $subpkgRec->room_size . '</span></li>
                                            <li><i class="flaticon-bed pe-1"></i><span>' . $subpkgRec->bed . '</span></li>
                                        </ul>
                                        <div class="block-forty mt-4">
                                            <div class="text">' . $subpkgRec->content . '</div>
                                        </div>
                                    </div>
                                </div>
                                ' . $jVars['module:generalfacilities-list'] . '
                            </div>
                        </div>
                    </div>
                ';

                $other_rooms = Subpackage::get_relatedsub_by($subpkgRec->type, $subpkgRec->id);
                if (!empty($other_rooms)) {
                    $subpackage_final .= '
                    <section class="section-fifty other__rooms pb-0 pt-0">
                        <div class="auto-container">
                            <div class="bottom-border">
                                <h1 class="mb-3">Other Rooms</h1>
                            </div>
                            <div class="row owl-carousel other-rooms overflow-hidden">
                    ';

                    foreach ($other_rooms as $room) {
                        $img_array = unserialize($room->image);
                        $img = '';

                        if (!empty($img_array[0])) {
                            $file_path = SITE_ROOT . 'images/subpackage/' . $img_array[0];
                            if (file_exists($file_path)):
                                $imglink = IMAGE_PATH . 'subpackage/' . $img_array[0];
                                $img = '<img class="other_rooms_img"  src="' . $imglink . '" alt="' . $room->title . '" />';
                            endif;
                        }

                        $subpackage_final .= '
                        <div class="col-lg-12">
                            <div class="block-fifty">
                                <div class="image">' . $img . '</div>
                                <div class="content other_rooms_margins" style="padding-bottom:14px; padding-top:26px; height:248px;">
                                    <h4>' . $room->title . '</h4>
                                    <div class="text other_rooms_text">' . strip_tags($room->detail) . '</div>
                                    <div class="lower-content">
                                        <a href="' . BASE_URL . $room->slug . '" class="get-directions"><span class="ms-0"> <i class="fas fa-arrow-right px-2"></i>Learn More</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        ';
                    }

                    $subpackage_final .= '
                            </div>
                        </div>
                    </section>
                    ';
                }

                $subpackage_final .= '
                </section>
                ';

            }
            else if ($pkgRec->id == 16) {
                // Hall template
                $subpackage_final .= '
                    <section class="section-thirty-nine pt-0">
                        <div class="row">
                            <div class="col-md-12 overflow-hidden">
                                <div class="owl-carousel room_sliders room_sliding_pkg">
                ';
                foreach ($gallRec as $img) {
                    $subpackage_final .= '<div class="item"><img src="' . IMAGE_PATH . 'package/galleryimages/' . $img->image . '" alt="" width="100%"></div>';
                }
                $subpackage_final .= '
                                </div>
                            </div>
                        </div>
                        <div class="auto-container">
                            <div class="row mt-5 pt-5">
                                <div class="col-lg-12">
                                    <div class="bottom-border hall_booking">
                                        <h1 class="mb-3">' . $subpkgRec->title . '</h1>
                                        <a href="javascript:void(0)" class="theme-btn btn-style-four mb-3" data-bs-toggle="modal" data-bs-target="#bar_peepal_hall">
                                            <span>Book Now</span>
                                        </a>
                                    </div>
                                   ' . $subpkgRec->content . '
                                </div>
                            </div>
                            ' . $jVars['module:generalfacilities-list'] . '
                        </div>
                    </section>
                    <div class="modal fade" id="bar_peepal_hall" tabindex="-1" aria-labelledby="hall_Label" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header text-white" style="background-color: var(--color-orange);">
                                    <h1 class="modal-title fs-5" id="hall_Label">Hall Enquiry</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form id="forHall">
                                        <div class="mb-4">
                                            <input type="text" class="form-control" id="FullName" name="name" placeholder="Full Name *">
                                            <input type="hidden" class="form-control" name="hall" value="' . $subpkgRec->title . '">
                                        </div>
                                        <div class="mb-4">
                                            <input type="email" class="form-control" id="email" name="email" placeholder="Email *">
                                        </div>
                                        <div class="mb-4">
                                            <input type="number" class="form-control" id="Contact" name="contact"
                                                placeholder="Mobile No. *">
                                        </div>
                                        <div class="mb-4">
                                            <input type="text" class="form-control" id="event_name" name="event"
                                                placeholder="Event Name *">
                                        </div>
                                        <div class="mb-4 d-flex justify-content-between gap-3">
                                            <div class="book_date flex-grow-1">
                                                <input type="text" class="form-control datepicker" id="date" name="date" placeholder="Date">
                                            </div>
                                            <div class="no_pax flex-grow-1">
                                                <input type="number" class="form-control" name="pax" id="number" min="1" placeholder="Pax">
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <textarea class="form-control" id="message-text" name="message"
                                                placeholder="Message *"></textarea>
                                        </div>
                                        <div class="mb-3">
                                            <div class="g-recaptcha" data-sitekey="6LcwsoMqAAAAALEI-brbRHc7hYAIyD1qBcW3KXMd"></div>
                                        </div>
                                        <div id="result_msg" class="alert alert-success" style="display: none;"></div>
                                        <div class="modal-footer">
                                            <button type="submit" id="submit" class="theme-btn btn-style-one px-3 py-2 ">Submit</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                ';
            }
            else if ($pkgRec->id == 17) {
                // Dining template
                $subpackage_final .= '
                    <section class="section-thirty-nine pt-0 style="margin-top: -80px;">
                        <div class="row">
                            <div class="col-md-12 overflow-hidden">
                                <div class="owl-carousel room_sliders room_sliding_pkg">
                ';
                foreach ($gallRec as $img) {
                    $subpackage_final .= '<div class="item"><img src="' . IMAGE_PATH . 'package/galleryimages/' . $img->image . '" alt="" width="100%"></div>';
                }
                $subpackage_final .= '
                                </div>
                            </div>
                        </div>
                        <div class="auto-container">
                            <div class="row mt-5 mt-md-5 pt-md-5">
                                <div class="col-lg-12">
                                    <div class="bottom-border hall_booking">
                                        <h1 class="mb-3">' . $subpkgRec->title . '</h1>
                                        <a href="https://wa.me/977' . $siteRegulars->whatsapp_a . '" target="_blank" class="theme-btn btn-style-four mb-3">
                                            <span>Book Now</span>
                                        </a>
                                    </div>
                                    ' . $subpkgRec->content . '
                                </div>
                            </div>
                            ' . $jVars['module:generalfacilities-list'] . '
                        </div>
                    </section>
                    
                ';
            }

        }
    }

    $jVars['module:subpackage'] = $subpackage_final;




    /**********        For What;s nearby from package **************/
    $resubpkgDetail = '';
    $relPacs = Subpackage::get_relatedpkg(10, 0, 12);

    foreach ($relPacs as $relPac) {

        $imglink = '';
        if (!empty($relPac->image)) {
            $img123 = unserialize($relPac->image);
            $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'subpackage/' . $img123[0];
            } else {
                $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
            }
        } else {
            $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
        }
        $resubpkgDetail .= '

                                            <div class="col-lg-3 col-md-6">
                                                <div class="top-hotels-ii">
                                                    <img src="' . $imglink . '" alt=" ' . $relPac->title . '"/>
                                                    ' . $relPac->content . '
                                                    <div class="pp-details yellow">
                                                        <span class="pull-left">More Info</span>
                                                        <span class="pp-tour-ar">
                                                                <a href="javascript:void(0)"><i class="fa fa-angle-right pad-0"></i></a>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                        ';
    }

    $whats_nearby = '
            <section class="top-hotel">
                <div class="container-xxl px-5">
                    <div class="top-title">
                        <div class="row display-flex">
                            <div class="col-lg-8 mx-auto text-center">
                                <h2>What\'s <span>Nearby</span></h2>
                                <p class="mar-0">
                                    We are located at the heart of Lalitpur. Major shopping outlets, Patan Durbar Square, Hospitals, Banks, UN office, Government offices, etc are
                                    within walking distance.
                                </p>
                            </div>
                        </div>
                    </div>
                    <!--Gallery Section-->
                    <div class="row activities-slider">
                        ' . $resubpkgDetail . '
                    </div>
                </div>
            </section>';



    // pr($whats_nearby);
    $jVars['module:whats-nearby'] = $whats_nearby;
}
