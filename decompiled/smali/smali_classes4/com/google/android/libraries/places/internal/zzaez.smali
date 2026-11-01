.class public final Lcom/google/android/libraries/places/internal/zzaez;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaez;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/libraries/places/internal/zzaen;

.field private zzm:Lcom/google/android/libraries/places/internal/zzaeg;

.field private zzn:Lcom/google/android/libraries/places/internal/zzaeb;

.field private zzo:Lcom/google/android/libraries/places/internal/zzaip;

.field private zzp:Lcom/google/android/libraries/places/internal/zzaei;

.field private zzq:Lcom/google/android/libraries/places/internal/zzael;

.field private zzr:Lcom/google/android/libraries/places/internal/zzair;

.field private zzs:Lcom/google/android/libraries/places/internal/zzaiz;

.field private zzt:Lcom/google/android/libraries/places/internal/zzaiv;

.field private zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaez;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaez;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaez;->zzb:Lcom/google/android/libraries/places/internal/zzaez;

    const-class v1, Lcom/google/android/libraries/places/internal/zzaez;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzaeu;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaez;->zzb:Lcom/google/android/libraries/places/internal/zzaez;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaeu;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzaez;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaez;->zzb:Lcom/google/android/libraries/places/internal/zzaez;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzaez;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzi:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzaez;Lcom/google/android/libraries/places/internal/zzaen;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzl:Lcom/google/android/libraries/places/internal/zzaen;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzaez;Lcom/google/android/libraries/places/internal/zzaeb;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzn:Lcom/google/android/libraries/places/internal/zzaeb;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzaez;Lcom/google/android/libraries/places/internal/zzaei;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzp:Lcom/google/android/libraries/places/internal/zzaei;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzaez;Lcom/google/android/libraries/places/internal/zzaiz;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzs:Lcom/google/android/libraries/places/internal/zzaiz;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/places/internal/zzaez;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzg:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/places/internal/zzaez;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzh:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaez;->zzf:I

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaez;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzaez;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaez;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzaez;->zzb:Lcom/google/android/libraries/places/internal/zzaez;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzaez;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaez;->zzb:Lcom/google/android/libraries/places/internal/zzaez;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzaeu;-><init>(Lcom/google/android/libraries/places/internal/zzadu;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaez;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzaez;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0x15

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzf"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzg"

    aput-object v4, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaew;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v3

    const-string p2, "zzh"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaey;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    const-string p2, "zzj"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaev;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaet;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzn"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string p2, "zzq"

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-string p2, "zzr"

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const-string p2, "zzs"

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const-string p2, "zzt"

    const/16 p3, 0x12

    aput-object p2, p1, p3

    const-string p2, "zzu"

    const/16 p3, 0x13

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaex;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    const/16 p3, 0x14

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaez;->zzb:Lcom/google/android/libraries/places/internal/zzaez;

    const-string p3, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u1004\u0002\u0004\u180c\u0003\u0005\u180c\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1009\u0007\t\u1009\u0008\n\u1009\t\u000b\u1009\n\u000c\u1009\u000b\r\u1009\u000c\u000e\u1009\r\u000f\u180c\u000e"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
