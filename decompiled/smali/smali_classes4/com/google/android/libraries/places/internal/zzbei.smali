.class public abstract Lcom/google/android/libraries/places/internal/zzbei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbel;
.implements Lcom/google/android/libraries/places/internal/zzbmm;


# instance fields
.field private zzr:Lcom/google/android/libraries/places/internal/zzbgj;

.field private final zzs:Ljava/lang/Object;

.field private final zzt:Lcom/google/android/libraries/places/internal/zzbqo;

.field private final zzu:Lcom/google/android/libraries/places/internal/zzbqz;

.field private final zzv:Lcom/google/android/libraries/places/internal/zzbmq;

.field private zzw:I

.field private zzx:Z

.field private zzy:Z

.field private final zzz:I


# direct methods
.method protected constructor <init>(ILcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzs:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzt:Lcom/google/android/libraries/places/internal/zzbqo;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzu:Lcom/google/android/libraries/places/internal/zzbqz;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbmq;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbmq;-><init>(Lcom/google/android/libraries/places/internal/zzbmm;Lcom/google/android/libraries/places/internal/zzazo;ILcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzv:Lcom/google/android/libraries/places/internal/zzbmq;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzr:Lcom/google/android/libraries/places/internal/zzbgj;

    const p1, 0x8000

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzz:I

    return-void
.end method

.method private final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zzc()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zza()Lcom/google/android/libraries/places/internal/zzbqr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqr;->zzg()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final zzc()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzx:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzw:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzz:I

    if-ge v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzy:Z

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbei;)Lcom/google/android/libraries/places/internal/zzbgj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzr:Lcom/google/android/libraries/places/internal/zzbgj;

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/libraries/places/internal/zzbei;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzw:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzw:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/libraries/places/internal/zzbei;I)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzr:Lcom/google/android/libraries/places/internal/zzbgj;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbvr;->zza()Lcom/google/android/libraries/places/internal/zzbvq;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbeh;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbeh;-><init>(Lcom/google/android/libraries/places/internal/zzbei;Lcom/google/android/libraries/places/internal/zzbvq;I)V

    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/zzbel;->zzz(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic zzy(Lcom/google/android/libraries/places/internal/zzbei;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zzc()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract zza()Lcom/google/android/libraries/places/internal/zzbqr;
.end method

.method protected final zzm()Lcom/google/android/libraries/places/internal/zzbqz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzu:Lcom/google/android/libraries/places/internal/zzbqz;

    return-object v0
.end method

.method protected final zzp(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzr:Lcom/google/android/libraries/places/internal/zzbgj;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbgj;->close()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzr:Lcom/google/android/libraries/places/internal/zzbgj;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbgj;->zza()V

    return-void
.end method

.method protected final zzq(Lcom/google/android/libraries/places/internal/zzbnv;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzr:Lcom/google/android/libraries/places/internal/zzbgj;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbgj;->zzb(Lcom/google/android/libraries/places/internal/zzbnv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0, p1}, Lcom/google/android/libraries/places/internal/zzbmm;->zzF(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/libraries/places/internal/zzbqq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zza()Lcom/google/android/libraries/places/internal/zzbqr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqr;->zzf(Lcom/google/android/libraries/places/internal/zzbqq;)V

    return-void
.end method

.method public final zzs(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzx:Z

    const-string v2, "onStreamAllocated was not called, but it seems the stream is active"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzw:I

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzz:I

    sub-int p1, v1, p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzw:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    if-ge p1, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zzb()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final zzt()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zza()Lcom/google/android/libraries/places/internal/zzbqr;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzo(Z)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzx:Z

    xor-int/2addr v2, v1

    const-string v3, "Already allocated"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzx:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zzb()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected final zzu()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzs:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzy:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final zzv()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzv:Lcom/google/android/libraries/places/internal/zzbmq;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbmq;->zzf(Lcom/google/android/libraries/places/internal/zzbmm;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzv:Lcom/google/android/libraries/places/internal/zzbmq;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzr:Lcom/google/android/libraries/places/internal/zzbgj;

    return-void
.end method

.method protected final zzw(Lcom/google/android/libraries/places/internal/zzazo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzr:Lcom/google/android/libraries/places/internal/zzbgj;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbgj;->zzd(Lcom/google/android/libraries/places/internal/zzazo;)V

    return-void
.end method

.method final zzx(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbei;->zzr:Lcom/google/android/libraries/places/internal/zzbgj;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbgj;->zze(I)V

    return-void
.end method
