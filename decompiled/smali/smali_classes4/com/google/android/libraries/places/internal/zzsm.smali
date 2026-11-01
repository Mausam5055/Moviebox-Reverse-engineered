.class public final Lcom/google/android/libraries/places/internal/zzsm;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzsm;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzA:Lcom/google/android/libraries/places/internal/zzbf;

.field private zzB:Lcom/google/android/libraries/places/internal/zzae;

.field private zzC:Lcom/google/android/libraries/places/internal/zzcg;

.field private zzD:Lcom/google/android/libraries/places/internal/zzbl;

.field private zzE:B

.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/android/libraries/places/internal/zzagi;

.field private zzi:Lcom/google/android/libraries/places/internal/zzus;

.field private zzj:Lcom/google/android/libraries/places/internal/zzajj;

.field private zzk:Lcom/google/android/libraries/places/internal/zzadd;

.field private zzl:Lcom/google/android/libraries/places/internal/zzyk;

.field private zzm:Lcom/google/android/libraries/places/internal/zzbw;

.field private zzn:Lcom/google/android/libraries/places/internal/zzum;

.field private zzo:Lcom/google/android/libraries/places/internal/zzts;

.field private zzp:Lcom/google/android/libraries/places/internal/zzvr;

.field private zzq:Lcom/google/android/libraries/places/internal/zzaaj;

.field private zzr:Lcom/google/android/libraries/places/internal/zzabb;

.field private zzs:Lcom/google/android/libraries/places/internal/zzabe;

.field private zzt:Lcom/google/android/libraries/places/internal/zzta;

.field private zzu:Lcom/google/android/libraries/places/internal/zzwl;

.field private zzv:Lcom/google/android/libraries/places/internal/zzc;

.field private zzw:Lcom/google/android/libraries/places/internal/zzan;

.field private zzx:Lcom/google/android/libraries/places/internal/zzav;

.field private zzy:Lcom/google/android/libraries/places/internal/zzcy;

.field private zzz:Lcom/google/android/libraries/places/internal/zzay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzsm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzsm;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzsm;->zzb:Lcom/google/android/libraries/places/internal/zzsm;

    const-class v1, Lcom/google/android/libraries/places/internal/zzsm;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzE:B

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzg:I

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzsk;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzsm;->zzb:Lcom/google/android/libraries/places/internal/zzsm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsk;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzsm;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzsm;->zzb:Lcom/google/android/libraries/places/internal/zzsm;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzsm;Lcom/google/android/libraries/places/internal/zzagi;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzh:Lcom/google/android/libraries/places/internal/zzagi;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzf:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzsm;I)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzg:I

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzf:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzf:I

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
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzE:B

    return-object v4

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzsm;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_3

    const-class p2, Lcom/google/android/libraries/places/internal/zzsm;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzsm;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzsm;->zzb:Lcom/google/android/libraries/places/internal/zzsm;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzsm;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzsm;->zzb:Lcom/google/android/libraries/places/internal/zzsm;

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsk;

    invoke-direct {p1, v4}, Lcom/google/android/libraries/places/internal/zzsk;-><init>(Lcom/google/android/libraries/places/internal/zzsj;)V

    return-object p1

    :cond_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsm;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzsm;-><init>()V

    return-object p1

    :cond_7
    const/16 p1, 0x1a

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzsl;->zza:Lcom/google/android/libraries/places/internal/zzaty;

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

    const-string p2, "zzC"

    const/16 p3, 0x18

    aput-object p2, p1, p3

    const-string p2, "zzD"

    const/16 p3, 0x19

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzsm;->zzb:Lcom/google/android/libraries/places/internal/zzsm;

    const-string p3, "\u0001\u0018\u0000\u0001\u0001\u0019\u0018\u0000\u0000\u0002\u0001\u180c\u0000\u0002\u1409\u0001\u0003\u1409\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1009\u0007\t\u1009\u0008\n\u1009\t\u000b\u1009\n\u000c\u1009\u000b\r\u1009\u000c\u000f\u1009\r\u0010\u1009\u000e\u0011\u1009\u000f\u0012\u1009\u0010\u0013\u1009\u0011\u0014\u1009\u0012\u0015\u1009\u0013\u0016\u1009\u0014\u0017\u1009\u0015\u0018\u1009\u0016\u0019\u1009\u0017"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzsm;->zzE:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
