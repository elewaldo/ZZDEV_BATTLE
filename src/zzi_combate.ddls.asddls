@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Entity Combate'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZZI_COMBATE
  as select from zzt_combate
  association [0..1] to ZZI_PLAYER  as _Player01  on $projection.Uuidplayer01 = _Player01.Uudidplayer
  association [0..1] to ZZI_PLAYER  as _Player02  on $projection.Uuidplayer02 = _Player02.Uudidplayer
  association [0..1] to ZZI_MASCOTA as _Mascota01 on $projection.Uuidmascota01 = _Mascota01.Uuidmascota
  association [0..1] to ZZI_MASCOTA as _Mascota02 on $projection.Uuidmascota02 = _Mascota02.Uuidmascota
{
  key uuidcombate            as Uuidcombate,
      uuidplayer01           as Uuidplayer01,
      _Player01.Nameplayer   as NamePlayer01,
      _Player01.Victories    as VictoriesPlayer01,
      _Player01.Losses       as LossesPlayer01,
      uuidplayer02           as Uuidplayer02,
      _Player02.Nameplayer   as NamePlayer02,
      _Player02.Victories    as VictoriesPlayer02,
      _Player02.Losses       as LossesPlayer02,
      uuidmascota01          as Uuidmascota01,
      _Mascota01.Namemascota as NameMascota01,
      uuidmascota02          as Uuidmascota02,
      _Mascota01.Ataque      as AtaqueMascota01,
      _Mascota01.Defensa     as DefensaMascota01,
      _Mascota01.Vida        as VidaMascota01,
      _Mascota01.Nivel       as NivelMascota01,
      _Mascota01.Puntos      as PuntosMascota01,
      _Mascota02.Namemascota as NameMascota02,
      _Mascota02.Ataque      as AtaqueMascota02,
      _Mascota02.Defensa     as DefensaMascota02,
      _Mascota02.Vida        as VidaMascota02,
      _Mascota02.Nivel       as NivelMascota02,
      _Mascota02.Puntos      as PuntosMascota02,
      marcadorplayer01       as Marcadorplayer01,
      marcadorplayer02       as Marcadorplayer02,
      @Semantics.user.createdBy: true
      created_by             as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at             as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by        as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at        as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at  as LocalLastChangedAt,

      /* asociations */
      _Player01,
      _Player02,
      _Mascota01,
      _Mascota02
}
