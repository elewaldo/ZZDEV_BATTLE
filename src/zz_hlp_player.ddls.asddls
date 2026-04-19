@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Help Request Player'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define view entity ZZ_HLP_PLAYER as select from ZZI_PLAYER
{
    @UI.lineItem: [{ position: 10, label: 'Uuid' }]
    @UI.selectionField: [{ position: 10 }]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8 
    key Uudidplayer,
    
    @UI.lineItem: [{ position: 20, label: 'Name' }]
    @UI.selectionField: [{ position: 20, element: 'Nameplayer' }]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8     
    Nameplayer,
    
    @UI.lineItem: [{ position: 30, label: 'Victories' }]
    @UI.selectionField: [{ position: 30, element: 'Victories' }]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8     
    Victories,
    
    @UI.lineItem: [{ position: 40, label: 'Losses' }]
    @UI.selectionField: [{ position: 40, element: 'Losses' }]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8     
    Losses
}
