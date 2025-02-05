<?php
$nearbydetail = $nearbydetail_modals = $tabContent = $tabButtons = '';

if (defined('HOME_PAGE')) {
    $recRows = Nearby::find_all_active();
    // pr( $recRows);
    if (!empty($recRows)) {
        foreach($recRows as $key => $recRow) {
            $active = ($key == 0) ? 'active' : '';
          
            $img_array = unserialize($recRow->image);
            $img = '';

            if(!empty($img_array[0])){
                $file_path = SITE_ROOT . 'images/nearby/' . $img_array[0];
                if (file_exists($file_path)):
                    $imgpath = IMAGE_PATH . 'nearby/' . $img_array[0];
                    $img = '<img class="pt-3" src="' . $imgpath . '" alt="' . $recRow->sub_title . '">';
                endif;
            }
            


            
            // pr($recRow);
            // Tab Content
            $tabContent .= '
            <div class="tab-pane fade jump_map show ' . $active . ' bg-light pb-4 bg-white" id="tab-' . $recRow->id . '" role="tabpanel" aria-labelledby="tab-' . $recRow->id . '">
                <div class="block-thirty-six px-3">
                    <div class="image">'.$img.'</div>
                    <h2 class="mt-3">' . $recRow->sub_title . '</h2>
                    <div class="text mt-2 text-limit mb-0 nearby_spacing">' . $recRow->content . '</div>
                    <div class="align-items-center d-flex gap-3 gap-2 get_direction mt-4">
                        <a href="' . $recRow->linksrc . '" target="_blank" rel="noopener noreferrer">Get Direction &nbsp; <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                        <p class="mb-0 text-white">Distance: ' . $recRow->distance . '</p>
                    </div>
                </div>
            </div>';

            // Tab Buttons  
            $tabButtons .= '
            <li class="nav-item jump_to_map" role="presentation">
                <button class="nav-link ' . $active . '" id="tab-' . $recRow->id . '" data-bs-toggle="tab" data-bs-target="#tab-' . $recRow->id . '" 
                    type="button" role="tab" aria-controls="tab-' . $recRow->id . '" aria-selected="' . ($active ? 'true' : 'false') . '">
                    <h4>' . $recRow->title . '</h4>
                </button>
            </li>';
        }
    }
}

$nearby_section = '
<section class="section-thirty-five pt-5 bg-light pb-5">
    <div class="auto-container nearby__wrapper">
        <div class="row">
            <div class="col-lg-7 order-2">
                <div class="tab-content" id="myTabContent">
                    ' . $tabContent . '
                </div>
            </div>
            <div class="col-lg-5">
                <div class="sub-title">Best Experience</div>
                <h2 class="sec-title">Nearby Attraction</h2>
                <div class="features_wrapper">
                    <div class="nav-tab-wrapper">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            ' . $tabButtons . '
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
';

$jVars['module:nearby-section'] = $nearby_section;
