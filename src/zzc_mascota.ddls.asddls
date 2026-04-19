@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: 'Mascota'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZZTMASCOTA'
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZZC_MASCOTA
  as projection on ZZI_MASCOTA as MASCOTA
{
  key Uuidmascota,
      Uudidplayer,
      Namemascota,
      Ataque,
      Defensa,
      Vida,
      Nivel,
      Puntos,
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
      _Player : redirected to parent ZZC_PLAYER
}
