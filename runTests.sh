#!/bin/bash

CUIS_DIR="linux64"
IMAGE_FILE="$(ls $CUIS_DIR/ | grep '.image')"

RUN_TESTS_SCRIPT="\
  | suite result exitCode tests |
  Utilities classPool at: #AuthorName put: 'TestCase'.
  Utilities classPool at: #AuthorInitials put: 'TS'.
  ChangeSet fileIn: DirectoryEntry currentDirectory // '$1.st'.
  ChangeSet fileIn: DirectoryEntry currentDirectory // 'TestResultConsolePrinter.st'.
  suite := TestSuite new.
  $2 addToSuiteFromSelectors: suite.
  result := suite run.
  result printReport.
  exitCode := (result hasFailures or: [ result hasErrors ]) ifTrue: [ 1 ] ifFalse: [ 0 ].
  Smalltalk quitPrimitive: exitCode.
"

./linux64/vmLiveTyping/squeak -vm-display-null $CUIS_DIR/"$IMAGE_FILE" -d "$RUN_TESTS_SCRIPT"

rm -rf linux64 UserChanges