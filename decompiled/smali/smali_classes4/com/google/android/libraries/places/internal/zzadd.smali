.class public final Lcom/google/android/libraries/places/internal/zzadd;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzadd;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:Z

.field private zzl:Lcom/google/android/libraries/places/internal/zzatz;

.field private zzm:I

.field private zzn:Lcom/google/android/libraries/places/internal/zzacj;

.field private zzo:Lcom/google/android/libraries/places/internal/zzacz;

.field private zzp:Lcom/google/android/libraries/places/internal/zzabk;

.field private zzq:Lcom/google/android/libraries/places/internal/zzact;

.field private zzr:Lcom/google/android/libraries/places/internal/zzacp;

.field private zzs:Lcom/google/android/libraries/places/internal/zzacv;

.field private zzt:Lcom/google/android/libraries/places/internal/zzabn;

.field private zzu:Lcom/google/android/libraries/places/internal/zzabs;

.field private zzv:Lcom/google/android/libraries/places/internal/zzadk;

.field private zzw:Lcom/google/android/libraries/places/internal/zzadr;

.field private zzx:Lcom/google/android/libraries/places/internal/zzacb;

.field private zzy:Lcom/google/android/libraries/places/internal/zzabx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzadd;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzadd;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzadd;

    const-class v1, Lcom/google/android/libraries/places/internal/zzadd;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzau()Lcom/google/android/libraries/places/internal/zzatz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzl:Lcom/google/android/libraries/places/internal/zzatz;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzadd;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzadd;

    return-object v0
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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzadd;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzadd;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzadd;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzadd;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzadd;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzadd;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzada;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzada;-><init>(Lcom/google/android/libraries/places/internal/zzabf;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzadd;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzadd;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0x16

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzf"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzh"

    aput-object v4, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzadb;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v3

    const-string p2, "zzi"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzadc;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v1

    const-string p2, "zzj"

    aput-object p2, p1, v0

    const-string p2, "zzn"

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzq"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzr"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzs"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string p2, "zzm"

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

    const-string p2, "zzg"

    const/16 p3, 0x13

    aput-object p2, p1, p3

    const-string p2, "zzx"

    const/16 p3, 0x14

    aput-object p2, p1, p3

    const-string p2, "zzy"

    const/16 p3, 0x15

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzadd;

    const-string p3, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0001\u0000\u0001\u180c\u0001\u0002\u180c\u0002\u0003\u1004\u0003\u0004\u1009\u0006\u0005\u1009\u0007\u0006\u1009\u0008\u0007\u1009\t\u0008\u1007\u0004\t\u1009\n\n\u1009\u000b\u000b\u0016\u000c\u1004\u0005\r\u1009\u000c\u000e\u1009\r\u000f\u1009\u000e\u0010\u1009\u000f\u0011\u1004\u0000\u0012\u1009\u0010\u0013\u1009\u0011"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
