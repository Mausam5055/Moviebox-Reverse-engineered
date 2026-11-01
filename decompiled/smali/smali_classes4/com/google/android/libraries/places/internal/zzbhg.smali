.class final Lcom/google/android/libraries/places/internal/zzbhg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbml;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbap;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbdw;

.field private zze:Ljava/lang/Runnable;

.field private zzf:Ljava/lang/Runnable;

.field private zzg:Ljava/lang/Runnable;

.field private zzh:Lcom/google/android/libraries/places/internal/zzbmk;

.field private zzi:Ljava/util/Collection;

.field private zzj:Lcom/google/android/libraries/places/internal/zzbdo;

.field private zzk:Lcom/google/android/libraries/places/internal/zzbbk;

.field private zzl:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/places/internal/zzbdw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/libraries/places/internal/zzbhg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbap;->zzb(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zza:Lcom/google/android/libraries/places/internal/zzbap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzb:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzi:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzc:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbhg;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbhg;)Lcom/google/android/libraries/places/internal/zzbdw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbhg;)Lcom/google/android/libraries/places/internal/zzbmk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzh:Lcom/google/android/libraries/places/internal/zzbmk;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbhg;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbhg;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzf:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbhg;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzg:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbhg;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzi:Ljava/util/Collection;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbhg;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzg:Ljava/lang/Runnable;

    return-void
.end method

.method private final zzo(Lcom/google/android/libraries/places/internal/zzbbf;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbhf;
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbhf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzbhf;-><init>(Lcom/google/android/libraries/places/internal/zzbhg;Lcom/google/android/libraries/places/internal/zzbbf;[Lcom/google/android/libraries/places/internal/zzayx;Lcom/google/android/libraries/places/internal/zzbhe;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzi:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzi:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zze:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    :cond_0
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 6

    :try_start_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnr;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbnr;-><init>(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;)V

    const-wide/16 p1, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzb:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz v3, :cond_0

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbil;

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-direct {p1, v3, p2, p4}, Lcom/google/android/libraries/places/internal/zzbil;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;[Lcom/google/android/libraries/places/internal/zzayx;)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzk:Lcom/google/android/libraries/places/internal/zzbbk;

    if-nez v3, :cond_1

    invoke-direct {p0, v0, p4}, Lcom/google/android/libraries/places/internal/zzbhg;->zzo(Lcom/google/android/libraries/places/internal/zzbbf;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbhf;

    move-result-object p1

    monitor-exit v2

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzl:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_2

    invoke-direct {p0, v0, p4}, Lcom/google/android/libraries/places/internal/zzbhg;->zzo(Lcom/google/android/libraries/places/internal/zzbbf;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbhf;

    move-result-object p1

    monitor-exit v2

    goto :goto_1

    :cond_2
    iget-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzl:J

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzbbk;->zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzayj;->zzo()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbjd;->zzc(Lcom/google/android/libraries/places/internal/zzbbe;Z)Lcom/google/android/libraries/places/internal/zzbfu;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbf;->zzc()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbf;->zzb()Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbf;->zza()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object p3

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbfu;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    move-object v1, v3

    goto :goto_0

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    throw p1
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zza:Lcom/google/android/libraries/places/internal/zzbap;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbhd;

    invoke-direct {v2, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhd;-><init>(Lcom/google/android/libraries/places/internal/zzbhg;Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzn()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzg:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzg:Ljava/lang/Runnable;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzj(Lcom/google/android/libraries/places/internal/zzbmk;)Ljava/lang/Runnable;
    .locals 1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzh:Lcom/google/android/libraries/places/internal/zzbmk;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbha;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbha;-><init>(Lcom/google/android/libraries/places/internal/zzbhg;Lcom/google/android/libraries/places/internal/zzbmk;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zze:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbhb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhb;-><init>(Lcom/google/android/libraries/places/internal/zzbhg;Lcom/google/android/libraries/places/internal/zzbmk;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzf:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbhc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhc;-><init>(Lcom/google/android/libraries/places/internal/zzbhg;Lcom/google/android/libraries/places/internal/zzbmk;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzg:Ljava/lang/Runnable;

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzm(Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzk:Lcom/google/android/libraries/places/internal/zzbbk;

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzl:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzl:J

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzn()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzi:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzbhf;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbhf;->zza(Lcom/google/android/libraries/places/internal/zzbhf;)Lcom/google/android/libraries/places/internal/zzbbf;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/libraries/places/internal/zzbbk;->zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbhf;->zza(Lcom/google/android/libraries/places/internal/zzbhf;)Lcom/google/android/libraries/places/internal/zzbbf;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzbbf;->zza()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzayj;->zzo()Z

    move-result v7

    invoke-static {v5, v7}, Lcom/google/android/libraries/places/internal/zzbjd;->zzc(Lcom/google/android/libraries/places/internal/zzbbe;Z)Lcom/google/android/libraries/places/internal/zzbfu;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzayj;->zzn()Ljava/util/concurrent/Executor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzayj;->zzn()Ljava/util/concurrent/Executor;

    move-result-object v7

    :cond_1
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzbhf;->zzb(Lcom/google/android/libraries/places/internal/zzbhf;Lcom/google/android/libraries/places/internal/zzbfu;)Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v7, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzn()Z

    move-result v1

    if-nez v1, :cond_5

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzi:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzi:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzi:Ljava/util/Collection;

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzn()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzg:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzg:Ljava/lang/Runnable;

    :cond_7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_8
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final zzn()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhg;->zzi:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
