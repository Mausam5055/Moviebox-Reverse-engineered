.class public final Lcom/google/android/libraries/places/internal/zzarl;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzarl;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzarl;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzarl;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzarl;->zzb:Lcom/google/android/libraries/places/internal/zzarl;

    const-class v1, Lcom/google/android/libraries/places/internal/zzarl;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzarl;->zzf:I

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzark;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzarl;->zzb:Lcom/google/android/libraries/places/internal/zzarl;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzark;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzarl;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzarl;->zzb:Lcom/google/android/libraries/places/internal/zzarl;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzarl;Lcom/google/android/libraries/places/internal/zzaki;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzarl;->zzg:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzarl;->zzf:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 p2, 0x1

    const/4 p3, 0x3

    const/4 v0, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, p3, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzarl;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzarl;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzarl;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzarl;->zzb:Lcom/google/android/libraries/places/internal/zzarl;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzarl;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzarl;->zzb:Lcom/google/android/libraries/places/internal/zzarl;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzark;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzark;-><init>(Lcom/google/android/libraries/places/internal/zzard;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzarl;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzarl;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzg"

    const/4 v1, 0x0

    aput-object p3, p1, v1

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-class p2, Lcom/google/android/libraries/places/internal/zzaki;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/libraries/places/internal/zzarl;->zzb:Lcom/google/android/libraries/places/internal/zzarl;

    const-string p3, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001<\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
