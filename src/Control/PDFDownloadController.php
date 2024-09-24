<?php

namespace Sunnysideup\GAPDFDownloads;

use SilverStripe\Control\Controller;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Core\Config\Configurable;

class PDFDownloadController extends Controller
{
    use Configurable;

    private static $analytics_code = '';

    private static $allowed_actions = [
        'topdf',
    ];

    public function topdf(HTTPRequest $request)
    {
        return $this->customise(['GACode' => PDFDownloadController::config()->get('analytics_code')])->renderWith('PDFDownloadController');
    }
}
