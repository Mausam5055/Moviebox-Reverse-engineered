.class public final Lcom/google/android/libraries/places/internal/zzaqz;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaua;

.field private static final zze:Lcom/google/android/libraries/places/internal/zzaqz;

.field private static volatile zzf:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzk:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzl:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzm:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzn:I

.field private zzo:Lcom/google/android/libraries/places/internal/zzaqy;

.field private zzp:I

.field private zzq:Lcom/google/android/libraries/places/internal/zzaqn;

.field private zzr:Z

.field private zzs:D

.field private zzt:Lcom/google/android/libraries/places/internal/zzatz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaqt;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaqt;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaqz;->zzb:Lcom/google/android/libraries/places/internal/zzaua;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaqz;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaqz;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaqz;->zze:Lcom/google/android/libraries/places/internal/zzaqz;

    const-class v1, Lcom/google/android/libraries/places/internal/zzaqz;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzl:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzm:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzau()Lcom/google/android/libraries/places/internal/zzatz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzt:Lcom/google/android/libraries/places/internal/zzatz;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzaqu;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaqz;->zze:Lcom/google/android/libraries/places/internal/zzaqz;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaqu;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzaqz;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaqz;->zze:Lcom/google/android/libraries/places/internal/zzaqz;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzaqz;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaqz;->zze:Lcom/google/android/libraries/places/internal/zzaqz;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzaqz;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzaqz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzaqz;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzj:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zzart;->zzam(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzaqz;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zzart;->zzam(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzaqz;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzl:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzl:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzl:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zzart;->zzam(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzaqz;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzm:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzauc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzay(Lcom/google/android/libraries/places/internal/zzauc;)Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzm:Lcom/google/android/libraries/places/internal/zzauc;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzm:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zzart;->zzam(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/libraries/places/internal/zzaqz;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzn:I

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/libraries/places/internal/zzaqz;Lcom/google/android/libraries/places/internal/zzaqy;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzo:Lcom/google/android/libraries/places/internal/zzaqy;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzg:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzg:I

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/libraries/places/internal/zzaqz;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaqz;->zzp:I

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaqz;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzaqz;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaqz;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzaqz;->zze:Lcom/google/android/libraries/places/internal/zzaqz;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzaqz;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaqz;->zze:Lcom/google/android/libraries/places/internal/zzaqz;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaqu;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzaqu;-><init>(Lcom/google/android/libraries/places/internal/zzaqt;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaqz;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzaqz;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzg"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzh"

    aput-object v4, p1, p2

    const-string p2, "zzi"

    aput-object p2, p1, v3

    const-string p2, "zzj"

    aput-object p2, p1, v2

    const-string p2, "zzk"

    aput-object p2, p1, v1

    const-string p2, "zzl"

    aput-object p2, p1, v0

    const-string p2, "zzm"

    aput-object p2, p1, p3

    const-string p2, "zzn"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzq"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzr"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzs"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzt"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaqz;->zze:Lcom/google/android/libraries/places/internal/zzaqz;

    const-string p3, "\u0000\r\u0000\u0001\u0001\r\r\u0000\u0005\u0000\u0001\u0208\u0002\u0208\u0003\u021a\u0004\u021a\u0005\u021a\u0006\u021a\u0007\u0004\u0008\u1009\u0000\t\u000c\n\u1009\u0001\u000b\u0007\u000c\u0000\r,"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
