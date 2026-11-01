.class final Lcom/google/android/libraries/places/internal/zzbkr;
.super Lcom/google/android/libraries/places/internal/zzbpo;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbcl;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbcf;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzayj;

.field final synthetic zzd:Lcom/google/android/libraries/places/internal/zzbpp;

.field final synthetic zze:Lcom/google/android/libraries/places/internal/zzbje;

.field final synthetic zzf:Lcom/google/android/libraries/places/internal/zzazj;

.field final synthetic zzg:Lcom/google/android/libraries/places/internal/zzbkt;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkt;Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbpp;Lcom/google/android/libraries/places/internal/zzbje;Lcom/google/android/libraries/places/internal/zzazj;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    iput-object v2, v13, Lcom/google/android/libraries/places/internal/zzbkr;->zza:Lcom/google/android/libraries/places/internal/zzbcl;

    move-object/from16 v3, p3

    iput-object v3, v13, Lcom/google/android/libraries/places/internal/zzbkr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    iput-object v1, v13, Lcom/google/android/libraries/places/internal/zzbkr;->zzc:Lcom/google/android/libraries/places/internal/zzayj;

    move-object/from16 v10, p5

    iput-object v10, v13, Lcom/google/android/libraries/places/internal/zzbkr;->zzd:Lcom/google/android/libraries/places/internal/zzbpp;

    move-object/from16 v11, p6

    iput-object v11, v13, Lcom/google/android/libraries/places/internal/zzbkr;->zze:Lcom/google/android/libraries/places/internal/zzbje;

    move-object/from16 v4, p7

    iput-object v4, v13, Lcom/google/android/libraries/places/internal/zzbkr;->zzf:Lcom/google/android/libraries/places/internal/zzazj;

    iput-object v0, v13, Lcom/google/android/libraries/places/internal/zzbkr;->zzg:Lcom/google/android/libraries/places/internal/zzbkt;

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbma;->zzC(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbox;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbma;->zze(Lcom/google/android/libraries/places/internal/zzbma;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbma;->zzd(Lcom/google/android/libraries/places/internal/zzbma;)J

    move-result-wide v8

    invoke-static {v4, v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzJ(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzayj;)Ljava/util/concurrent/Executor;

    move-result-object v12

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzs(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfw;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbfw;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/libraries/places/internal/zzbkt;->zza:Lcom/google/android/libraries/places/internal/zzbpn;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v5

    move-wide v4, v6

    move-wide v6, v8

    move-object v8, v12

    move-object v9, v14

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Lcom/google/android/libraries/places/internal/zzbpo;-><init>(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzbox;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzbpp;Lcom/google/android/libraries/places/internal/zzbje;Lcom/google/android/libraries/places/internal/zzbpn;)V

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkr;->zzg:Lcom/google/android/libraries/places/internal/zzbkt;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzz(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblz;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblz;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzb:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final zzb(Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayu;IZ)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkr;->zzc:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzayj;->zzf(Lcom/google/android/libraries/places/internal/zzayu;)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object p2

    invoke-static {p2, p1, p3, p4}, Lcom/google/android/libraries/places/internal/zzbjd;->zzk(Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbcf;IZ)[Lcom/google/android/libraries/places/internal/zzayx;

    move-result-object p3

    new-instance p4, Lcom/google/android/libraries/places/internal/zzbnr;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkr;->zza:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-direct {p4, v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbnr;-><init>(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkr;->zzg:Lcom/google/android/libraries/places/internal/zzbkt;

    invoke-static {v0, p4}, Lcom/google/android/libraries/places/internal/zzbkt;->zzb(Lcom/google/android/libraries/places/internal/zzbkt;Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbfu;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkr;->zzf:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazj;->zza()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkr;->zza:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-interface {p4, v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbfu;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbkr;->zzf:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbkr;->zzf:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    throw p1
.end method

.method final zzc()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkr;->zzg:Lcom/google/android/libraries/places/internal/zzbkt;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzz(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblz;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblz;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzb:Ljava/util/Collection;

    invoke-interface {v2, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzb:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzb:Ljava/util/Collection;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzd:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzu(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbhg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbhg;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
