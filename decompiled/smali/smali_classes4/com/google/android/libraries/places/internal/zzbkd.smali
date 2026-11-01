.class final Lcom/google/android/libraries/places/internal/zzbkd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbao;
.implements Lcom/google/android/libraries/places/internal/zzbqv;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbap;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbjw;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbfw;

.field private final zze:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzbah;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzbfg;

.field private final zzh:Lcom/google/android/libraries/places/internal/zzbfi;

.field private final zzi:Lcom/google/android/libraries/places/internal/zzaym;

.field private final zzj:Ljava/util/List;

.field private final zzk:Lcom/google/android/libraries/places/internal/zzbdw;

.field private final zzl:Lcom/google/android/libraries/places/internal/zzbjx;

.field private volatile zzm:Ljava/util/List;

.field private final zzn:Lcom/google/android/libraries/places/internal/zzna;

.field private zzo:Lcom/google/android/libraries/places/internal/zzbdv;

.field private zzp:Lcom/google/android/libraries/places/internal/zzbdv;

.field private zzq:Lcom/google/android/libraries/places/internal/zzbml;

.field private final zzr:Ljava/util/Collection;

.field private final zzs:Lcom/google/android/libraries/places/internal/zzbji;

.field private zzt:Lcom/google/android/libraries/places/internal/zzbgf;

.field private volatile zzu:Lcom/google/android/libraries/places/internal/zzbml;

.field private volatile zzv:Lcom/google/android/libraries/places/internal/zzazf;

.field private zzw:Lcom/google/android/libraries/places/internal/zzbdo;

.field private final zzx:Lcom/google/android/libraries/places/internal/zzbij;

.field private zzy:Lcom/google/android/libraries/places/internal/zzbik;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbij;Lcom/google/android/libraries/places/internal/zzbfw;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zznc;Lcom/google/android/libraries/places/internal/zzbdw;Lcom/google/android/libraries/places/internal/zzbjw;Lcom/google/android/libraries/places/internal/zzbah;Lcom/google/android/libraries/places/internal/zzbfg;Lcom/google/android/libraries/places/internal/zzbfi;Lcom/google/android/libraries/places/internal/zzbap;Lcom/google/android/libraries/places/internal/zzaym;Ljava/util/List;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzr:Ljava/util/Collection;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbjk;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/places/internal/zzbjk;-><init>(Lcom/google/android/libraries/places/internal/zzbkd;)V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzs:Lcom/google/android/libraries/places/internal/zzbji;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzazf;->zzb(Lcom/google/android/libraries/places/internal/zzaze;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzv:Lcom/google/android/libraries/places/internal/zzazf;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "addressGroups is empty"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    const-string v2, "addressGroups contains null entry"

    invoke-static {p1, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzI(Ljava/util/List;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzm:Ljava/util/List;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbjx;

    invoke-direct {v2, v1}, Lcom/google/android/libraries/places/internal/zzbjx;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzl:Lcom/google/android/libraries/places/internal/zzbjx;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzb:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzx:Lcom/google/android/libraries/places/internal/zzbij;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzd:Lcom/google/android/libraries/places/internal/zzbfw;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzna;->zzb()Lcom/google/android/libraries/places/internal/zzna;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzn:Lcom/google/android/libraries/places/internal/zzna;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzc:Lcom/google/android/libraries/places/internal/zzbjw;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzf:Lcom/google/android/libraries/places/internal/zzbah;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzg:Lcom/google/android/libraries/places/internal/zzbfg;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzh:Lcom/google/android/libraries/places/internal/zzbfi;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zza:Lcom/google/android/libraries/places/internal/zzbap;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzi:Lcom/google/android/libraries/places/internal/zzaym;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkd;->zzj:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzaze;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzazf;->zzb(Lcom/google/android/libraries/places/internal/zzaze;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzJ(Lcom/google/android/libraries/places/internal/zzazf;)V

    return-void
.end method

.method static bridge synthetic zzB(Lcom/google/android/libraries/places/internal/zzbkd;)V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjq;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbjq;-><init>(Lcom/google/android/libraries/places/internal/zzbkd;)V

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method static bridge synthetic zzC(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;Z)V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbjr;-><init>(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;Z)V

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method static bridge synthetic zzD(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzazf;->zzc(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzJ(Lcom/google/android/libraries/places/internal/zzazf;)V

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzy:Lcom/google/android/libraries/places/internal/zzbik;

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbik;

    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbik;-><init>()V

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzy:Lcom/google/android/libraries/places/internal/zzbik;

    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzy:Lcom/google/android/libraries/places/internal/zzbik;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbik;->zza()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzn:Lcom/google/android/libraries/places/internal/zzna;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10}, Lcom/google/android/libraries/places/internal/zzna;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    sub-long v8, v3, v5

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzi:Lcom/google/android/libraries/places/internal/zzaym;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzK(Lcom/google/android/libraries/places/internal/zzbdo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v4, v5, v0

    const-string p1, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    invoke-virtual {v3, v2, p1, v5}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzo:Lcom/google/android/libraries/places/internal/zzbdv;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string p1, "previous reconnectTask is not done"

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbjl;

    invoke-direct {v7, p0}, Lcom/google/android/libraries/places/internal/zzbjl;-><init>(Lcom/google/android/libraries/places/internal/zzbkd;)V

    iget-object v11, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/libraries/places/internal/zzbdw;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/libraries/places/internal/zzbdv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzo:Lcom/google/android/libraries/places/internal/zzbdv;

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/libraries/places/internal/zzbkd;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzo:Lcom/google/android/libraries/places/internal/zzbdv;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Should have no reconnectTask scheduled"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzl:Lcom/google/android/libraries/places/internal/zzbjx;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbjx;->zzf()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzn:Lcom/google/android/libraries/places/internal/zzna;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzna;->zzc()Lcom/google/android/libraries/places/internal/zzna;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzna;->zzd()Lcom/google/android/libraries/places/internal/zzna;

    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzl:Lcom/google/android/libraries/places/internal/zzbjx;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbjx;->zzb()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/libraries/places/internal/zzbaa;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbaa;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbaa;->zzd()Ljava/net/InetSocketAddress;

    move-result-object v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzl:Lcom/google/android/libraries/places/internal/zzbjx;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbjx;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v5

    sget-object v6, Lcom/google/android/libraries/places/internal/zzazs;->zza:Lcom/google/android/libraries/places/internal/zzayc;

    invoke-virtual {v5, v6}, Lcom/google/android/libraries/places/internal/zzaye;->zzc(Lcom/google/android/libraries/places/internal/zzayc;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbfv;

    invoke-direct {v7}, Lcom/google/android/libraries/places/internal/zzbfv;-><init>()V

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzb:Ljava/lang/String;

    :cond_3
    invoke-virtual {v7, v6}, Lcom/google/android/libraries/places/internal/zzbfv;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbfv;

    invoke-virtual {v7, v5}, Lcom/google/android/libraries/places/internal/zzbfv;->zzd(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbfv;

    invoke-virtual {v7, v4}, Lcom/google/android/libraries/places/internal/zzbfv;->zzf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbfv;

    invoke-virtual {v7, v3}, Lcom/google/android/libraries/places/internal/zzbfv;->zze(Lcom/google/android/libraries/places/internal/zzbaa;)Lcom/google/android/libraries/places/internal/zzbfv;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbkc;

    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbkc;-><init>()V

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zza:Lcom/google/android/libraries/places/internal/zzbap;

    iput-object v5, v3, Lcom/google/android/libraries/places/internal/zzbkc;->zza:Lcom/google/android/libraries/places/internal/zzbap;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzd:Lcom/google/android/libraries/places/internal/zzbfw;

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbjv;

    invoke-interface {v5, v2, v7, v3}, Lcom/google/android/libraries/places/internal/zzbfw;->zza(Ljava/net/SocketAddress;Lcom/google/android/libraries/places/internal/zzbfv;Lcom/google/android/libraries/places/internal/zzaym;)Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzg:Lcom/google/android/libraries/places/internal/zzbfg;

    invoke-direct {v6, v2, v5, v4}, Lcom/google/android/libraries/places/internal/zzbjv;-><init>(Lcom/google/android/libraries/places/internal/zzbgf;Lcom/google/android/libraries/places/internal/zzbfg;Lcom/google/android/libraries/places/internal/zzbju;)V

    invoke-interface {v6}, Lcom/google/android/libraries/places/internal/zzbau;->zzc()Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/libraries/places/internal/zzbkc;->zza:Lcom/google/android/libraries/places/internal/zzbap;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzf:Lcom/google/android/libraries/places/internal/zzbah;

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/places/internal/zzbah;->zzc(Lcom/google/android/libraries/places/internal/zzbao;)V

    iput-object v6, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzt:Lcom/google/android/libraries/places/internal/zzbgf;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzr:Ljava/util/Collection;

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbkb;

    invoke-direct {v2, p0, v6}, Lcom/google/android/libraries/places/internal/zzbkb;-><init>(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V

    invoke-interface {v6, v2}, Lcom/google/android/libraries/places/internal/zzbml;->zzj(Lcom/google/android/libraries/places/internal/zzbmk;)Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzi:Lcom/google/android/libraries/places/internal/zzaym;

    iget-object v2, v3, Lcom/google/android/libraries/places/internal/zzbkc;->zza:Lcom/google/android/libraries/places/internal/zzbap;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "Started transport {0}"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zzH(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbik;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzy:Lcom/google/android/libraries/places/internal/zzbik;

    return-void
.end method

.method private static zzI(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzJ(Lcom/google/android/libraries/places/internal/zzazf;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzv:Lcom/google/android/libraries/places/internal/zzazf;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzv:Lcom/google/android/libraries/places/internal/zzazf;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot transition out of SHUTDOWN to "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzv:Lcom/google/android/libraries/places/internal/zzazf;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzc:Lcom/google/android/libraries/places/internal/zzbjw;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzblv;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblv;->zza:Lcom/google/android/libraries/places/internal/zzbbl;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbl;->zza(Lcom/google/android/libraries/places/internal/zzazf;)V

    :cond_1
    return-void
.end method

.method private static final zzK(Lcom/google/android/libraries/places/internal/zzbdo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzj()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzj()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzaym;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzi:Lcom/google/android/libraries/places/internal/zzaym;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzv:Lcom/google/android/libraries/places/internal/zzazf;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbah;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzf:Lcom/google/android/libraries/places/internal/zzbah;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzw:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzp:Lcom/google/android/libraries/places/internal/zzbdv;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbgf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzt:Lcom/google/android/libraries/places/internal/zzbgf;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbji;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzs:Lcom/google/android/libraries/places/internal/zzbji;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzc:Lcom/google/android/libraries/places/internal/zzbjw;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzl:Lcom/google/android/libraries/places/internal/zzbjx;

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzu:Lcom/google/android/libraries/places/internal/zzbml;

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzq:Lcom/google/android/libraries/places/internal/zzbml;

    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzK(Lcom/google/android/libraries/places/internal/zzbdo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzr:Ljava/util/Collection;

    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzj:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzr(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzu:Lcom/google/android/libraries/places/internal/zzbml;

    return-void
.end method

.method static bridge synthetic zzt(Lcom/google/android/libraries/places/internal/zzbkd;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzm:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic zzu(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzt:Lcom/google/android/libraries/places/internal/zzbgf;

    return-void
.end method

.method static bridge synthetic zzv(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdv;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzo:Lcom/google/android/libraries/places/internal/zzbdv;

    return-void
.end method

.method static bridge synthetic zzw(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzp:Lcom/google/android/libraries/places/internal/zzbdv;

    return-void
.end method

.method static bridge synthetic zzx(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzq:Lcom/google/android/libraries/places/internal/zzbml;

    return-void
.end method

.method static bridge synthetic zzy(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzw:Lcom/google/android/libraries/places/internal/zzbdo;

    return-void
.end method

.method static bridge synthetic zzz(Lcom/google/android/libraries/places/internal/zzbkd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzo:Lcom/google/android/libraries/places/internal/zzbdv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zza()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzo:Lcom/google/android/libraries/places/internal/zzbdv;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzy:Lcom/google/android/libraries/places/internal/zzbik;

    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zza:Lcom/google/android/libraries/places/internal/zzbap;

    const-string v2, "logId"

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbap;->zza()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzmm;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "addressGroups"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzm:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzF(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbjp;-><init>(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method public final zzG(Ljava/util/List;)V
    .locals 2

    const-string v0, "newAddressGroups"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newAddressGroups contains null entry"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzI(Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "newAddressGroups is empty"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbjo;-><init>(Lcom/google/android/libraries/places/internal/zzbkd;Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zza:Lcom/google/android/libraries/places/internal/zzbap;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/libraries/places/internal/zzbfu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzu:Lcom/google/android/libraries/places/internal/zzbml;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkd;->zzk:Lcom/google/android/libraries/places/internal/zzbdw;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbjm;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbjm;-><init>(Lcom/google/android/libraries/places/internal/zzbkd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    const/4 v0, 0x0

    return-object v0
.end method
