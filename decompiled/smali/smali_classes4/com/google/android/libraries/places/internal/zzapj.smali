.class public final Lcom/google/android/libraries/places/internal/zzapj;
.super Lcom/google/android/libraries/places/internal/zzatu;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzapj;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:Z

.field private zzh:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzi:Lcom/google/android/libraries/places/internal/zzauc;

.field private zzj:I

.field private zzk:Lcom/google/android/libraries/places/internal/zzauc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzapj;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzapj;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzapj;->zzb:Lcom/google/android/libraries/places/internal/zzapj;

    const-class v1, Lcom/google/android/libraries/places/internal/zzapj;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzapj;->zzh:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzapj;->zzi:Lcom/google/android/libraries/places/internal/zzauc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzax()Lcom/google/android/libraries/places/internal/zzauc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzapj;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzapj;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzapj;->zzb:Lcom/google/android/libraries/places/internal/zzapj;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzapj;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzapj;->zzb:Lcom/google/android/libraries/places/internal/zzapj;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzapg;
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzapj;->zzj:I

    sget-object v1, Lcom/google/android/libraries/places/internal/zzapg;->zza:Lcom/google/android/libraries/places/internal/zzapg;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzn:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzm:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzl:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzk:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzj:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzi:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzh:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzg:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzf:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zze:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzd:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzc:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzb:Lcom/google/android/libraries/places/internal/zzapg;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zza:Lcom/google/android/libraries/places/internal/zzapg;

    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzapg;->zzo:Lcom/google/android/libraries/places/internal/zzapg;

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzapj;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/libraries/places/internal/zzapj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzapj;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzapj;->zzb:Lcom/google/android/libraries/places/internal/zzapj;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    sput-object p1, Lcom/google/android/libraries/places/internal/zzapj;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzapj;->zzb:Lcom/google/android/libraries/places/internal/zzapj;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzapa;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzapa;-><init>(Lcom/google/android/libraries/places/internal/zzaok;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzapj;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzapj;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzf"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzg"

    aput-object v4, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-class p2, Lcom/google/android/libraries/places/internal/zzape;

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const-string p2, "zzj"

    aput-object p2, p1, v0

    const-string p2, "zzk"

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/libraries/places/internal/zzapi;

    const/4 p3, 0x7

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzapj;->zzb:Lcom/google/android/libraries/places/internal/zzapj;

    const-string p3, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0000\u0001\u1007\u0000\u0002\u001b\u0003\u021a\u0004\u000c\u0005\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zze()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzapj;->zzh:Lcom/google/android/libraries/places/internal/zzauc;

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzapj;->zzk:Lcom/google/android/libraries/places/internal/zzauc;

    return-object v0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzapj;->zzi:Lcom/google/android/libraries/places/internal/zzauc;

    return-object v0
.end method
