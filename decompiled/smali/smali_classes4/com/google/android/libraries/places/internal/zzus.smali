.class public final Lcom/google/android/libraries/places/internal/zzus;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzus;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/android/libraries/places/internal/zzuu;

.field private zzi:Lcom/google/android/libraries/places/internal/zzuw;

.field private zzj:Lcom/google/android/libraries/places/internal/zzali;

.field private zzk:Lcom/google/android/libraries/places/internal/zzvc;

.field private zzl:Lcom/google/android/libraries/places/internal/zzvi;

.field private zzm:Lcom/google/android/libraries/places/internal/zzve;

.field private zzn:Lcom/google/android/libraries/places/internal/zzuy;

.field private zzo:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzus;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzus;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzus;->zzb:Lcom/google/android/libraries/places/internal/zzus;

    const-class v1, Lcom/google/android/libraries/places/internal/zzus;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzus;->zzo:B

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzus;->zzg:I

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzus;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzus;->zzb:Lcom/google/android/libraries/places/internal/zzus;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    const/4 v4, 0x0

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzus;->zzo:B

    return-object v4

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzus;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_3

    const-class p2, Lcom/google/android/libraries/places/internal/zzus;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzus;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzus;->zzb:Lcom/google/android/libraries/places/internal/zzus;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzus;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-object p1

    :cond_4
    sget-object p1, Lcom/google/android/libraries/places/internal/zzus;->zzb:Lcom/google/android/libraries/places/internal/zzus;

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzuq;

    invoke-direct {p1, v4}, Lcom/google/android/libraries/places/internal/zzuq;-><init>(Lcom/google/android/libraries/places/internal/zzup;)V

    return-object p1

    :cond_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzus;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzus;-><init>()V

    return-object p1

    :cond_7
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzur;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v5

    const-string p2, "zzh"

    aput-object p2, p1, v4

    const-string p2, "zzi"

    aput-object p2, p1, v3

    const-string p2, "zzj"

    aput-object p2, p1, v2

    const-string p2, "zzk"

    aput-object p2, p1, v1

    const-string p2, "zzl"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzn"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzus;->zzb:Lcom/google/android/libraries/places/internal/zzus;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0001\u0001\u180c\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1409\u0003\u0005\u1009\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1009\u0007"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzus;->zzo:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
