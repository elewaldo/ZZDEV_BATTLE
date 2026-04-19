@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZTPLAYER'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZI_PLAYER
  as select from zzt_player as PLAYER
  composition [0..*] of ZZI_MASCOTA as _Mascota  
{
  key uudidplayer           as Uudidplayer,
      nameplayer            as Nameplayer,
      victories             as Victories,
      losses                as Losses,
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
      
      _Mascota
}
