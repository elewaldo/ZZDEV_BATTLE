@EndUserText.label: 'Mascota Player Value Help Request'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_BP_MASCOTA_PLAYER'
@Search.searchable: true
define custom entity ZZ_HLP_MASCOTA_PLAYER
{
  @EndUserText.label: 'Uuid Mascota'
  @UI.lineItem: [{ position: 10 }]
  @UI.selectionField: [{ position: 10 }]
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
  key uuidmascota : sysuuid_x16;

  @EndUserText.label: 'Name Mascota'
  @UI.lineItem: [{ position: 20 }]
  @UI.selectionField: [{ position: 20 }]
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
      namemascota : abap.char(25);

  @EndUserText.label: 'Uuid Player'
  @UI.lineItem: [{ position: 30 }]
  @UI.selectionField: [{ position: 30 }]
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
      uudidplayer : sysuuid_x16;

  @EndUserText.label: 'Name Player'
  @UI.lineItem: [{ position: 40 }]
  @UI.selectionField: [{ position: 40 }]
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
      nameplayer  : abap.char(25);
}
