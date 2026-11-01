.class Lcom/google/android/libraries/places/internal/zzbhy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbfr;


# instance fields
.field private volatile zza:Z

.field private zzb:Lcom/google/android/libraries/places/internal/zzbft;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbfr;

.field private zzd:Lcom/google/android/libraries/places/internal/zzbdo;

.field private zze:Ljava/util/List;

.field private zzf:Lcom/google/android/libraries/places/internal/zzbhx;

.field private zzg:J

.field private zzh:J

.field private zzi:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zze:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzi:Ljava/util/List;

    return-void
.end method

.method private final zza(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zza:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zze:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzb()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zze:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zze:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zza:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzf:Lcom/google/android/libraries/places/internal/zzbhx;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbhx;->zzb()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zze:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zze:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbhy;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbhy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbhy;->zzb()V

    return-void
.end method

.method private final zzi(Lcom/google/android/libraries/places/internal/zzbft;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzi:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzo(Lcom/google/android/libraries/places/internal/zzbft;)V

    return-void
.end method

.method private final zzq(Lcom/google/android/libraries/places/internal/zzbfr;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "realStream already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzr(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzh:J

    return-void
.end method


# virtual methods
.method public final zzam()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected zzc(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    return-void
.end method

.method final zze(Lcom/google/android/libraries/places/internal/zzbfr;)Ljava/lang/Runnable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbhy;->zzq(Lcom/google/android/libraries/places/internal/zzbfr;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zze:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zza:Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbhy;->zzi(Lcom/google/android/libraries/places/internal/zzbft;)V

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbho;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/places/internal/zzbho;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    if-eqz v0, :cond_1

    const-string v0, "buffered_nanos"

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzh:J

    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzg:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbjj;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbjj;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V

    goto :goto_0

    :cond_1
    const-string v0, "buffered_nanos"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzg:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbjj;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbjj;

    const-string v0, "waiting_for_connection"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbjj;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbjj;

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "May only be called after start"

    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    const-string v0, "reason"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbmy;->zza:Lcom/google/android/libraries/places/internal/zzbmy;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbhy;->zzq(Lcom/google/android/libraries/places/internal/zzbfr;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbhr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhr;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbhy;->zza(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbhy;->zzb()V

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbhy;->zzc(Lcom/google/android/libraries/places/internal/zzbdo;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzbft;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbhs;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbhs;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbhy;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/libraries/places/internal/zzazn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbhn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhn;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;Lcom/google/android/libraries/places/internal/zzazn;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzl(Lcom/google/android/libraries/places/internal/zzazq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbhk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhk;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;Lcom/google/android/libraries/places/internal/zzazq;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzm(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbhl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhl;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzn(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbhm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhm;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzo(Lcom/google/android/libraries/places/internal/zzbft;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zza:Z

    if-nez v1, :cond_1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbhx;

    invoke-direct {v2, p1}, Lcom/google/android/libraries/places/internal/zzbhx;-><init>(Lcom/google/android/libraries/places/internal/zzbft;)V

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzf:Lcom/google/android/libraries/places/internal/zzbhx;

    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzg:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbft;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbhy;->zzi(Lcom/google/android/libraries/places/internal/zzbft;)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zza:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzp()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zza:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzr()V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbhq;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbhq;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbhy;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbhi;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbhi;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzu(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "May only be called after start"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zza:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzu(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbhh;

    invoke-direct {p1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbhh;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;I)V

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbhy;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzv(Lcom/google/android/libraries/places/internal/zzazc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzi:Ljava/util/List;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbhj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhj;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;Lcom/google/android/libraries/places/internal/zzazc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzw(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzb:Lcom/google/android/libraries/places/internal/zzbft;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zza:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhy;->zzc:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqp;->zzw(Ljava/io/InputStream;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbhp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbhp;-><init>(Lcom/google/android/libraries/places/internal/zzbhy;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbhy;->zza(Ljava/lang/Runnable;)V

    return-void
.end method
