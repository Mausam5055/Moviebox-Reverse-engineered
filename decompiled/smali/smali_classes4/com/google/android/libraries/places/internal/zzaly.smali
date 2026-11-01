.class public final Lcom/google/android/libraries/places/internal/zzaly;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaly;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/libraries/places/internal/zzalv;

.field private zzi:Lcom/google/android/libraries/places/internal/zzalx;

.field private zzj:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzk:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:Lcom/google/android/libraries/places/internal/zzaxp;

.field private zzo:I

.field private zzp:Z

.field private zzq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaly;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaly;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaly;->zzb:Lcom/google/android/libraries/places/internal/zzaly;

    const-class v1, Lcom/google/android/libraries/places/internal/zzaly;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzg:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzq:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzalt;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaly;->zzb:Lcom/google/android/libraries/places/internal/zzaly;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzalt;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzaly;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaly;->zzb:Lcom/google/android/libraries/places/internal/zzaly;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzaly;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaly;->zzb:Lcom/google/android/libraries/places/internal/zzaly;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzaly;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzaly;Lcom/google/android/libraries/places/internal/zzalv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzh:Lcom/google/android/libraries/places/internal/zzalv;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzf:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzaly;Lcom/google/android/libraries/places/internal/zzalx;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzi:Lcom/google/android/libraries/places/internal/zzalx;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzf:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzaly;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzaly;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzaly;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzm:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/libraries/places/internal/zzaly;Lcom/google/android/libraries/places/internal/zzaxp;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzn:Lcom/google/android/libraries/places/internal/zzaxp;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzf:I

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/libraries/places/internal/zzaly;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzo:I

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/libraries/places/internal/zzaly;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaly;->zzq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 p2, 0x1

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaly;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzaly;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaly;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzaly;->zzb:Lcom/google/android/libraries/places/internal/zzaly;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzaly;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaly;->zzb:Lcom/google/android/libraries/places/internal/zzaly;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzalt;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzalt;-><init>(Lcom/google/android/libraries/places/internal/zzals;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaly;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzaly;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzf"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzg"

    aput-object v4, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const-string p2, "zzk"

    aput-object p2, p1, v0

    const-string p2, "zzl"

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzn"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzq"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaly;->zzb:Lcom/google/android/libraries/places/internal/zzaly;

    const-string p3, "\u0000\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0002\u0000\u0001\u0208\u0002\u1009\u0000\u0003\u1009\u0001\u0004\u021a\u0005\u021a\u0006\u0208\u0007\u0208\u0008\u1009\u0002\t\u0004\n\u0007\u000b\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
