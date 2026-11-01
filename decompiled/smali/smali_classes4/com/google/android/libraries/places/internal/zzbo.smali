.class public final Lcom/google/android/libraries/places/internal/zzbo;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaua;

.field private static final zze:Lcom/google/android/libraries/places/internal/zzbo;

.field private static volatile zzf:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzg:I

.field private zzh:Lcom/google/android/libraries/places/internal/zzatz;

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:J

.field private zzm:F

.field private zzn:F

.field private zzo:I

.field private zzp:Lcom/google/android/libraries/places/internal/zzbj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbm;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbo;->zzb:Lcom/google/android/libraries/places/internal/zzaua;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbo;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbo;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

    const-class v1, Lcom/google/android/libraries/places/internal/zzbo;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzau()Lcom/google/android/libraries/places/internal/zzatz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbo;->zzh:Lcom/google/android/libraries/places/internal/zzatz;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzbo;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbo;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzbo;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbo;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzbo;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbn;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzbn;-><init>(Lcom/google/android/libraries/places/internal/zzbg;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbo;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzbo;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzg"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzh"

    aput-object v4, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzas;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v3

    const-string v3, "zzi"

    aput-object v3, p1, v2

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbh;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object v2, p1, v1

    const-string v1, "zzj"

    aput-object v1, p1, v0

    aput-object v2, p1, p3

    const-string p3, "zzk"

    const/4 v0, 0x7

    aput-object p3, p1, v0

    const-string p3, "zzl"

    const/16 v0, 0x8

    aput-object p3, p1, v0

    const-string p3, "zzm"

    const/16 v0, 0x9

    aput-object p3, p1, v0

    const-string p3, "zzn"

    const/16 v0, 0xa

    aput-object p3, p1, v0

    const-string p3, "zzo"

    const/16 v0, 0xb

    aput-object p3, p1, v0

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001\u082c\u0002\u180c\u0000\u0003\u180c\u0001\u0004\u1004\u0002\u0005\u1002\u0003\u0006\u1001\u0004\u0007\u1001\u0005\u0008\u180c\u0006\t\u1009\u0007"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
