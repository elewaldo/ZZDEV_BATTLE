@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Help Request Mascota'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZZ_HLP_MASCOTA as select from ZZI_MASCOTA
{
    key Uuidmascota,
    Uudidplayer,
    Namemascota,
    Ataque,
    Defensa,
    Vida,
    Nivel,
    Puntos,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    
    /* Associations */
    _Player
}
