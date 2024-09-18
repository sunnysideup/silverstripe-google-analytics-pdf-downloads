<?php

namespace Sunnysideup\GAPDFDownloads;

use SilverStripe\Control\Controller;
use SilverStripe\Control\HTTPRequest;

class PDFController extends Controller
{
    private static $allowed_actions = [
        'topdf',
    ];

    public function topdf(HTTPRequest $request)
    {
        return $this->renderWith(self::class);
    }
}
