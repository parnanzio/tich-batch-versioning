# TiCh Batch Versioning [![Build Status](https://travis-ci.org/parnanzio/tich-batch-versioning.png?branch=feature-travis)](https://travis-ci.org/parnanzio/tich-batch-versioning)

Batch update versioning of all the items in your `tich.cfg` file

## Why?

[TiCh](https://github.com/jasonkneen/TiCh) is an amazing script to switch between multiple apps with the same basecode.
I had an app with lots of variations and I like to update their version every time I make a modification.

These rules follow the rules explained by Fokke Zandbergen in this article: [Versioning your apps in 4.1.0](http://www.appcelerator.com/blog/2015/07/versioning-your-apps-with-4-1-0/).

You can choose to increment between `major`, `minor` and `patch` value. `build` value is always incremented.


## Usage

Show help information

```
./tich-batch-versioning --help
```

Increment major version (eg. 1.4.5.7 => 2.0.0.8)

```
./tich-batch-versioning major
```

Increment minor version (eg. 1.4.5.7 => 1.5.0.8)

```
./tich-batch-versioning minor
```

Increment patch version (eg. 1.4.5.7 => 1.4.6.8)

```
./tich-batch-versioning patch
```
