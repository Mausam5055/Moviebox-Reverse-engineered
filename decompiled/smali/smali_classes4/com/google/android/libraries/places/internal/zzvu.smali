.class public final Lcom/google/android/libraries/places/internal/zzvu;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzvu;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzvu;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzvu;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzvu;->zzb:Lcom/google/android/libraries/places/internal/zzvu;

    const-class v1, Lcom/google/android/libraries/places/internal/zzvu;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzvu;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzvu;->zzb:Lcom/google/android/libraries/places/internal/zzvu;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzvu;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzvu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzvu;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzvu;->zzb:Lcom/google/android/libraries/places/internal/zzvu;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzvu;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzvu;->zzb:Lcom/google/android/libraries/places/internal/zzvu;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzvt;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzvt;-><init>(Lcom/google/android/libraries/places/internal/zzvs;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzvu;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzvu;-><init>()V

    return-object p1

    :cond_6
    sget-object p1, Lcom/google/android/libraries/places/internal/zzvu;->zzb:Lcom/google/android/libraries/places/internal/zzvu;

    const-string p2, "\u0001\u0000"

    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
