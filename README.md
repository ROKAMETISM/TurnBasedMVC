# turn-based-mvc-1
Turn-based system with MVC pattern



## Todo

## References

Gamestate and History, GameStateContext 
https://www.reddit.com/r/xcom2mods/wiki/index/game_states/

XComScript
https://www.reddit.com/r/xcom2mods/wiki/script/

## XCOM Design Structure Analysis

XComGameState : GameState

XComGameState_BaseObject : State Object

XComGameStateContext

XComGameStateHistory : History

X2DataTemplate : Base class for Template

GameState has an Array[XComGameState_BaseObject] called GameStates

GameState has GameStateContext StateChangeContext : Context that generated this game state and results meta data + interface for visualization

GameState can be either a complete state with a HistoryIndex, or a delta from previous state.

ParentGameState?? on top of the submitted stack of gamestates

State Object(XComBaseObject) is assiciated with Template

Instantiates a new state object of the specified type and adds it to the PendingGameStates list in this object for validation / book-keeping.
<param name="StateClass">The class of state object to create. If ObjectID is specified, then this argument is overridden by the type of the object represented by ObjectID
<param name="ObjectID">A parameter specifying the state object to update to a state object that already exists.
function XComGameState_BaseObject ModifyStateObject(class StateClass, int ObjectID, optional int HACK_HistoryIndex = -1);

<param name="InitTemplate">An optional parameter specifying the template to initialize the new state object from.</param>
function XComGameState_BaseObject CreateNewStateObject(class StateClass, optional X2DataTemplate InitTemplate)