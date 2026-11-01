.class public final Lcom/google/android/libraries/places/internal/zzdd;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzdd;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzA:I

.field private zzB:F

.field private zzC:I

.field private zzD:F

.field private zzE:F

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:F

.field private zzm:I

.field private zzn:I

.field private zzo:F

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:F

.field private zzu:F

.field private zzv:F

.field private zzw:I

.field private zzx:F

.field private zzy:I

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzdd;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdd;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzdd;->zzb:Lcom/google/android/libraries/places/internal/zzdd;

    const-class v1, Lcom/google/android/libraries/places/internal/zzdd;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzdd;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzdd;->zzb:Lcom/google/android/libraries/places/internal/zzdd;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdd;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzdd;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdd;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzdd;->zzb:Lcom/google/android/libraries/places/internal/zzdd;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzdd;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdd;->zzb:Lcom/google/android/libraries/places/internal/zzdd;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzda;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzda;-><init>(Lcom/google/android/libraries/places/internal/zzcz;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzdd;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzdd;-><init>()V

    return-object p1

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzcr;->zza()Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzcu;->zza()Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object v4

    const/16 v5, 0x1e

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "zzf"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "zzg"

    aput-object v6, v5, p2

    aput-object p1, v5, v3

    const-string p1, "zzh"

    aput-object p1, v5, v2

    aput-object v4, v5, v1

    const-string p1, "zzi"

    aput-object p1, v5, v0

    sget-object p1, Lcom/google/android/libraries/places/internal/zzdc;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p1, v5, p3

    const-string p1, "zzj"

    const/4 p2, 0x7

    aput-object p1, v5, p2

    sget-object p1, Lcom/google/android/libraries/places/internal/zzdb;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p2, 0x8

    aput-object p1, v5, p2

    const-string p1, "zzk"

    const/16 p2, 0x9

    aput-object p1, v5, p2

    const-string p1, "zzl"

    const/16 p2, 0xa

    aput-object p1, v5, p2

    const-string p1, "zzm"

    const/16 p2, 0xb

    aput-object p1, v5, p2

    const-string p1, "zzn"

    const/16 p2, 0xc

    aput-object p1, v5, p2

    const-string p1, "zzo"

    const/16 p2, 0xd

    aput-object p1, v5, p2

    const-string p1, "zzp"

    const/16 p2, 0xe

    aput-object p1, v5, p2

    const-string p1, "zzq"

    const/16 p2, 0xf

    aput-object p1, v5, p2

    const-string p1, "zzr"

    const/16 p2, 0x10

    aput-object p1, v5, p2

    const-string p1, "zzs"

    const/16 p2, 0x11

    aput-object p1, v5, p2

    const-string p1, "zzt"

    const/16 p2, 0x12

    aput-object p1, v5, p2

    const-string p1, "zzu"

    const/16 p2, 0x13

    aput-object p1, v5, p2

    const-string p1, "zzv"

    const/16 p2, 0x14

    aput-object p1, v5, p2

    const-string p1, "zzw"

    const/16 p2, 0x15

    aput-object p1, v5, p2

    const-string p1, "zzx"

    const/16 p2, 0x16

    aput-object p1, v5, p2

    const-string p1, "zzy"

    const/16 p2, 0x17

    aput-object p1, v5, p2

    const-string p1, "zzz"

    const/16 p2, 0x18

    aput-object p1, v5, p2

    const-string p1, "zzA"

    const/16 p2, 0x19

    aput-object p1, v5, p2

    const-string p1, "zzB"

    const/16 p2, 0x1a

    aput-object p1, v5, p2

    const-string p1, "zzC"

    const/16 p2, 0x1b

    aput-object p1, v5, p2

    const-string p1, "zzD"

    const/16 p2, 0x1c

    aput-object p1, v5, p2

    const-string p1, "zzE"

    const/16 p2, 0x1d

    aput-object p1, v5, p2

    sget-object p1, Lcom/google/android/libraries/places/internal/zzdd;->zzb:Lcom/google/android/libraries/places/internal/zzdd;

    const-string p2, "\u0001\u0019\u0000\u0001\u0001\u0019\u0019\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u1004\u0004\u0006\u1001\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1001\u0008\n\u1004\t\u000b\u1004\n\u000c\u1004\u000b\r\u1004\u000c\u000e\u1001\r\u000f\u1001\u000e\u0010\u1001\u000f\u0011\u1004\u0010\u0012\u1001\u0011\u0013\u1004\u0012\u0014\u1004\u0013\u0015\u1004\u0014\u0016\u1001\u0015\u0017\u1004\u0016\u0018\u1001\u0017\u0019\u1001\u0018"

    invoke-static {p1, p2, v5}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
