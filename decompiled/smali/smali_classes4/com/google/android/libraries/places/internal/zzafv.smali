.class public final Lcom/google/android/libraries/places/internal/zzafv;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzafv;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:Z

.field private zzt:I

.field private zzu:I

.field private zzv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzafv;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzafv;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    const-class v1, Lcom/google/android/libraries/places/internal/zzafv;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzh:I

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzafs;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzafs;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzafv;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzafv;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzi:Z

    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzafv;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzj:Z

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzafv;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzk:Z

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzl:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzm:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzn:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzo:I

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzp:I

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzq:I

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzr:I

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/libraries/places/internal/zzafv;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzs:Z

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzt:I

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzg:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/libraries/places/internal/zzafv;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzh:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafv;->zzf:I

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzafv;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzafv;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzafv;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzafv;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzafs;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzafs;-><init>(Lcom/google/android/libraries/places/internal/zzadu;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzafv;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzafv;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzf"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzg"

    aput-object v4, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzafu;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v3

    const-string p2, "zzh"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzafr;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    const-string p2, "zzj"

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzn"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzq"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzr"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string p2, "zzs"

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string p2, "zzt"

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const-string p2, "zzu"

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const-string p2, "zzv"

    const/16 p3, 0x12

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaft;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p3, 0x13

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzafv;->zzb:Lcom/google/android/libraries/places/internal/zzafv;

    const-string p3, "\u0001\u0010\u0000\u0001\u0001\u0011\u0010\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u100b\u0005\u0007\u100b\u0006\u0008\u100b\u0007\n\u100b\t\u000b\u100b\n\u000c\u100b\u000b\r\u1007\u000c\u000e\u100b\r\u000f\u100b\u0008\u0010\u100b\u000e\u0011\u180c\u000f"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
