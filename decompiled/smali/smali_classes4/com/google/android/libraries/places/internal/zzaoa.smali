.class public final Lcom/google/android/libraries/places/internal/zzaoa;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaoa;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaoa;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaoa;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaoa;->zzb:Lcom/google/android/libraries/places/internal/zzaoa;

    const-class v1, Lcom/google/android/libraries/places/internal/zzaoa;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaoa;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaoa;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaoa;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaoa;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzanz;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaoa;->zzb:Lcom/google/android/libraries/places/internal/zzaoa;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzanz;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzaoa;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaoa;->zzb:Lcom/google/android/libraries/places/internal/zzaoa;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzaoa;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaoa;->zzb:Lcom/google/android/libraries/places/internal/zzaoa;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzaoa;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaoa;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzaoa;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaoa;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzaoa;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaoa;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzaoa;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaoa;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 p2, 0x1

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 p2, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaoa;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzaoa;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaoa;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzaoa;->zzb:Lcom/google/android/libraries/places/internal/zzaoa;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzaoa;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaoa;->zzb:Lcom/google/android/libraries/places/internal/zzaoa;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzanz;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzanz;-><init>(Lcom/google/android/libraries/places/internal/zzany;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaoa;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzaoa;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzf"

    const/4 v2, 0x0

    aput-object p3, p1, v2

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaoa;->zzb:Lcom/google/android/libraries/places/internal/zzaoa;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
