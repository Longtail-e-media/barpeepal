<?php
/* First Slideshow */
$reslide = '';

$Records = Slideshow::getSlideshow_by(0);

if ($Records) {
    $reslide .= '';
    foreach ($Records as $RecRow) {
        if (!empty($RecRow->source)) {
            $reslide .= '
                <div class="video-fullscreen-wrap">
                    <iframe src="' . $RecRow->source . '?rel=0&autoplay=1&loop=1&mute=1&controls=0&playlist=vZjqrPshuJ4" title="By Ace Hotel" frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="v-middle caption overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10 offset-md-1"> 
                            
                            </div> 
                        </div>
                    </div>
                </div>
            </div>';
        }
        $file_path = SITE_ROOT . 'images/slideshow/' . $RecRow->image;
        if (file_exists($file_path) and !empty($RecRow->image)) {
            $alink = '';
            if (!empty($RecRow->linksrc)) {
                $target = ($RecRow->linktype == 1) ? 'target="_blank" rel="noopener noreferrer"' : '';
                $linksrc = ($RecRow->linktype == 0) ?  BASE_URL . $RecRow->linksrc : $RecRow->linksrc;
                $alink = '<a href="' . $linksrc . '" class="theme-btn btn-style-one" ' . $target . '><span>Explore</span></a>';
            }
            $reslide .= '
            <style>
            .swiper-img-' . $RecRow->id . ' {
            background-image: url(' . IMAGE_PATH . 'slideshow/' . $RecRow->image . ');
            }
            </style>

                <!-- Slide Item -->
                <div class="swiper-slide swiper-img-' . $RecRow->id . '">
                    <div class="content-outer">
                        <div class="content-box">
                            <div class="inner">
                                ' . $RecRow->content . '
                                <div class="link-box">
                                    ' . $alink . '
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            ';
        }
    }
}
$jVars['module:slideshow'] = $reslide;