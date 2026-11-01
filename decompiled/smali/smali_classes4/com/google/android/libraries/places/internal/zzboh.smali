.class final Lcom/google/android/libraries/places/internal/zzboh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/Collection;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbpm;

.field final synthetic zzc:Ljava/util/concurrent/Future;

.field final synthetic zzd:Z

.field final synthetic zze:Ljava/util/concurrent/Future;

.field final synthetic zzf:Lcom/google/android/libraries/places/internal/zzbpo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpo;Ljava/util/Collection;Lcom/google/android/libraries/places/internal/zzbpm;Ljava/util/concurrent/Future;ZLjava/util/concurrent/Future;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzboh;->zza:Ljava/util/Collection;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzb:Lcom/google/android/libraries/places/internal/zzbpm;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzc:Ljava/util/concurrent/Future;

    iput-boolean p5, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzd:Z

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzboh;->zze:Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzf:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboh;->zza:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbpm;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzb:Lcom/google/android/libraries/places/internal/zzbpm;

    if-eq v1, v2, :cond_0

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpm;->zza:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbpo;->zzx()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzc:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzd:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzf:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzO(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzf:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzL(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbog;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/places/internal/zzbog;-><init>(Lcom/google/android/libraries/places/internal/zzboh;)V

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboh;->zze:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboh;->zzf:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzc()V

    return-void
.end method
