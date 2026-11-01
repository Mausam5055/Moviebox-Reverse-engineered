.class public final Lcom/google/android/libraries/places/internal/zzagi;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzagi;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzA:Lcom/google/android/libraries/places/internal/zzafy;

.field private zzB:Lcom/google/android/libraries/places/internal/zzafm;

.field private zzC:Lcom/google/android/libraries/places/internal/zzaep;

.field private zzD:Lcom/google/android/libraries/places/internal/zzajc;

.field private zzE:Z

.field private zzF:Ljava/lang/String;

.field private zzG:Lcom/google/android/libraries/places/internal/zzaez;

.field private zzH:Z

.field private zzI:Ljava/lang/String;

.field private zzJ:I

.field private zzK:Ljava/lang/String;

.field private zzL:Ljava/lang/String;

.field private zzM:I

.field private zzN:Ljava/lang/String;

.field private zzO:I

.field private zzP:I

.field private zzQ:B

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:Lcom/google/android/libraries/places/internal/zzst;

.field private zzk:Lcom/google/android/libraries/places/internal/zzwd;

.field private zzl:I

.field private zzm:F

.field private zzn:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzo:Lcom/google/android/libraries/places/internal/zzahu;

.field private zzp:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzq:Lcom/google/android/libraries/places/internal/zzafc;

.field private zzr:Lcom/google/android/libraries/places/internal/zzafj;

.field private zzs:Lcom/google/android/libraries/places/internal/zzahm;

.field private zzt:Lcom/google/android/libraries/places/internal/zzagw;

.field private zzu:Lcom/google/android/libraries/places/internal/zzahf;

.field private zzv:Lcom/google/android/libraries/places/internal/zzahb;

.field private zzw:Lcom/google/android/libraries/places/internal/zzahr;

.field private zzx:Lcom/google/android/libraries/places/internal/zzafv;

.field private zzy:Lcom/google/android/libraries/places/internal/zzagk;

.field private zzz:Lcom/google/android/libraries/places/internal/zzahh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzagi;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzagi;->zzb:Lcom/google/android/libraries/places/internal/zzagi;

    const-class v1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzQ:B

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzi:I

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzn:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzp:Lcom/google/android/libraries/places/internal/zzauc;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzF:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzI:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzK:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzN:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzagb;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzagi;->zzb:Lcom/google/android/libraries/places/internal/zzagi;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzagb;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzagi;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzagi;->zzb:Lcom/google/android/libraries/places/internal/zzagi;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzagi;Lcom/google/android/libraries/places/internal/zzahu;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzo:Lcom/google/android/libraries/places/internal/zzahu;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzagi;Lcom/google/android/libraries/places/internal/zzahm;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzs:Lcom/google/android/libraries/places/internal/zzahm;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzagi;Lcom/google/android/libraries/places/internal/zzagw;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzt:Lcom/google/android/libraries/places/internal/zzagw;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzagi;Lcom/google/android/libraries/places/internal/zzst;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzj:Lcom/google/android/libraries/places/internal/zzst;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzagi;Lcom/google/android/libraries/places/internal/zzafv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzx:Lcom/google/android/libraries/places/internal/zzafv;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzagi;Lcom/google/android/libraries/places/internal/zzaez;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzG:Lcom/google/android/libraries/places/internal/zzaez;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzagi;Z)V
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzH:Z

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/libraries/places/internal/zzagi;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzI:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/libraries/places/internal/zzagi;Ljava/lang/String;)V
    .locals 1

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    const/high16 v0, 0x8000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    const-string p1, "3.5.0"

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzK:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/libraries/places/internal/zzagi;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzN:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/libraries/places/internal/zzagi;I)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzP:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzg:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzg:I

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/libraries/places/internal/zzagi;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzi:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/libraries/places/internal/zzagi;I)V
    .locals 1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzM:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    const/high16 v0, 0x20000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/libraries/places/internal/zzagi;I)V
    .locals 1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzO:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzf:I

    return-void
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
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzQ:B

    return-object v4

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzagi;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_3

    const-class p2, Lcom/google/android/libraries/places/internal/zzagi;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzagi;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzagi;->zzb:Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzagi;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzagi;->zzb:Lcom/google/android/libraries/places/internal/zzagi;

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzagb;

    invoke-direct {p1, v4}, Lcom/google/android/libraries/places/internal/zzagb;-><init>(Lcom/google/android/libraries/places/internal/zzadu;)V

    return-object p1

    :cond_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzagi;-><init>()V

    return-object p1

    :cond_7
    const/16 p1, 0x2d

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const-string p2, "zzi"

    aput-object p2, p1, v5

    sget-object p2, Lcom/google/android/libraries/places/internal/zzagd;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v4

    const-string p2, "zzj"

    aput-object p2, p1, v3

    const-string p2, "zzk"

    aput-object p2, p1, v2

    const-string p2, "zzn"

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/libraries/places/internal/zzajg;

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/libraries/places/internal/zzafc;

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzq"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzr"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzagc;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-string p2, "zzE"

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const-string p2, "zzs"

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const-string p2, "zzF"

    const/16 p3, 0x12

    aput-object p2, p1, p3

    const-string p2, "zzt"

    const/16 p3, 0x13

    aput-object p2, p1, p3

    const-string p2, "zzu"

    const/16 p3, 0x14

    aput-object p2, p1, p3

    const-string p2, "zzv"

    const/16 p3, 0x15

    aput-object p2, p1, p3

    const-string p2, "zzw"

    const/16 p3, 0x16

    aput-object p2, p1, p3

    const-string p2, "zzx"

    const/16 p3, 0x17

    aput-object p2, p1, p3

    const-string p2, "zzy"

    const/16 p3, 0x18

    aput-object p2, p1, p3

    const-string p2, "zzz"

    const/16 p3, 0x19

    aput-object p2, p1, p3

    const-string p2, "zzA"

    const/16 p3, 0x1a

    aput-object p2, p1, p3

    const-string p2, "zzB"

    const/16 p3, 0x1b

    aput-object p2, p1, p3

    const-string p2, "zzC"

    const/16 p3, 0x1c

    aput-object p2, p1, p3

    const-string p2, "zzG"

    const/16 p3, 0x1d

    aput-object p2, p1, p3

    const-string p2, "zzh"

    const/16 p3, 0x1e

    aput-object p2, p1, p3

    const-string p2, "zzD"

    const/16 p3, 0x1f

    aput-object p2, p1, p3

    const-string p2, "zzH"

    const/16 p3, 0x20

    aput-object p2, p1, p3

    const-string p2, "zzI"

    const/16 p3, 0x21

    aput-object p2, p1, p3

    const-string p2, "zzJ"

    const/16 p3, 0x22

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzage;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p3, 0x23

    aput-object p2, p1, p3

    const-string p2, "zzK"

    const/16 p3, 0x24

    aput-object p2, p1, p3

    const-string p2, "zzL"

    const/16 p3, 0x25

    aput-object p2, p1, p3

    const-string p2, "zzM"

    const/16 p3, 0x26

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzagh;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p3, 0x27

    aput-object p2, p1, p3

    const-string p2, "zzN"

    const/16 p3, 0x28

    aput-object p2, p1, p3

    const-string p2, "zzO"

    const/16 p3, 0x29

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzagg;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p3, 0x2a

    aput-object p2, p1, p3

    const-string p2, "zzP"

    const/16 p3, 0x2b

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzagf;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p3, 0x2c

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzagi;->zzb:Lcom/google/android/libraries/places/internal/zzagi;

    const-string p3, "\u0001#\u0000\u0002\u0001##\u0000\u0002\u0003\u0001\u180c\u0001\u0002\u1009\u0002\u0003\u1409\u0003\u0004\u001b\u0005\u1409\u0006\u0006\u001b\u0007\u1009\u0007\u0008\u1409\u0008\t\u180c\u0004\n\u1001\u0005\u000b\u1007\u0015\u000c\u1009\t\r\u1008\u0016\u000e\u1009\n\u000f\u1009\u000b\u0010\u1009\u000c\u0011\u1009\r\u0012\u1009\u000e\u0013\u1009\u000f\u0014\u1009\u0010\u0015\u1009\u0011\u0016\u1009\u0012\u0017\u1009\u0013\u0018\u1009\u0017\u0019\u1004\u0000\u001a\u1009\u0014\u001b\u1007\u0018\u001c\u1008\u0019\u001d\u180c\u001a\u001e\u1008\u001b\u001f\u1008\u001c \u180c\u001d!\u1008\u001e\"\u180c\u001f#\u180c "

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzagi;->zzQ:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
