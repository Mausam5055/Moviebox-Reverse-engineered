.class public final Lcom/google/android/libraries/places/internal/zzanh;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzanh;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzanh;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzanh;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzanh;->zzb:Lcom/google/android/libraries/places/internal/zzanh;

    const-class v1, Lcom/google/android/libraries/places/internal/zzanh;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzanh;->zzf:I

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzanh;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzanh;->zzb:Lcom/google/android/libraries/places/internal/zzanh;

    return-object v0
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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzanh;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzanh;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzanh;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzanh;->zzb:Lcom/google/android/libraries/places/internal/zzanh;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzanh;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzanh;->zzb:Lcom/google/android/libraries/places/internal/zzanh;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzamy;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzamy;-><init>(Lcom/google/android/libraries/places/internal/zzamu;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzanh;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzanh;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzg"

    const/4 v2, 0x0

    aput-object p3, p1, v2

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-class p2, Lcom/google/android/libraries/places/internal/zzang;

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/libraries/places/internal/zzana;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/libraries/places/internal/zzanh;->zzb:Lcom/google/android/libraries/places/internal/zzanh;

    const-string p3, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
