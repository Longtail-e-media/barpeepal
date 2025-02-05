<?php
/*
* Service home list
*/
$rescont = $ressercont = '';
$i = 0;
$j = 0;
$subpkgRec = Services::getservice_list();
// var_dump($subpkgRec); die();
// pr($subpkgRec);
if (!empty($subpkgRec)) {

    foreach ($subpkgRec as $k => $v) {
        $imglink = '';
        if ($v->image != "a:0:{}") {
            $imageList = unserialize($v->image);
            $file_path = SITE_ROOT . 'images/services/' . $imageList[0];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'services/' . $imageList[0];
            }
        }
        $actv = ($i == 0) ? 'active' : '';
        $rescont .= '<li class="' . $actv . '">
                                            <a href="#coffe-shop' . $v->id . '" data-toggle="tab">
                                                <img src="' . $imglink . '">
                                                <h4>' . $v->title . '</h4>
                                            </a>
                                        </li>';
        $i++;
    }

    foreach ($subpkgRec as $k => $v) {
        $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($v->content));
        $actv1 = ($j == 0) ? 'active' : '';
        $ressercont .= '<div role="tabpanel" class="tab-pane fade in ' . $actv1 . '" id="coffe-shop' . $v->id . '">
                     
                                <p>' . substr(strip_tags($content[0]), 0, 300) . '
                                <br><a href="' . BASE_URL . 'service/' . $v->slug . '" title="">Read More</a></p>
                            </div>';
        $j++;
    }
}

$jVars['module:home-service-list'] = $rescont;
$jVars['module:home-service-content-list'] = $ressercont;


$restscont = '';

$servpkgRec = Services::find_all();
// var_dump($subpkgRec); die();
if (isset($_REQUEST['slug']) and !empty($_REQUEST['slug'])) {
    $slug = $_REQUEST['slug'];
} else {
    $slug = 'health-club';
}
if (!empty($subpkgRec)) {
    $i = 0;
    $j = 0;
    $restscont .= '<div class="tab-section bg-gray body-room-5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center">
                            <h2 class="mb-0"> Our Services</h2>
                            <ul class="pages-link">
                                <li><a href="' . BASE_URL . 'home">Home</a></li>
                                <li>/</li>
                                <li>Our Services</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="dining-tabs">
                        <ul class="nav nav-tabs">';
    foreach ($servpkgRec as $key => $serRec) {
        if ($slug == $serRec->slug) {
            $class = "active";
        } else {
            $class = "";
        }
        $actv = ($i == 0) ? 'active' : '';
        $restscont .= '<li class="' . $class . '">
                                <a href="#Sauna' . $serRec->id . '" id="' . $serRec->slug . '" role="tab" data-toggle="tab">' . $serRec->title . '<small class="d-block">' . $serRec->sub_title . '</small></a>
                            </li>';
        $i++;
    }
    $restscont .= '  </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="block small-padding both-padding page">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="tab-content">';
    foreach ($servpkgRec as $key => $serRec) {
        $imageList = '';
        if ($serRec->image != "a:0:{}") {
            $imageList = unserialize($serRec->image);
        }
        if ($slug == $serRec->slug) {
            $class1 = "active";
        } else {
            $class1 = "";
        }
        $actv = ($j == 0) ? 'active' : '';
        $restscont .= '<div role="tabpanel" class="tab-pane fade in ' . $class1 . '" id="Sauna' . $serRec->id . '">
                                <div class="dining-detail">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="dining-detail-carousel">';
        // var_dump($imageList); die();
        if ($serRec->image != "a:0:{}") {
            foreach ($imageList as $key => $imgServ) {
                $restscont .= ' <div class="item">
											<img src="' . IMAGE_PATH . 'services/' . $imgServ . '" alt="' . $serRec->title . '" />
										</div>';
            }
        }
        $restscont .= ' </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="service-content">
                                               ' . substr(strip_tags($serRec->content), 0, 30000) . '
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>';
        $j++;
    }
    $restscont .= '</div>
                    </div>
                </div>
            </div><!-- container -->
        </div><!-- block -->';


}

$jVars['module:service-detail-list'] = $restscont;

$facility_bread='';
if (defined('FACILITY_PAGE')) {
    $siteRegulars = Config::find_by_id(1);
    $imglink= $siteRegulars->facility_upload ;
    // pr($imglink);
if(!empty($imglink)){
    $img= IMAGE_PATH . 'preference/facility/' . $siteRegulars->facility_upload ;
}
else{
    $img='';
}

    $facility_bread='<div class="mad-breadcrumb with-bg-img with-overlay" data-bg-image-src="'.$img.'">
    <div class="container wide">
        <h1 class="mad-page-title">Hotel Amenities</h1>
        <nav class="mad-breadcrumb-path">
            <span><a href="index.html" class="mad-link">Home</a></span> /
            <span>Facilities</span>
        </nav>
    </div>
</div>';

}
$jVars['module:facilitybread'] = $facility_bread;

$facility = "";
if (defined('FACILITY_PAGE')) {


    $record = Services::getservice_list();
    if (!empty($record)) {
        $count = $countsec = 0;
        foreach ($record as $recRow) {
            if(!empty($recRow->icon)){
                $facility .= ' 
                <div class="mad-col">
                                <!--================ Icon Box ================-->
                                <article class="mad-icon-box">
                                span class="' . $recRow->icon . '"></span>
                                    <div class="mad-icon-box-content">
                                        <h6 class="mad-icon-box-title">
                                        ' . $recRow->title . '
                                        </h6>
                                    </div>
                                </article>
                                <!--================ End of Icon Box ================-->
                            </div>
                
                ';
            }else{

                $img = unserialize($recRow->image);
                $file_path = SITE_ROOT . 'images/services/' . $img[0];
                if (file_exists($file_path) && $img[0] != NULL) {
                    $imglink = IMAGE_PATH . 'services/' . $img[0];
                    $facility .= ' 
                    <div class="mad-col">
                                <!--================ Icon Box ================-->
                                <article class="mad-icon-box">
                                    <img src="' . $imglink . '" alt = '. $recRow->title .'>
                                    <div class="mad-icon-box-content">
                                        <h6 class="mad-icon-box-title">
                                        ' . $recRow->title . '
                                        </h6>
                                    </div>
                                </article>
                                <!--================ End of Icon Box ================-->
                            </div>


                    ';
                }
            }
        }
    }


}

$jVars['module:facility-list'] = $facility;



/*
* Service Page
*/
$rescont = '';
$subpkgRec = Services::getservice_list();

if (!empty($subpkgRec)) {
    $imglink = BASE_URL . 'template/web/assets/images/main-slider/about.jpg';
    // facility image from Preference Mgmt
    if (!empty($siteRegulars->facility_upload)) {
        if (file_exists(SITE_ROOT . "images/preference/facility/" . $siteRegulars->facility_upload)) {
            $imglink = IMAGE_PATH . 'preference/facility/' . $siteRegulars->facility_upload;
        }
    }

    $rescont .= '
        <section class="page-title" style="background-image: url(\'' . $imglink . '\');">
            <div class="auto-container">
                <div class="content-box">
                    <div class="content-wrapper">
                        <div class="title">
                            <h1>Our Services</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="section-sixteen">
            <div class="auto-container">
                <div class="text-center w-75 mb-5 mx-auto pb-4">
                    <p>Experience unparalleled comfort and convenience at our Bar Peepal Resort. Our facilities are designed to enhance your stay and provide everything you need for a perfect getaway</p>
                </div>
                <div class="row">
    ';

    foreach ($subpkgRec as $k => $v) {
        $rescont .= '
                <div class="col-md-3 mb-4">
                    <div class="block-43">
                        <div class="icon-three">
        ';
                        if(!empty($v->image)) {
                            $img = unserialize($v->image);
                            if(!empty($img[0])) {
                                $imglink = IMAGE_PATH . 'services/' . $img[0];
                                $rescont .= '<img src="'.$imglink.'" alt="'.$v->title.'">';
                            }
                        } else if(!empty($v->icon)) {
                            $rescont .= '<i class="'.$v->icon.'"></i>';
                        }
                
                        $rescont .= '<div class="title">'.$v->title.'</div>
                        </div>
                    </div>
                </div>
        ';
    }

    $rescont .= '
                </div>
            </div>
        </section>
    ';
}

$jVars['module:service-homepage'] = $rescont;



    $facilityhome = "";

    if (defined('HOME_PAGE')) {
        $record = Services::getservice_list(8);
        if (!empty($record)) {
            $facilityhome .= '
            <section class="section-thirty-three facilities__image">
                <div class="auto-container">
                    <div class="sub-title text-center">Our Exceptional Comfort & Convenience</div>
                    <h2 class="sec-title text-center">Core Facilities</h2>
                    <div class="row">';

            foreach ($record as $recRow) {
                if (!empty($recRow->icon)) {
                    $facilityhome .= '
                    <div class="col-lg-3 col-md-6">
                        <div class="block-thirty-three">
                            <div class="icon"><i class="' . $recRow->icon . '"></i></div>
                            <h4>' . $recRow->title . '</h4>
                            <div class="text">' . $recRow->content . '</div>
                        </div>
                    </div>';
                } else {
                    $img = unserialize($recRow->image);
                    $file_path = SITE_ROOT . 'images/services/' . $img[0];
                    if (file_exists($file_path) && $img[0] != NULL) {
                        $imglink = IMAGE_PATH . 'services/' . $img[0];
                        $facilityhome .= '
                        <div class="col-lg-3 col-md-6">
                            <div class="block-thirty-three">
                                <div class="icon"><img src="' . $imglink . '" alt="' . $recRow->title . '"></div>
                                <h4>' . $recRow->title . '</h4>
                                <div class="text">' . $recRow->content . '</div>
                            </div>
                        </div>';
                    }
                }
            }

            $facilityhome .= '
                    </div>
                </div>
            </section>';
        }
    }

    $jVars['module:facility-list-home'] = $facilityhome;


$rescont2 = '';

$subpkgRec = Services::getservice_list(8);

if (!empty($subpkgRec)) {
    $rescont2 .= '
        <div class="bottom-border mt-5">
            <h3 class="text-center">Facilities</h3>
        </div>
        <div class="row">
    ';

    foreach ($subpkgRec as $k => $v) {
        $rescont2 .= '
            <div class="col-md-3 mb-4">
                <div class="block-43">
                    <div class="icon-three">
        ';

        if (!empty($v->icon)) {
            $rescont2 .= '<i class="' . $v->icon . '"></i>';
        } else {
            $img = unserialize($v->image);
            if (!empty($img[0])) {
                $imglink = IMAGE_PATH . 'services/' . $img[0];
                $rescont2 .= '<img src="' . $imglink . '" alt="' . $v->title . '">';
            }
        }

        $rescont2 .= '
                        <div class="title">' . $v->title . '</div>
                    </div>
                </div>
            </div>
        ';
    }

    $rescont2 .= '
        </div>
    ';
}

$jVars['module:service-subpackage'] = $rescont2;


$rescont3 = '';
$subpkgRec = Services::getservice_list(4);

if (!empty($subpkgRec)) {
    $rescont3 .= '
        <div class="bottom-border mt-5 pt-5">
            <h3 class="text-center">Hall Amenities</h3>
        </div>
        <div class="row">
    ';
    foreach ($subpkgRec as $k => $v) {
        $rescont3 .= '
            <div class="col-md-3 mb-3">
                <div class="block-43">
                    <div class="icon-three">
        ';
        if (!empty($v->icon)) {
            $rescont3 .= '<i class="' . $v->icon . '"></i>';
        } else {
            $img = unserialize($v->image);
            if (!empty($img[0])) {
                $imglink = IMAGE_PATH . 'services/' . $img[0];
                $rescont3 .= '<img src="' . $imglink . '" alt="' . $v->title . '">';
            }
        }
        $rescont3 .= '
                        <div class="title">' . $v->title . '</div>
                    </div>
                </div>
            </div>
        ';
    }
    $rescont3 .= '    
        </div>
    ';
}

$jVars['module:service-subpackage-4'] = $rescont3;


$rescont4 = '';
$subpkgRec = Services::getservice_list(4);

if (!empty($subpkgRec)) {
    $rescont4 .= '
        <div class="bottom-border mt-5 pt-5">
            <h3 class="text-center">Facility Amenities</h3>
        </div>
        <div class="row">';
    foreach ($subpkgRec as $k => $v) {
        $rescont4 .= '
            <div class="col-md-3 mb-3">
                <div class="block-43">
                    <div class="icon-three">
        ';
        if (!empty($v->icon)) {
            $rescont4 .= '<i class="' . $v->icon . '"></i>';
        } else {
            $img = unserialize($v->image);
            if (!empty($img[0])) {
                $imglink = IMAGE_PATH . 'services/' . $img[0];
                $rescont4 .= '<img src="' . $imglink . '" alt="' . $v->title . '">';
            }
        }
        $rescont4 .= '
                        <div class="title">' . $v->title . '</div>
                    </div>
                </div>
            </div>';
    }
    $rescont4 .= '
        </div>
    ';
}

$jVars['module:service-subpackage2'] = $rescont4;
?>