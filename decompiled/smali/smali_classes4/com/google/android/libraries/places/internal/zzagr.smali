.class public final Lcom/google/android/libraries/places/internal/zzagr;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzagr;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:Lcom/google/android/libraries/places/internal/zzwd;

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzagr;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzagr;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzagr;->zzb:Lcom/google/android/libraries/places/internal/zzagr;

    const-class v1, Lcom/google/android/libraries/places/internal/zzagr;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzagr;->zzh:B

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzagr;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzagr;->zzb:Lcom/google/android/libraries/places/internal/zzagr;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzagr;->zzh:B

    return-object v2

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzagr;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_3

    const-class p2, Lcom/google/android/libraries/places/internal/zzagr;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzagr;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzagr;->zzb:Lcom/google/android/libraries/places/internal/zzagr;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzagr;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzagr;->zzb:Lcom/google/android/libraries/places/internal/zzagr;

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzagq;

    invoke-direct {p1, v2}, Lcom/google/android/libraries/places/internal/zzagq;-><init>(Lcom/google/android/libraries/places/internal/zzadu;)V

    return-object p1

    :cond_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzagr;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzagr;-><init>()V

    return-object p1

    :cond_7
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzagr;->zzb:Lcom/google/android/libraries/places/internal/zzagr;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u1409\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzagr;->zzh:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
