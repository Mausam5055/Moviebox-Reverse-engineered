.class public final Lcom/google/android/libraries/places/internal/zzdg;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzdg;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:F

.field private zzl:I

.field private zzm:I

.field private zzn:F

.field private zzo:I

.field private zzp:I

.field private zzq:F

.field private zzr:I

.field private zzs:F

.field private zzt:I

.field private zzu:I

.field private zzv:F

.field private zzw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzdg;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdg;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    const-class v1, Lcom/google/android/libraries/places/internal/zzdg;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzdg;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzdg;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzdf;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzdf;-><init>(Lcom/google/android/libraries/places/internal/zzde;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzdg;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzdg;-><init>()V

    return-object p1

    :cond_6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzcr;->zza()Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzcu;->zza()Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaxj;->zza()Lcom/google/android/libraries/places/internal/zzaty;

    move-result-object v5

    const/16 v6, 0x15

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "zzf"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "zzg"

    aput-object v7, v6, p2

    aput-object p1, v6, v3

    const-string p1, "zzh"

    aput-object p1, v6, v2

    aput-object v4, v6, v1

    const-string p1, "zzi"

    aput-object p1, v6, v0

    aput-object v5, v6, p3

    const-string p1, "zzj"

    const/4 p2, 0x7

    aput-object p1, v6, p2

    const-string p1, "zzk"

    const/16 p2, 0x8

    aput-object p1, v6, p2

    const-string p1, "zzl"

    const/16 p2, 0x9

    aput-object p1, v6, p2

    const-string p1, "zzm"

    const/16 p2, 0xa

    aput-object p1, v6, p2

    const-string p1, "zzn"

    const/16 p2, 0xb

    aput-object p1, v6, p2

    const-string p1, "zzo"

    const/16 p2, 0xc

    aput-object p1, v6, p2

    const-string p1, "zzp"

    const/16 p2, 0xd

    aput-object p1, v6, p2

    const-string p1, "zzq"

    const/16 p2, 0xe

    aput-object p1, v6, p2

    const-string p1, "zzr"

    const/16 p2, 0xf

    aput-object p1, v6, p2

    const-string p1, "zzs"

    const/16 p2, 0x10

    aput-object p1, v6, p2

    const-string p1, "zzt"

    const/16 p2, 0x11

    aput-object p1, v6, p2

    const-string p1, "zzu"

    const/16 p2, 0x12

    aput-object p1, v6, p2

    const-string p1, "zzv"

    const/16 p2, 0x13

    aput-object p1, v6, p2

    const-string p1, "zzw"

    const/16 p2, 0x14

    aput-object p1, v6, p2

    sget-object p1, Lcom/google/android/libraries/places/internal/zzdg;->zzb:Lcom/google/android/libraries/places/internal/zzdg;

    const-string p2, "\u0001\u0011\u0000\u0001\u0001\u0011\u0011\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u1004\u0003\u0005\u1001\u0004\u0006\u1004\u0005\u0007\u1004\u0006\u0008\u1001\u0007\t\u1004\u0008\n\u1004\t\u000b\u1001\n\u000c\u1004\u000b\r\u1001\u000c\u000e\u1004\r\u000f\u1004\u000e\u0010\u1001\u000f\u0011\u1004\u0010"

    invoke-static {p1, p2, v6}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
