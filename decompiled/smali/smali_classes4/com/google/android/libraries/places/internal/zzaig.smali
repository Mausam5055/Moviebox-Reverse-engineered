.class public final Lcom/google/android/libraries/places/internal/zzaig;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaig;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzi:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzj:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzk:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzl:I

.field private zzm:Lcom/google/android/libraries/places/internal/zzaho;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaig;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaig;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaig;->zzb:Lcom/google/android/libraries/places/internal/zzaig;

    const-class v1, Lcom/google/android/libraries/places/internal/zzaig;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzh:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzi:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzaie;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaig;->zzb:Lcom/google/android/libraries/places/internal/zzaig;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaie;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzaig;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaig;->zzb:Lcom/google/android/libraries/places/internal/zzaig;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzaig;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzh:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzh:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzh:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zzart;->zzam(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzaig;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzi:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzi:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzi:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zzart;->zzam(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzaig;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zzart;->zzam(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzaig;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zzart;->zzam(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzaig;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzl:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzaig;Lcom/google/android/libraries/places/internal/zzaho;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzm:Lcom/google/android/libraries/places/internal/zzaho;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzf:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzaig;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzg:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaig;->zzf:I

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaig;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzaig;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaig;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzaig;->zzb:Lcom/google/android/libraries/places/internal/zzaig;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzaig;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaig;->zzb:Lcom/google/android/libraries/places/internal/zzaig;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaie;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzaie;-><init>(Lcom/google/android/libraries/places/internal/zzadu;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaig;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzaig;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzf"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzg"

    aput-object v4, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaif;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v3

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const-string p2, "zzj"

    aput-object p2, p1, v0

    const-string p2, "zzk"

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaig;->zzb:Lcom/google/android/libraries/places/internal/zzaig;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001\u180c\u0000\u0002\u001a\u0003\u001a\u0004\u001a\u0005\u001a\u0006\u1004\u0001\u0007\u1009\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
