<?php

namespace Sunnysideup\GAPDFDownloads;

use SilverStripe\Control\Controller;
use SilverStripe\Control\HTTPRequest;

class PDFController extends Controller
{
    private static array $allowed_actions = [
        'topdf' => true,
    ];

    private static string  $ga_code = '';

    public function topdf(HTTPRequest $request)
    {
        return $this->renderWith(self::class);
    }

    public function GACode()
    {
        return $this->Config()->get('ga_code');
    }
}
