@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZZTPLAYER'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZC_PLAYER
  provider contract transactional_query
  as projection on ZZI_PLAYER
  association [1..1] to ZZI_PLAYER as _BaseEntity on $projection.Uudidplayer = _BaseEntity.Uudidplayer
{
  key Uudidplayer,
  Nameplayer,
  Victories,
  Losses,
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
  LocalLastChangedAt,
  _BaseEntity,
  _Mascota : redirected to composition child zzc_mascota
}
