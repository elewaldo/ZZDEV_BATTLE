@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección Combate'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZZC_COMBATE
  provider contract transactional_query
  as projection on ZZI_COMBATE
{
  key Uuidcombate,
      @ObjectModel.text.element: [ 'NamePlayer01' ]
      Uuidplayer01,
      NamePlayer01,
      VictoriesPlayer01,
      LossesPlayer01,
      @ObjectModel.text.element: [ 'NamePlayer02' ]
      Uuidplayer02,
      NamePlayer02,
      VictoriesPlayer02,
      LossesPlayer02,
      @ObjectModel.text.element: [ 'NameMascota01' ]
      Uuidmascota01,
      NameMascota01,
      AtaqueMascota01,
      DefensaMascota01,
      VidaMascota01,
      NivelMascota01,
      PuntosMascota01,
      @ObjectModel.text.element: [ 'NameMascota02' ]
      Uuidmascota02,
      NameMascota02,
      AtaqueMascota02,
      DefensaMascota02,
      VidaMascota02,
      NivelMascota02,
      PuntosMascota02,
      Marcadorplayer01,
      Marcadorplayer02,
      @Semantics: {
        user.createdBy: true
      }
      CreatedBy,
      @Semantics: {
        systemDateTime.createdAt: true
      }
      CreatedAt,
      @Semantics: {
        user.lastChangedBy: true
      }
      LastChangedBy,
      @Semantics: {
        systemDateTime.lastChangedAt: true
      }
      LastChangedAt,
      @Semantics: {
        systemDateTime.localInstanceLastChangedAt: true
      }

      /* Associations */
      _Mascota01,
      _Mascota02,
      _Player01,
      _Player02
}
