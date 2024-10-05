!classDefinition: #MarsRoverTest category: #MarsRover!
TestCase subclass: #MarsRoverTest
	instanceVariableNames: 'north west east south'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverTest methodsFor: 'tests - movement' stamp: 'AB 10/3/2024 16:15:17'!
test06SendingTwiceForwardCommandDoesAdvanceTwice

	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'ff' 
		andMustEndAt: 0@2
		facingTo: north! !

!MarsRoverTest methodsFor: 'tests - movement' stamp: 'AB 10/3/2024 16:15:31'!
test07SendingForwardBackwardCommandsAndDoesNotAdvance
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'fb' 
		andMustEndAt: 0@0 
		facingTo: north! !


!MarsRoverTest methodsFor: 'tests - rotate' stamp: 'AB 10/3/2024 16:15:52'!
test09SendingTwiceLeftRotateCommandsFacedCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'll' 
		andMustEndAt: 0@0 
		facingTo: south! !

!MarsRoverTest methodsFor: 'tests - rotate' stamp: 'AB 10/3/2024 16:16:13'!
test10SendingThreeLeftRotateCommandsFacedCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'lll' 
		andMustEndAt: 0@0 
		facingTo: east! !

!MarsRoverTest methodsFor: 'tests - rotate' stamp: 'AB 10/3/2024 16:16:28'!
test11SendingFourLeftRotateCommandsFacedCorrectly

	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'llll' 
		andMustEndAt: 0@0 
		facingTo: north! !

!MarsRoverTest methodsFor: 'tests - rotate' stamp: 'AB 10/3/2024 16:16:52'!
test12SendingTwiceRightRotateCommandsFacedCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'rr' 
		andMustEndAt: 0@0 
		facingTo: south! !

!MarsRoverTest methodsFor: 'tests - rotate' stamp: 'AB 10/3/2024 16:17:05'!
test13SendingThreeRightRotateCommandsFacedCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'rrr' 
		andMustEndAt: 0@0 
		facingTo: west! !

!MarsRoverTest methodsFor: 'tests - rotate' stamp: 'AB 10/3/2024 16:17:17'!
test14SendingFourRightRotateCommandsFacedCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'rrrr' 
		andMustEndAt: 0@0 
		facingTo: north! !


!MarsRoverTest methodsFor: 'tests - one command' stamp: 'AB 10/3/2024 16:11:50'!
test01SendingAEmptyCommandDoesNothing
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: '' 
		andMustEndAt: 0@0 
		facingTo: north! !

!MarsRoverTest methodsFor: 'tests - one command' stamp: 'AB 10/3/2024 16:14:06'!
test02SendingForwardCommandDoesAdvance
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'f' 
		andMustEndAt: 0@1
		facingTo: north! !

!MarsRoverTest methodsFor: 'tests - one command' stamp: 'AB 10/3/2024 16:14:23'!
test03SendingBackwardCommandDoesAdvanceBackward
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'b' 
		andMustEndAt: 0@-1
		facingTo: north! !

!MarsRoverTest methodsFor: 'tests - one command' stamp: 'AB 10/3/2024 16:14:40'!
test04SendingRightRotateCommandRotates
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'r' 
		andMustEndAt: 0@0 
		facingTo: east! !

!MarsRoverTest methodsFor: 'tests - one command' stamp: 'AB 10/3/2024 16:14:59'!
test05SendingLeftRotateCommandRotates
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'l' 
		andMustEndAt: 0@0 
		facingTo: west! !


!MarsRoverTest methodsFor: 'tests - movement and rotate' stamp: 'AB 10/3/2024 16:17:48'!
test16SendingLeftRotateAndForwardCommandWorksCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'lf' 
		andMustEndAt: -1@0 
		facingTo: west! !

!MarsRoverTest methodsFor: 'tests - movement and rotate' stamp: 'AB 10/3/2024 16:18:14'!
test17SendingTwiceLeftRotateAndForwardCommandWorksCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'llf' 
		andMustEndAt: 0@-1
		facingTo: south! !

!MarsRoverTest methodsFor: 'tests - movement and rotate' stamp: 'AB 10/3/2024 16:18:34'!
test18SendingThreeLeftRotateAndForwardCommandWorksCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'lllf' 
		andMustEndAt: 1@0 
		facingTo: east! !

!MarsRoverTest methodsFor: 'tests - movement and rotate' stamp: 'AB 10/3/2024 16:18:56'!
test19SendingRightRotateAndBackwardCommandWorksCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'rb' 
		andMustEndAt: -1@0 
		facingTo: east! !

!MarsRoverTest methodsFor: 'tests - movement and rotate' stamp: 'AB 10/3/2024 16:19:33'!
test20SendingTwiceRightRotateAndBackwardCommandWorksCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'rrb' 
		andMustEndAt: 0@1
		facingTo: south! !

!MarsRoverTest methodsFor: 'tests - movement and rotate' stamp: 'AB 10/3/2024 16:20:04'!
test21SendingThreeRightRotateAndBackwardCommandWorksCorrectly
	
	self assertMarsRoverWithInitialPosition: 0@0 
		andFacingTo: north 
		shouldExecuteCommands: 'rrrb' 
		andMustEndAt: 1@0 
		facingTo: west! !


!MarsRoverTest methodsFor: 'assertions' stamp: 'AB 10/3/2024 16:47:37'!
assertMarsRoverWithInitialPosition: anInitialPosition andFacingTo: aInitialCardinalPoint shouldExecuteCommands: aListOfCommands andMustEndAt: aFinalPosition facingTo: aFinalCardinalPoint
	
	| marsRover |
	marsRover := MarsRover 
		withInitialPosition: anInitialPosition 
		andFacingTo: aInitialCardinalPoint.
	
	marsRover executeCommands: aListOfCommands.
	
	self assert: (marsRover isAtPosition: aFinalPosition).
	self assert: (marsRover isFacingTo: aFinalCardinalPoint).! !


!MarsRoverTest methodsFor: 'setup' stamp: 'AB 10/4/2024 15:26:31'!
setUp

	north := North new.
	west := West new.
	east := East new.
	south := South new.! !


!MarsRoverTest methodsFor: 'tests - errors' stamp: 'AB 10/3/2024 16:24:12'!
test08SendingInvalidCommandThrowError

	| marsRover |
	marsRover := MarsRover withInitialPosition: 0@0 andFacingTo: north.
	
	self should: [marsRover executeCommands: 'fxf'.]
		raise: Error
		withExceptionDo: [:anError |
			self assert: (anError messageText = MarsRoverCommand invalidCommandMessageError)	.
			self assert: (marsRover isAtPosition: 0@1).
			self assert: (marsRover isFacingTo: north).	
		].! !

!MarsRoverTest methodsFor: 'tests - errors' stamp: 'AB 10/3/2024 16:46:07'!
test15CreateAMarsRoverWithInvalidCardinalPointThrowError
	
	self 
		should: [MarsRover withInitialPosition: 0@0 andFacingTo: #NorthWest.]
		raise:  Error 
		withExceptionDo: [:anError |
			self assert: (anError messageText = MarsRover invalidCardinalPointMessageError).	
		].! !

!MarsRoverTest methodsFor: 'tests - errors' stamp: 'AB 10/3/2024 16:44:41'!
test22CreateAMarsRoverWithInvalidPositionThrowError
	
	self 
		should: [MarsRover withInitialPosition: '(0,0)' andFacingTo: #North.]
		raise:  Error 
		withExceptionDo: [:anError |
			self assert: (anError messageText = MarsRover invalidInitialPositionMessageError).	
		].! !


!classDefinition: #CardinalPoint category: #MarsRover!
Object subclass: #CardinalPoint
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!CardinalPoint methodsFor: 'rotation' stamp: 'AB 10/3/2024 14:56:59'!
left

	self subclassResponsibility! !

!CardinalPoint methodsFor: 'rotation' stamp: 'AB 10/3/2024 14:57:05'!
right

	self subclassResponsibility! !


!CardinalPoint methodsFor: 'direction' stamp: 'AB 10/3/2024 15:16:20'!
backward

	self subclassResponsibility! !

!CardinalPoint methodsFor: 'direction' stamp: 'AB 10/3/2024 15:16:55'!
forward

	self subclassResponsibility! !


!classDefinition: #East category: #MarsRover!
CardinalPoint subclass: #East
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!East methodsFor: 'rotation' stamp: 'AB 10/3/2024 16:31:24'!
left
	
	^North new! !

!East methodsFor: 'rotation' stamp: 'AB 10/3/2024 16:31:16'!
right
	
	^South new! !


!East methodsFor: 'direction' stamp: 'AB 10/3/2024 15:19:58'!
backward
	
	^(-1@0)
! !

!East methodsFor: 'direction' stamp: 'AB 10/3/2024 15:17:12'!
forward
	
	^(1@0)! !


!classDefinition: #North category: #MarsRover!
CardinalPoint subclass: #North
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!North methodsFor: 'direction' stamp: 'AB 10/3/2024 15:20:33'!
backward
	
	^(0@-1)! !

!North methodsFor: 'direction' stamp: 'AB 10/3/2024 15:17:33'!
forward
	
	^(0@1)! !


!North methodsFor: 'rotation' stamp: 'AB 10/3/2024 16:31:32'!
left
	
	^West new! !

!North methodsFor: 'rotation' stamp: 'AB 10/3/2024 16:31:39'!
right
	
	^East new! !


!classDefinition: #South category: #MarsRover!
CardinalPoint subclass: #South
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!South methodsFor: 'direction' stamp: 'AB 10/3/2024 15:20:56'!
backward
	
	^(0@1)! !

!South methodsFor: 'direction' stamp: 'AB 10/3/2024 15:17:51'!
forward
	
	^(0@-1)! !


!South methodsFor: 'rotation' stamp: 'AB 10/3/2024 16:31:47'!
left
	
	^East new! !

!South methodsFor: 'rotation' stamp: 'AB 10/3/2024 16:31:53'!
right
	
	^West new! !


!classDefinition: #West category: #MarsRover!
CardinalPoint subclass: #West
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!West methodsFor: 'direction' stamp: 'AB 10/3/2024 15:21:15'!
backward
	
	^(1@0)! !

!West methodsFor: 'direction' stamp: 'AB 10/3/2024 15:18:20'!
forward
	
	^(-1@0)! !


!West methodsFor: 'rotation' stamp: 'AB 10/3/2024 16:32:00'!
left
	
	^South new! !

!West methodsFor: 'rotation' stamp: 'AB 10/3/2024 16:32:06'!
right
	
	^North new! !


!classDefinition: #MarsRover category: #MarsRover!
Object subclass: #MarsRover
	instanceVariableNames: 'position cardinalPoint'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRover methodsFor: 'initialization' stamp: 'AB 10/3/2024 16:30:42'!
initializeWithInitialPosition: aPosition andFacingTo: aCardinalPoint 

	position := aPosition.
	cardinalPoint := aCardinalPoint.! !


!MarsRover methodsFor: 'execution' stamp: 'AB 10/4/2024 15:29:06'!
executeCommands: aListOfCommands
	
	aListOfCommands do: [:aNameOfCommand |
		(MarsRoverCommand withName: aNameOfCommand) executeCommand: self.
	]! !

!MarsRover methodsFor: 'execution' stamp: 'AB 10/3/2024 15:19:26'!
moveBackward
	
	position := position + cardinalPoint backward.! !

!MarsRover methodsFor: 'execution' stamp: 'AB 10/3/2024 15:18:57'!
moveForward
	
	position := position + cardinalPoint forward.! !

!MarsRover methodsFor: 'execution' stamp: 'AB 10/3/2024 15:21:29'!
rotateToLeft
	
	cardinalPoint := cardinalPoint left.! !

!MarsRover methodsFor: 'execution' stamp: 'AB 10/3/2024 15:21:32'!
rotateToRight
	
	cardinalPoint := cardinalPoint right.! !


!MarsRover methodsFor: 'comparing' stamp: 'AB 10/3/2024 16:02:42'!
isAtPosition: aPosition 
	
	^(position = aPosition)! !

!MarsRover methodsFor: 'comparing' stamp: 'AB 10/3/2024 16:33:18'!
isFacingTo: aCardinalPoint 
	
	^(cardinalPoint isKindOf: (aCardinalPoint class))! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: #MarsRover!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'error' stamp: 'AB 10/3/2024 16:43:27'!
invalidCardinalPointMessageError
	
	^'Invalid Cardinal Point'! !

!MarsRover class methodsFor: 'error' stamp: 'AB 10/3/2024 16:44:41'!
invalidInitialPositionMessageError

	^'Invalid Initialization'! !


!MarsRover class methodsFor: 'instance creation' stamp: 'AB 10/3/2024 16:44:59'!
withInitialPosition: anInitialPosition andFacingTo: aCardinalPoint 
	
	(anInitialPosition isKindOf: Point) ifFalse: [^self error: (self invalidInitialPositionMessageError)].
	(aCardinalPoint isKindOf: CardinalPoint) ifFalse: [^self error: (self invalidCardinalPointMessageError)].

	^self new initializeWithInitialPosition: anInitialPosition andFacingTo: aCardinalPoint ! !


!classDefinition: #MarsRoverCommand category: #MarsRover!
Object subclass: #MarsRoverCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverCommand methodsFor: 'execution' stamp: 'AB 10/3/2024 15:29:26'!
executeCommand: aMarsRover

	self subclassResponsibility! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRoverCommand class' category: #MarsRover!
MarsRoverCommand class
	instanceVariableNames: ''!

!MarsRoverCommand class methodsFor: 'error' stamp: 'AB 10/3/2024 16:22:27'!
invalidCommandMessageError

	^'Invalid Command'! !


!MarsRoverCommand class methodsFor: 'instance creation' stamp: 'AB 10/3/2024 15:31:45'!
isYourType: aCommand

	self subclassResponsibility! !

!MarsRoverCommand class methodsFor: 'instance creation' stamp: 'AB 10/4/2024 15:27:29'!
withName: aNameOfCommand
	
	(self subclasses)
		detect: [:aSubclass | aSubclass isYourType: aNameOfCommand]
		ifFound: [:aSubclass | ^aSubclass new]
		ifNone: [^self error: (self invalidCommandMessageError)].! !


!classDefinition: #MoveBackward category: #MarsRover!
MarsRoverCommand subclass: #MoveBackward
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MoveBackward methodsFor: 'execution' stamp: 'AB 10/3/2024 15:29:37'!
executeCommand: aMarsRover
	
	aMarsRover moveBackward.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MoveBackward class' category: #MarsRover!
MoveBackward class
	instanceVariableNames: ''!

!MoveBackward class methodsFor: 'instance creation' stamp: 'AB 10/4/2024 15:28:41'!
isYourType: aNameOfCommand
	
	^($b = aNameOfCommand)! !


!classDefinition: #MoveForward category: #MarsRover!
MarsRoverCommand subclass: #MoveForward
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MoveForward methodsFor: 'execution' stamp: 'AB 10/3/2024 15:29:47'!
executeCommand: aMarsRover
	
	aMarsRover moveForward! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MoveForward class' category: #MarsRover!
MoveForward class
	instanceVariableNames: ''!

!MoveForward class methodsFor: 'instance creation' stamp: 'AB 10/4/2024 15:28:46'!
isYourType: aNameOfCommand
	
	^($f = aNameOfCommand)! !


!classDefinition: #RotateToLeft category: #MarsRover!
MarsRoverCommand subclass: #RotateToLeft
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!RotateToLeft methodsFor: 'execution' stamp: 'AB 10/3/2024 15:29:56'!
executeCommand: aMarsRover
	
	aMarsRover rotateToLeft! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RotateToLeft class' category: #MarsRover!
RotateToLeft class
	instanceVariableNames: ''!

!RotateToLeft class methodsFor: 'instance creation' stamp: 'AB 10/4/2024 15:28:49'!
isYourType: aNameOfCommand
	
	^($l = aNameOfCommand)! !


!classDefinition: #RotateToRight category: #MarsRover!
MarsRoverCommand subclass: #RotateToRight
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!RotateToRight methodsFor: 'execution' stamp: 'AB 10/3/2024 15:30:04'!
executeCommand: aMarsRover
	
	aMarsRover rotateToRight! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RotateToRight class' category: #MarsRover!
RotateToRight class
	instanceVariableNames: ''!

!RotateToRight class methodsFor: 'instance creation' stamp: 'AB 10/4/2024 15:28:55'!
isYourType: aNameOfCommand
	
	^($r = aNameOfCommand).! !