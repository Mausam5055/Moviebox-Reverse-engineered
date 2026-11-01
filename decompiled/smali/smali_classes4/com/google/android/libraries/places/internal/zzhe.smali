.class final Lcom/google/android/libraries/places/internal/zzhe;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzhh;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzoa;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzoa;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzhh;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zznz;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zznz;-><init>()V

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaov;->zzb:Lcom/google/android/libraries/places/internal/zzaov;

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->OPERATIONAL:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaov;->zzc:Lcom/google/android/libraries/places/internal/zzaov;

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->CLOSED_TEMPORARILY:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaov;->zzd:Lcom/google/android/libraries/places/internal/zzaov;

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->CLOSED_PERMANENTLY:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zznz;->zzc()Lcom/google/android/libraries/places/internal/zzoa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzhe;->zzb:Lcom/google/android/libraries/places/internal/zzoa;

    new-instance v0, Lcom/google/android/libraries/places/internal/zznz;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zznz;-><init>()V

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzl:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->ACCESS:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzg:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->BREAKFAST:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzj:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->BRUNCH:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzd:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->DELIVERY:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzi:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->DINNER:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzb:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->DRIVE_THROUGH:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzc:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->HAPPY_HOUR:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzf:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->KITCHEN:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzh:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->LUNCH:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzn:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->ONLINE_SERVICE_HOURS:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzk:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->PICKUP:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zzm:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->SENIOR_HOURS:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zze:Lcom/google/android/libraries/places/internal/zzapg;

    sget-object v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;->TAKEOUT:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zznz;->zzc()Lcom/google/android/libraries/places/internal/zzoa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzhe;->zzc:Lcom/google/android/libraries/places/internal/zzoa;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhe;->zza:Lcom/google/android/libraries/places/internal/zzhh;

    return-void
.end method

.method private final zzb(Lcom/google/android/libraries/places/internal/zzapj;)Lcom/google/android/libraries/places/api/model/OpeningHours;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/libraries/places/api/model/OpeningHours;->builder()Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzapj;->zze()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzape;

    invoke-static {}, Lcom/google/android/libraries/places/api/model/Period;->builder()Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzape;->zzf()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzape;->zzc()Lcom/google/android/libraries/places/internal/zzapd;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzhe;->zzj(Lcom/google/android/libraries/places/internal/zzapd;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v5

    :goto_1
    invoke-virtual {v6, v7}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setOpen(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzape;->zze()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzape;->zza()Lcom/google/android/libraries/places/internal/zzapd;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzj(Lcom/google/android/libraries/places/internal/zzapd;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v5

    :cond_1
    invoke-virtual {v6, v5}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setClose(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    invoke-virtual {v6}, Lcom/google/android/libraries/places/api/model/Period$Builder;->build()Lcom/google/android/libraries/places/api/model/Period;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->setPeriods(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzapj;->zzg()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->setWeekdayText(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzapj;->zza()Lcom/google/android/libraries/places/internal/zzapg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhe;->zzc:Lcom/google/android/libraries/places/internal/zzoa;

    invoke-virtual {v3, v2, v5}, Lcom/google/android/libraries/places/internal/zzoa;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->setHoursType(Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzapj;->zzf()Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzapi;

    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzapi;->zzc()Lcom/google/android/libraries/places/internal/zzaxm;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzhe;->zzg(Lcom/google/android/libraries/places/internal/zzaxm;)Lcom/google/android/libraries/places/api/model/LocalDate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/api/model/SpecialDay;->builder(Lcom/google/android/libraries/places/api/model/LocalDate;)Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;->setExceptional(Z)Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;->build()Lcom/google/android/libraries/places/api/model/SpecialDay;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Special day is not properly defined: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzhe;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->setSpecialDays(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->build()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object p1

    return-object p1
.end method

.method private static final zzc(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;
    .locals 3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unexpected server error: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method private static final zzd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static final zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->UNKNOWN:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->TRUE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->FALSE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    return-object p0
.end method

.method private static final zzf(Lcom/google/android/libraries/places/internal/zzaxp;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaxp;->zzc()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaxp;->zze()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static final zzg(Lcom/google/android/libraries/places/internal/zzaxm;)Lcom/google/android/libraries/places/api/model/LocalDate;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaxm;->zzf()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaxm;->zze()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaxm;->zzc()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->newInstance(III)Lcom/google/android/libraries/places/api/model/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method private static final zzh(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzsa;

    const-string v1, "a"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzsa;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/google/android/libraries/places/internal/zzsc;->zza:I

    sget-object v1, Lcom/google/android/libraries/places/internal/zzsb;->zza:Lcom/google/android/libraries/places/internal/zzsb;

    invoke-static {p0, v1}, Lcom/google/android/libraries/places/internal/zzsc;->zza(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzsb;)Lcom/google/android/libraries/places/internal/zzsb;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzsa;->zzc(Lcom/google/android/libraries/places/internal/zzsb;)Lcom/google/android/libraries/places/internal/zzsa;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzsa;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsa;->zza()Lcom/google/android/libraries/places/internal/zzrz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzrz;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final zzi(Lcom/google/android/libraries/places/internal/zzalr;)Lcom/google/android/libraries/places/api/model/AuthorAttribution;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzalr;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/api/model/AuthorAttribution;->builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzalr;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzalr;->zze()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;->setPhotoUri(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;->build()Lcom/google/android/libraries/places/api/model/AuthorAttribution;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Author name not provided for an AuthorAttribution result."

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzhe;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    throw p0
.end method

.method private static final zzj(Lcom/google/android/libraries/places/internal/zzapd;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzapd;->zza()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzapd;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzapd;->zzd()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzapd;->zzi()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzapd;->zzg()Lcom/google/android/libraries/places/internal/zzaxm;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzhe;->zzg(Lcom/google/android/libraries/places/internal/zzaxm;)Lcom/google/android/libraries/places/api/model/LocalDate;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "Day of week must an integer between 0 and 6"

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzhe;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    throw p0

    :pswitch_0
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SATURDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->FRIDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->THURSDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->WEDNESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->TUESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->MONDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SUNDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->builder(Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;)Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;->setDate(Lcom/google/android/libraries/places/api/model/LocalDate;)Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzapd;->zzh()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;->setTruncated(Z)Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;->build()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final zza(Lcom/google/android/libraries/places/internal/zzaps;)Lcom/google/android/libraries/places/api/model/Place;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/libraries/places/api/model/Place;->builder()Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setAddress(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzx()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v4, v6

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/libraries/places/internal/zzaoo;

    :try_start_0
    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzaoo;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzaoo;->zze()Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/libraries/places/api/model/AddressComponent;->builder(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzaoo;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;->setShortName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;

    invoke-virtual {v8}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;->build()Lcom/google/android/libraries/places/api/model/AddressComponent;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "AddressComponent is not properly defined: %s."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzhe;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {v5}, Lcom/google/android/libraries/places/api/model/AddressComponents;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setAddressComponents(Lcom/google/android/libraries/places/api/model/AddressComponents;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzy()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-string v7, "https:"

    const-string v8, "//"

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_3

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/places/internal/zzaos;

    invoke-virtual {v9}, Lcom/google/android/libraries/places/internal/zzaos;->zzd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_3
    invoke-virtual {v9}, Lcom/google/android/libraries/places/internal/zzaos;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/google/android/libraries/places/internal/zzhe;->zzh(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0, v5}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setAttributions(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzg()Lcom/google/android/libraries/places/internal/zzaov;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzhe;->zzb:Lcom/google/android/libraries/places/internal/zzoa;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/libraries/places/internal/zzoa;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setBusinessStatus(Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzP()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzD()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setCurbsidePickup(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzQ()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzh()Lcom/google/android/libraries/places/internal/zzapj;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzb(Lcom/google/android/libraries/places/internal/zzapj;)Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v6

    :goto_4
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setCurrentOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzR()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzE()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setDelivery(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzS()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzF()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setDineIn(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzU()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzp()Lcom/google/android/libraries/places/internal/zzaxs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaxs;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v6

    :goto_5
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setEditorialSummary(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzU()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzp()Lcom/google/android/libraries/places/internal/zzaxs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaxs;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_7
    move-object v4, v6

    :goto_6
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setEditorialSummaryLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    :catch_1
    move-object v4, v6

    goto :goto_7

    :cond_8
    :try_start_1
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setIconBackgroundColor(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_9
    move-object v4, v6

    :goto_8
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setIconUrl(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setId(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzV()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzn()Lcom/google/android/libraries/places/internal/zzaxp;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzf(Lcom/google/android/libraries/places/internal/zzaxp;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    goto :goto_9

    :cond_a
    move-object v4, v6

    :goto_9
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzT()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzo()Lcom/google/android/libraries/places/internal/zzaxs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaxs;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_b
    move-object v4, v6

    :goto_a
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzT()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzo()Lcom/google/android/libraries/places/internal/zzaxs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaxs;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_c
    move-object v4, v6

    :goto_b
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setNameLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzX()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzi()Lcom/google/android/libraries/places/internal/zzapj;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzb(Lcom/google/android/libraries/places/internal/zzapj;)Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v4

    goto :goto_c

    :cond_d
    move-object v4, v6

    :goto_c
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzu()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzz()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eqz v5, :cond_e

    move-object v5, v6

    goto/16 :goto_12

    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/libraries/places/internal/zzaog;

    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zzaog;->zze()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_16

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-ne v13, v10, :cond_16

    const/16 v13, 0x2f

    invoke-static {v13}, Lcom/google/android/libraries/places/internal/zzma;->zzb(C)Lcom/google/android/libraries/places/internal/zzma;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/libraries/places/internal/zzmy;->zzb(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/android/libraries/places/internal/zzmy;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v13, v2

    :goto_e
    if-ge v13, v9, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/2addr v13, v3

    goto :goto_e

    :cond_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zzaog;->zze()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zzaog;->zzf()Ljava/util/List;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_10
    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/libraries/places/internal/zzalr;

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Lcom/google/android/libraries/places/internal/zzalr;->zzf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_11
    invoke-virtual {v15}, Lcom/google/android/libraries/places/internal/zzalr;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Lcom/google/android/libraries/places/internal/zzhe;->zzh(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_f

    :cond_12
    const-string v6, ", "

    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzmh;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmh;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/google/android/libraries/places/internal/zzmh;->zzf(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setAttributions(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zzaog;->zza()I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setHeight(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zzaog;->zzc()I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setWidth(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zzaog;->zzf()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_13

    const/4 v6, 0x0

    goto :goto_11

    :cond_13
    new-instance v11, Lcom/google/android/libraries/places/internal/zznu;

    invoke-direct {v11}, Lcom/google/android/libraries/places/internal/zznu;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/libraries/places/internal/zzalr;

    invoke-static {v13}, Lcom/google/android/libraries/places/internal/zzhe;->zzi(Lcom/google/android/libraries/places/internal/zzalr;)Lcom/google/android/libraries/places/api/model/AuthorAttribution;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/libraries/places/internal/zznu;->zze(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznu;

    goto :goto_10

    :cond_14
    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zznu;->zzg()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/libraries/places/api/model/AuthorAttributions;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AuthorAttributions;

    move-result-object v6

    :goto_11
    invoke-virtual {v12, v6}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setAuthorAttributions(Lcom/google/android/libraries/places/api/model/AuthorAttributions;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    invoke-virtual {v12}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->build()Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position (3) must be less than the number of elements that remained ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const-string v0, "Photo reference not provided for a PhotoMetadata result."

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzhe;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    throw v0

    :cond_17
    :goto_12
    invoke-virtual {v0, v5}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPhotoMetadatas(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzC()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    goto :goto_13

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzC()Ljava/util/List;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPlaceTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzW()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzj()Lcom/google/android/libraries/places/internal/zzapp;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/api/model/PlusCode;->builder()Lcom/google/android/libraries/places/api/model/PlusCode$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzapp;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;->setCompoundCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PlusCode$Builder;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzapp;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;->setGlobalCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PlusCode$Builder;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;->build()Lcom/google/android/libraries/places/api/model/PlusCode;

    move-result-object v4

    goto :goto_14

    :cond_19
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPlusCode(Lcom/google/android/libraries/places/api/model/PlusCode;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzm()Lcom/google/android/libraries/places/internal/zzaqb;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/places/internal/zzaqb;->zza:Lcom/google/android/libraries/places/internal/zzaqb;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v3, :cond_1e

    const/4 v2, 0x2

    if-eq v4, v2, :cond_1d

    if-eq v4, v9, :cond_1c

    if-eq v4, v10, :cond_1b

    const/4 v2, 0x5

    if-eq v4, v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_15

    :cond_1a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_1b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    :cond_1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_15
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPriceLevel(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPrimaryType(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zza()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1f

    const/4 v2, 0x0

    goto :goto_16

    :cond_1f
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_16
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setRating(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzY()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzG()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setReservable(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzB()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    goto/16 :goto_1d

    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzaqh;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zza()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-eqz v7, :cond_27

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzi()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzk()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zze()Lcom/google/android/libraries/places/internal/zzawl;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzaxg;->zza(Lcom/google/android/libraries/places/internal/zzawl;)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    :cond_21
    const/4 v7, 0x0

    :goto_18
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzl()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzg()Lcom/google/android/libraries/places/internal/zzaxs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/libraries/places/internal/zzaxs;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_19

    :cond_22
    const/4 v8, 0x0

    :goto_19
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzl()Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzg()Lcom/google/android/libraries/places/internal/zzaxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/libraries/places/internal/zzaxs;->zzf()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1a

    :cond_23
    const/4 v9, 0x0

    :goto_1a
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzj()Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzf()Lcom/google/android/libraries/places/internal/zzaxs;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzaxs;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1b

    :cond_24
    const/4 v10, 0x0

    :goto_1b
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzj()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzf()Lcom/google/android/libraries/places/internal/zzaxs;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zzaxs;->zzf()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1c

    :cond_25
    const/4 v11, 0x0

    :goto_1c
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzh()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/libraries/places/internal/zzhe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzaqh;->zzc()Lcom/google/android/libraries/places/internal/zzalr;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzi(Lcom/google/android/libraries/places/internal/zzalr;)Lcom/google/android/libraries/places/api/model/AuthorAttribution;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/libraries/places/api/model/Review;->builder(Ljava/lang/Double;Lcom/google/android/libraries/places/api/model/AuthorAttribution;)Lcom/google/android/libraries/places/api/model/Review$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/libraries/places/api/model/Review$Builder;->setPublishTime(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;

    invoke-virtual {v4, v8}, Lcom/google/android/libraries/places/api/model/Review$Builder;->setText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;

    invoke-virtual {v4, v9}, Lcom/google/android/libraries/places/api/model/Review$Builder;->setTextLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;

    invoke-virtual {v4, v10}, Lcom/google/android/libraries/places/api/model/Review$Builder;->setOriginalText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;

    invoke-virtual {v4, v11}, Lcom/google/android/libraries/places/api/model/Review$Builder;->setOriginalTextLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;

    invoke-virtual {v4, v12}, Lcom/google/android/libraries/places/api/model/Review$Builder;->setRelativePublishTimeDescription(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/Review$Builder;->build()Lcom/google/android/libraries/places/api/model/Review;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_26
    const-string v0, "Author attribution not provided for a Review result."

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzhe;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    throw v0

    :cond_27
    const-string v0, "Review rating not provided for a Review result."

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzhe;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    throw v0

    :cond_28
    :goto_1d
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setReviews(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzA()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    goto :goto_1f

    :cond_29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzapj;

    invoke-direct {v1, v4}, Lcom/google/android/libraries/places/internal/zzhe;->zzb(Lcom/google/android/libraries/places/internal/zzapj;)Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2a
    :goto_1f
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setSecondaryOpeningHours(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzZ()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzH()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesBeer(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzaa()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzI()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesBreakfast(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzab()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzJ()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesBrunch(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzac()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzK()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesDinner(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzad()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzL()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesLunch(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzae()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzM()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesVegetarianFood(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzaf()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzN()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesWine(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzag()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzO()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setTakeout(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzhe;->zza:Lcom/google/android/libraries/places/internal/zzhh;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzC()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzhh;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzah()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_20

    :cond_2b
    const/4 v2, 0x0

    :goto_20
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setUserRatingsTotal(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzai()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_21

    :cond_2c
    const/4 v2, 0x0

    :goto_21
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setUtcOffsetMinutes(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzaj()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zze()Lcom/google/android/libraries/places/internal/zzaki;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzaki;->zzf()Lcom/google/android/libraries/places/internal/zzaxp;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzhe;->zzf(Lcom/google/android/libraries/places/internal/zzaxp;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzaki;->zze()Lcom/google/android/libraries/places/internal/zzaxp;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzhe;->zzf(Lcom/google/android/libraries/places/internal/zzaxp;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_22

    :cond_2d
    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setViewport(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_23

    :cond_2e
    const/4 v6, 0x0

    :goto_23
    invoke-virtual {v0, v6}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setWebsiteUri(Landroid/net/Uri;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzf()Lcom/google/android/libraries/places/internal/zzaom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzaom;->zze()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzaps;->zzf()Lcom/google/android/libraries/places/internal/zzaom;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzaom;->zzd()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzhe;->zze(ZZ)Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setWheelchairAccessibleEntrance(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place$Builder;->build()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v0

    return-object v0
.end method
