.class final Lcom/google/android/libraries/places/internal/zzge;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final zza(Lcom/google/android/libraries/places/api/model/CircularBounds;)Lcom/google/android/libraries/places/internal/zzamq;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/CircularBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzamq;->zza()Lcom/google/android/libraries/places/internal/zzamp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaxp;->zzf()Lcom/google/android/libraries/places/internal/zzaxo;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzaxo;->zza(D)Lcom/google/android/libraries/places/internal/zzaxo;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzaxo;->zzb(D)Lcom/google/android/libraries/places/internal/zzaxo;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzamp;->zza(Lcom/google/android/libraries/places/internal/zzaxo;)Lcom/google/android/libraries/places/internal/zzamp;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/CircularBounds;->getRadius()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzamp;->zzb(D)Lcom/google/android/libraries/places/internal/zzamp;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzamq;

    return-object p0
.end method

.method static final zzb(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Lcom/google/android/libraries/places/internal/zzaki;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->getSouthwest()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->getNortheast()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaki;->zza()Lcom/google/android/libraries/places/internal/zzakh;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaxp;->zzf()Lcom/google/android/libraries/places/internal/zzaxo;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzaxo;->zza(D)Lcom/google/android/libraries/places/internal/zzaxo;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzaxo;->zzb(D)Lcom/google/android/libraries/places/internal/zzaxo;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaxp;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzakh;->zzb(Lcom/google/android/libraries/places/internal/zzaxp;)Lcom/google/android/libraries/places/internal/zzakh;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaxp;->zzf()Lcom/google/android/libraries/places/internal/zzaxo;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzaxo;->zza(D)Lcom/google/android/libraries/places/internal/zzaxo;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzaxo;->zzb(D)Lcom/google/android/libraries/places/internal/zzaxo;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzaxp;

    invoke-virtual {v1, p0}, Lcom/google/android/libraries/places/internal/zzakh;->zza(Lcom/google/android/libraries/places/internal/zzaxp;)Lcom/google/android/libraries/places/internal/zzakh;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzaki;

    return-object p0
.end method
