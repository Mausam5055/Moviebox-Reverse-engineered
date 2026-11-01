.class public final Lcom/google/android/libraries/places/internal/zzaxg;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzawl;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzawl;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzawl;

.field private static final zzd:Ljava/lang/ThreadLocal;

.field private static final zze:Ljava/lang/reflect/Method;

.field private static final zzf:Ljava/lang/reflect/Method;

.field private static final zzg:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzawl;->zzf()Lcom/google/android/libraries/places/internal/zzawk;

    move-result-object v0

    const-wide v1, -0xe7791f700L

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzawk;->zzb(J)Lcom/google/android/libraries/places/internal/zzawk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzawk;->zza(I)Lcom/google/android/libraries/places/internal/zzawk;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzawl;

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaxg;->zza:Lcom/google/android/libraries/places/internal/zzawl;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzawl;->zzf()Lcom/google/android/libraries/places/internal/zzawk;

    move-result-object v0

    const-wide v2, 0x3afff4417fL

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzawk;->zzb(J)Lcom/google/android/libraries/places/internal/zzawk;

    const v2, 0x3b9ac9ff

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzawk;->zza(I)Lcom/google/android/libraries/places/internal/zzawk;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzawl;

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaxg;->zzb:Lcom/google/android/libraries/places/internal/zzawl;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzawl;->zzf()Lcom/google/android/libraries/places/internal/zzawk;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzawk;->zzb(J)Lcom/google/android/libraries/places/internal/zzawk;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzawk;->zza(I)Lcom/google/android/libraries/places/internal/zzawk;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzawl;

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaxg;->zzc:Lcom/google/android/libraries/places/internal/zzawl;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaxf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaxf;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaxg;->zzd:Ljava/lang/ThreadLocal;

    const-string v0, "now"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzaxg;->zzb(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaxg;->zze:Ljava/lang/reflect/Method;

    const-string v0, "getEpochSecond"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzaxg;->zzb(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaxg;->zzf:Ljava/lang/reflect/Method;

    const-string v0, "getNano"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzaxg;->zzb(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaxg;->zzg:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzawl;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzawl;->zze()J

    move-result-wide v2

    const-wide v4, -0xe7791f700L

    cmp-long v4, v2, v4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzawl;->zzc()I

    move-result v5

    if-ltz v4, :cond_3

    const-wide v6, 0x3afff4417fL

    cmp-long v4, v2, v6

    if-gtz v4, :cond_3

    if-ltz v5, :cond_3

    const v4, 0x3b9aca00

    if-ge v5, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzawl;->zze()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzawl;->zzc()I

    move-result p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaxg;->zzd:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xf4240

    rem-int v3, p0, v2

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "%1$03d"

    invoke-static {v3, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    rem-int/lit16 v2, p0, 0x3e8

    if-nez v2, :cond_1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "%1$06d"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "%1$09d"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, "Z"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    const-string v0, "Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999]."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.time.Instant"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method
