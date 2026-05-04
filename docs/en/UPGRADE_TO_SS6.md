# Upgrade to Silverstripe CMS 6

## Dependency Updates

### ⚠️ BREAKING CHANGE: Framework & Admin Requirements

Update your `composer.json` to require the following versions:

```json
"require": {
    "silverstripe/framework": "^6.0",
    "silverstripe/admin": "^3.0"
}
```

**Action required**: Run `composer update` after making these changes. Review the [official Silverstripe 6 upgrade guide](https://docs.silverstripe.org/en/6/changelogs/6.0.0/) for additional framework-level breaking changes.

### Development Dependencies

Update the following dev dependency:

```json
"require-dev": {
    "sunnysideup/sswebpack_engine_only": "^5.0-dev"
}
```

Changed from `5.x-dev` to `^5.0-dev` for better version constraint specificity.

## Metadata Changes

- Author name encoding corrected from `Siôn Madden` to proper UTF-8 encoding (`Si\u00f4n Madden`)
