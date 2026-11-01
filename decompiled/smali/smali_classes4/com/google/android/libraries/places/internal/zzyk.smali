.class public final Lcom/google/android/libraries/places/internal/zzyk;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzyk;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:Lcom/google/android/libraries/places/internal/zzyh;

.field private zzh:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzi:Lcom/google/android/libraries/places/internal/zzxt;

.field private zzj:Lcom/google/android/libraries/places/internal/zzxt;

.field private zzk:Lcom/google/android/libraries/places/internal/zzuf;

.field private zzl:I

.field private zzm:Lcom/google/android/libraries/places/internal/zzxv;

.field private zzn:Lcom/google/android/libraries/places/internal/zzxr;

.field private zzo:Lcom/google/android/libraries/places/internal/zzxo;

.field private zzp:Lcom/google/android/libraries/places/internal/zzxx;

.field private zzq:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzr:Lcom/google/android/libraries/places/internal/zzxm;

.field private zzs:Lcom/google/android/libraries/places/internal/zzxz;

.field private zzt:Lcom/google/android/libraries/places/internal/zzxb;

.field private zzu:Lcom/google/android/libraries/places/internal/zzzb;

.field private zzv:Lcom/google/android/libraries/places/internal/zzzd;

.field private zzw:Lcom/google/android/libraries/places/internal/zzys;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzyk;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzyk;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzyk;->zzb:Lcom/google/android/libraries/places/internal/zzyk;

    const-class v1, Lcom/google/android/libraries/places/internal/zzyk;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzyk;->zzh:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzyk;->zzq:Lcom/google/android/libraries/places/internal/zzauc;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzyk;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzyk;->zzb:Lcom/google/android/libraries/places/internal/zzyk;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzyk;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzyk;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzyk;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzyk;->zzb:Lcom/google/android/libraries/places/internal/zzyk;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzyk;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzyk;->zzb:Lcom/google/android/libraries/places/internal/zzyk;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzyi;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzyi;-><init>(Lcom/google/android/libraries/places/internal/zzwv;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzyk;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzyk;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0x15

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzf"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzg"

    aput-object v4, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-class p2, Lcom/google/android/libraries/places/internal/zzym;

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

    sget-object p2, Lcom/google/android/libraries/places/internal/zzyj;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzn"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzq"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/libraries/places/internal/zzyd;

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string p2, "zzr"

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-string p2, "zzs"

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const-string p2, "zzt"

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const-string p2, "zzu"

    const/16 p3, 0x12

    aput-object p2, p1, p3

    const-string p2, "zzv"

    const/16 p3, 0x13

    aput-object p2, p1, p3

    const-string p2, "zzw"

    const/16 p3, 0x14

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzyk;->zzb:Lcom/google/android/libraries/places/internal/zzyk;

    const-string p3, "\u0001\u0011\u0000\u0001\u0001\u0011\u0011\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u1009\u0002\u0005\u1009\u0003\u0006\u180c\u0004\u0007\u1009\u0005\u0008\u1009\u0006\t\u1009\u0007\n\u1009\u0008\u000b\u001b\u000c\u1009\t\r\u1009\n\u000e\u1009\u000b\u000f\u1009\u000c\u0010\u1009\r\u0011\u1009\u000e"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
