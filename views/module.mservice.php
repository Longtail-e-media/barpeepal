<?php
$resinndetail = $imageList = $innerbred = $t = '';
$homearticle = mservices::find_by_id(22);

$recRows = mservices::find_all_active();
$recreation = '';

if (!empty($recRows)) {

    $imglink = BASE_URL . 'template/web/assets/images/main-slider/about.jpg';
    // other image from Preference Mgmt
    if (!empty($siteRegulars->other_upload)) {
        if (file_exists(SITE_ROOT . "images/preference/other/" . $siteRegulars->other_upload)) {
            $imglink = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        }
    }

    $recreation .= '
        <section class="page-title" style="background-image: url('.$imglink.')">
            <div class="auto-container">
                <div class="content-box">
                    <div class="content-wrapper">
                        <div class="title">
                            <h1>Recreation</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-sixteen">
            <div class="auto-container">
                <div class="text-center w-75 mb-5 mx-auto pb-4">
                   <p>Experience unparalleled comfort and convenience at our Bar Peepal Resort. Our facilities are designed to enhance your stay and provide everything you need for a perfect getaway.</p>
                </div>
    ';

    foreach ($recRows as $key => $recRow) {
        // Handle image path
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
        if (!empty($recRow->image) && $recRow->image != "a:0:{}") {
            $imageList = unserialize($recRow->image);
            $imgno = array_rand($imageList);
            $file_path = SITE_ROOT . 'images/mservices/' . $imageList[$imgno];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'mservices/' . $imageList[$imgno];
            }
        }

        $recreation .= '
            <div class="row no-gutters bg-white align-items-center">
                <div class="col-lg-6 ' . ($key % 2 == 0 ? '' : 'order-lg-2') . '">
                    <div class="block-sixteen">
                        <h4>' . $recRow->title . '</h4>
                        <div class="text">' . $recRow->content . '</div>
                    </div>
                </div>
                <div class="col-lg-6 overflow-hidden">
                    <div class="owl-carousel owl-recreation">
        ';
        foreach ($imageList as $img) {
            $recreation .= '
                <div class="item">
                    <img src="' . IMAGE_PATH . 'mservices/' . $img . '" alt="' . $recRow->title . '" width="100%">
                </div>
            ';
        }
        $recreation .= '
                    </div>
                </div>
            </div>
        ';
    }

    $recreation .= '
            </div>
        </section>
    ';
}

$jVars['module:mservice:recreation'] = $recreation;


/**
 *      Home page
 */
$servicecont = '';

if (defined('HOME_PAGE') ) {
    // $slug = addslashes($_REQUEST['slug']);
    // $recRow = mservices::find_by_slug($slug);
    $recInn = mservices::homepageArticle();
    
    $imagem='';
    if (!empty($homearticle)) {
        
}
        $servicecont .=' <article class="mad-entity" id="mad-sync-elements">
        <div class="mad-entity-media">
        <div class="mad-panels-img">';
        

        foreach ($recInn as $i => $innRow) {
            $collapsed = ($i == 0) ? '' : 'mad-panels-active';
            $show = ($i == 0) ? 'clicked' : '';
            $homearticle = mservices::find_by_id($innRow->id);
    if ($homearticle->image != "a:0:{}") {
        $imageList = unserialize($homearticle->image);
        $imgno = array_rand($imageList);
        $file_path = SITE_ROOT . 'images/mservices/' . $imageList[$imgno];
        if (file_exists($file_path)) {
            $imglink = IMAGE_PATH . 'mservices/' . $imageList[$imgno];
        } else {
            $imglink = BASE_URL . 'template/web/img/mosaic_2.jpg';
        }
    } else {
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
    }
    $imagem ='<img src="'.$imglink.'" alt="services">';

   

            $servicecont .='<section data-active="'. $innRow->slug .'" class="'.$show.'">
            '. $imagem .'
        </section>';
        }
        $servicecont .='</div>
        </div>
        <div class="mad-entity-content services-section">
                                <div class="content-element-7">
                                    <div class="mad-entity-pre-title">Our Services</div>
                                    <!--================ Accordion ================-->
                                    <dl role="presentation" class="mad-panels mad-panels--accordion type-big">';
                                    
        foreach ($recInn as $innRow) {
            $linkTarget = ($innRow->linktype == 1) ? ' target="_blank" ' : '';
        $linksrc = ($innRow->linktype == 1) ? $innRow->linksrc : BASE_URL . $innRow->linksrc;
            
        $servicecont .='
        <div class="row no-gutters bg-white align-items-center">
    <div class="col-lg-6">
        <div class="block-sixteen">
            <h4>'.$innRow->title.'</h4>
            <div class="text">'.$innRow->content.'</div>
        </div>
    </div>
    <div class="col-lg-6 overflow-hidden">
        <div class="owl-carousel owl-recreation">
            <div class="image"><img src="' . $imglink . '" alt="'.$innRow->title.'"></div>
            <div class="image"><img src="assets/images/barpeepal/recreation/pool1.jpg" alt="recreation"></div>
        </div>
    </div>
</div>
        <dt class="mad-panels-title $collapsed" data-active="'. $innRow->slug .'">
                                            <button id="'. $innRow->slug .'-button" type="button" aria-expanded="false" aria-controls="panel-7" aria-disabled="false">
                                            '. $innRow->title .'
                                            
                                            </button>
                                        </dt>
                                        <dd id="'. $innRow->slug .'" class="mad-panels-definition">
                                            <p>
                                                <b>'. $innRow->sub_title .'</b>
                                            </p>
                                            <p>
                                            '. $innRow->content .'
                                            </p>
                                            <a href="'.$linksrc.'  " class="mad-text-link">
                                                <div class="link-container">
                                                    <span class="link-title1 title">Explore More</span>
                                                    <span class="link-title2 title">Explore More</span>
                                                </div>
                                            </a>
                                        </dd>
                                       ';
                                    //    pr($recInn);
                                    } 
                                    
                                    $servicecont .='</dl>
                                    <!--================ End of Accordion ================-->
                                </div>
                            </div>
                        </article>
                        <!--================ End of Entity ================-->
                    </div>
                </div>';                           
    
    }
    

$jVars['module:home-mainservice'] = $servicecont;


$recreation = '';
if (defined('HOME_PAGE')) {
    $recInn = mservices::homepageArticle();

    $recreation .= '
        <section class="section-sixteen">
            <div class="auto-container">
    ';

    if ($recInn) {
        foreach ($recInn as $key => $service) {
            $orderClass = ($key % 2 != 0) ? 'order-lg-2' : '';

            // Handle image from database
            if ($service->image != "a:0:{}") {
                $imageList = unserialize($service->image);
                $imgno = array_rand($imageList);
                $imglink = IMAGE_PATH . 'mservices/' . $imageList[$imgno];
            }

            $link = '';
            if (!empty($service->linksrc)) {
                $linksrc = ($service->linktype == 0) ? BASE_URL . $service->linksrc : $service->linksrc;
                $target = ($service->linktype == 0) ? '' : 'target="_blank" rel="noopener noreferrer"';
                $link = '
                    <a href="' . $linksrc . '" ' . $target . ' class="theme-btn btn-style-one">
                        <span>Explore More</span>
                    </a>
                ';
            }

            $recreation .= '
                <div class="row no-gutters bg-white">
                    <div class="col-lg-6 ' . $orderClass . '">
                        <div class="block-sixteen">
                            <h4>' . $service->title . '</h4>
                            <div class="text">' . $service->content . '</div>
                            ' . $link . '
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="image">
                            <img src="' . $imglink . '" alt="' . $service->title . '" class="img-fluid">
                        </div>
                    </div>
                </div>
            ';
        }
    }

    $recreation .= '
            </div>
        </section>
    ';

}

$jVars['module:mservices:home'] = $recreation;
?>
