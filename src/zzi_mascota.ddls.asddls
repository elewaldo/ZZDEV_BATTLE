@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Entity Mascota'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZZI_MASCOTA
  as select from zzt_mascota as MASCOTA
  association to parent ZZI_PLAYER as _Player
    on $projection.Uudidplayer = _Player.Uudidplayer
{
  key uuidmascota           as Uuidmascota,
      uudidplayer           as Uudidplayer,
      namemascota           as Namemascota,
      ataque                as Ataque,
      defensa               as Defensa,
      vida                  as Vida,
      nivel                 as Nivel,
      puntos                as Puntos,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      
      _Player
}
