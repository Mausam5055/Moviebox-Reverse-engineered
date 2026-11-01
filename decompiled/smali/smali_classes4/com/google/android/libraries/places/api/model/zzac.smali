.class abstract Lcom/google/android/libraries/places/api/model/zzac;
.super Lcom/google/android/libraries/places/api/model/RectangularBounds;


# instance fields
.field private final zza:Lcom/google/android/gms/maps/model/LatLng;

.field private final zzb:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzac;->zza:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/libraries/places/api/model/zzac;->zzb:Lcom/google/android/gms/maps/model/LatLng;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null northeast"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null southwest"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzac;->zza:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->getSouthwest()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzac;->zzb:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->getNortheast()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final getNortheast()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzac;->zzb:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getSouthwest()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzac;->zza:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzac;->zza:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzac;->zzb:Lcom/google/android/gms/maps/model/LatLng;

    mul-int/2addr v0, v1

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzac;->zzb:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzac;->zza:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RectangularBounds{southwest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", northeast="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
