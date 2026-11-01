.class final Lcom/google/android/libraries/places/internal/zzif;
.super Lcom/google/android/libraries/places/internal/zzik;


# instance fields
.field private final zza:Landroid/location/Location;

.field private final zzb:Lcom/google/android/libraries/places/internal/zznx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zznx;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzik;-><init>(Lcom/google/android/libraries/places/internal/zzjt;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzif;->zza:Landroid/location/Location;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzif;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    return-void
.end method


# virtual methods
.method protected final zze()Ljava/lang/String;
    .locals 1

    const-string v0, "findplacefromuserlocation/json"

    return-object v0
.end method

.method public final zzf()Ljava/util/Map;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzfi;->zzb()Lcom/google/android/libraries/places/internal/zzjt;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzif;->zza:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzjc;->zza(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzif;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    const/16 v3, 0xfa0

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzjc;->zze(Lcom/google/android/libraries/places/internal/zznx;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifiaccesspoints"

    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzif;->zza:Landroid/location/Location;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    const-string v3, "precision"

    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzif;->zza:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzjd;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fields"

    invoke-static {v1, v2, v0, v4}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
