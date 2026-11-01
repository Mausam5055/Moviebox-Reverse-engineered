.class public final Lcom/google/android/libraries/places/internal/zzahu;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzahu;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzA:Lcom/google/android/libraries/places/internal/zzaig;

.field private zzB:Lcom/google/android/libraries/places/internal/zzagp;

.field private zzC:B

.field private zzf:I

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/libraries/places/internal/zzafe;

.field private zzk:Lcom/google/android/libraries/places/internal/zzaij;

.field private zzl:Lcom/google/android/libraries/places/internal/zzagr;

.field private zzm:Lcom/google/android/libraries/places/internal/zzafo;

.field private zzn:Lcom/google/android/libraries/places/internal/zzagp;

.field private zzo:Lcom/google/android/libraries/places/internal/zzafq;

.field private zzp:Lcom/google/android/libraries/places/internal/zzagn;

.field private zzq:Lcom/google/android/libraries/places/internal/zzail;

.field private zzr:Lcom/google/android/libraries/places/internal/zzail;

.field private zzs:Lcom/google/android/libraries/places/internal/zzagt;

.field private zzt:Lcom/google/android/libraries/places/internal/zzaga;

.field private zzu:Lcom/google/android/libraries/places/internal/zzahw;

.field private zzv:Lcom/google/android/libraries/places/internal/zzahy;

.field private zzw:Lcom/google/android/libraries/places/internal/zzahj;

.field private zzx:Lcom/google/android/libraries/places/internal/zzagz;

.field private zzy:Lcom/google/android/libraries/places/internal/zzaia;

.field private zzz:Lcom/google/android/libraries/places/internal/zzaid;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzahu;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzahu;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzahu;->zzb:Lcom/google/android/libraries/places/internal/zzahu;

    const-class v1, Lcom/google/android/libraries/places/internal/zzahu;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzC:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzahs;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzahu;->zzb:Lcom/google/android/libraries/places/internal/zzahu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzahs;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzahu;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzahu;->zzb:Lcom/google/android/libraries/places/internal/zzahu;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzahu;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzahu;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzahu;Lcom/google/android/libraries/places/internal/zzagp;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzn:Lcom/google/android/libraries/places/internal/zzagp;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzahu;Lcom/google/android/libraries/places/internal/zzafq;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzo:Lcom/google/android/libraries/places/internal/zzafq;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzahu;Lcom/google/android/libraries/places/internal/zzaid;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzz:Lcom/google/android/libraries/places/internal/zzaid;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzahu;Lcom/google/android/libraries/places/internal/zzaig;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzA:Lcom/google/android/libraries/places/internal/zzaig;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzahu;Lcom/google/android/libraries/places/internal/zzagp;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzB:Lcom/google/android/libraries/places/internal/zzagp;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/libraries/places/internal/zzahu;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzg:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzf:I

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
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzC:B

    return-object v4

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzahu;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_3

    const-class p2, Lcom/google/android/libraries/places/internal/zzahu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzahu;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzahu;->zzb:Lcom/google/android/libraries/places/internal/zzahu;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzahu;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzahu;->zzb:Lcom/google/android/libraries/places/internal/zzahu;

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzahs;

    invoke-direct {p1, v4}, Lcom/google/android/libraries/places/internal/zzahs;-><init>(Lcom/google/android/libraries/places/internal/zzadu;)V

    return-object p1

    :cond_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzahu;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzahu;-><init>()V

    return-object p1

    :cond_7
    const/16 p1, 0x18

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaht;->zza:Lcom/google/android/libraries/places/internal/zzaty;

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

    const-string p2, "zzo"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzr"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzq"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string p2, "zzs"

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string p2, "zzt"

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-string p2, "zzu"

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const-string p2, "zzv"

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const-string p2, "zzw"

    const/16 p3, 0x12

    aput-object p2, p1, p3

    const-string p2, "zzx"

    const/16 p3, 0x13

    aput-object p2, p1, p3

    const-string p2, "zzy"

    const/16 p3, 0x14

    aput-object p2, p1, p3

    const-string p2, "zzz"

    const/16 p3, 0x15

    aput-object p2, p1, p3

    const-string p2, "zzA"

    const/16 p3, 0x16

    aput-object p2, p1, p3

    const-string p2, "zzB"

    const/16 p3, 0x17

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzahu;->zzb:Lcom/google/android/libraries/places/internal/zzahu;

    const-string p3, "\u0001\u0016\u0000\u0001\u0001\u0016\u0016\u0000\u0000\u0004\u0001\u180c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1009\u0003\u0005\u1409\u0004\u0006\u1409\u0005\u0007\u1409\u0006\u0008\u1009\u0007\t\u1409\u0008\n\u1009\t\u000b\u1009\u000b\u000c\u1009\n\r\u1009\u000c\u000e\u1009\r\u000f\u1009\u000e\u0010\u1009\u000f\u0011\u1009\u0010\u0012\u1009\u0011\u0013\u1009\u0012\u0014\u1009\u0013\u0015\u1009\u0014\u0016\u1009\u0015"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzahu;->zzC:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
