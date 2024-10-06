# Github action with Smalltalk

This is a implementation for run tests in Smalltalk used for CI/CD integration

## Extern code

The implementation use [TestResultConsolePrinter.st](.github/workflows/TestResultConsolePrinter.st)' for
show result of tests. This implementations is inspired in CI/CD used in
[Cuis](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev/tree/master) image

## Use

First steps is install the [Cuis University](https://sites.google.com/view/cuis-university/descargas). For this
run the next code:

```sh
./.github/workflows/installCuis.sh
```

Next, run the next code:

```sh
./.github/workflows/runTests.sh <smalltalk-files> <name-of-test-case-class> 
```

The Smalltalk is the file with tests, is important that file is in base path, because the file is loaded
in Cuis images. The name of class is the class with the tests.
