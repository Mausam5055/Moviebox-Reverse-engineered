.class public final Lcom/google/android/libraries/places/internal/zzaxp;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaxp;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:D

.field private zzg:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaxp;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaxp;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaxp;->zzb:Lcom/google/android/libraries/places/internal/zzaxp;

    const-class v1, Lcom/google/android/libraries/places/internal/zzaxp;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    return-void
.end method

.method public static zzf()Lcom/google/android/libraries/places/internal/zzaxo;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaxp;->zzb:Lcom/google/android/libraries/places/internal/zzaxp;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaxo;

    return-object v0
.end method

.method static synthetic zzg()Lcom/google/android/libraries/places/internal/zzaxp;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaxp;->zzb:Lcom/google/android/libraries/places/internal/zzaxp;

    return-object v0
.end method

.method public static zzh()Lcom/google/android/libraries/places/internal/zzaxp;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaxp;->zzb:Lcom/google/android/libraries/places/internal/zzaxp;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzaxp;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzaxp;->zzf:D

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzaxp;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzaxp;->zzg:D

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x1

    const/4 p3, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_7

    if-eq p1, p3, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaxp;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzaxp;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaxp;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzaxp;->zzb:Lcom/google/android/libraries/places/internal/zzaxp;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzaxp;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-object p1

    :cond_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaxp;->zzb:Lcom/google/android/libraries/places/internal/zzaxp;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaxo;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzaxo;-><init>(Lcom/google/android/libraries/places/internal/zzaxn;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaxp;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzaxp;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzf"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "zzg"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaxp;->zzb:Lcom/google/android/libraries/places/internal/zzaxp;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzaxp;->zzf:D

    return-wide v0
.end method

.method public final zze()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzaxp;->zzg:D

    return-wide v0
.end method
