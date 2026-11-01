.class public final Lcom/google/android/libraries/places/internal/zzbqh;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Ljava/util/Map;)Ljava/util/Set;
    .locals 3

    const-string v0, "nonFatalStatusCodes"

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzbqh;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const-class p0, Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdj;->zza:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "%s must not contain OK"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/places/internal/zzng;->zza(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method static zzb(Ljava/util/Map;)Ljava/util/Set;
    .locals 4

    const-string v0, "retryableStatusCodes"

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzbqh;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "%s is required in retry policy"

    invoke-static {v2, v3, v0}, Lcom/google/android/libraries/places/internal/zzng;->zza(ZLjava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zza:Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    const-string v2, "%s must not contain OK"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/places/internal/zzng;->zza(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;
    .locals 8

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbkg;->zzg(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class p1, Lcom/google/android/libraries/places/internal/zzbdj;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    const-string v7, "Status code %s is not integral"

    invoke-static {v4, v7, v1}, Lcom/google/android/libraries/places/internal/zzng;->zza(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzd(I)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbdj;->zza()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    if-ne v4, v2, :cond_2

    move v5, v6

    :cond_2
    const-string v2, "Status code %s is not valid"

    invoke-static {v5, v2, v1}, Lcom/google/android/libraries/places/internal/zzng;->zza(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbdj;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/libraries/places/internal/zznh;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not valid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/google/android/libraries/places/internal/zznh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p0, Lcom/google/android/libraries/places/internal/zznh;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not convert status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to Status.Code, because its type is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zznh;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
