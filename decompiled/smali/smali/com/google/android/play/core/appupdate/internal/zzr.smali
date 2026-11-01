.class final Lcom/google/android/play/core/appupdate/internal/zzr;
.super Lcom/google/android/play/core/appupdate/internal/zzn;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/appupdate/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/internal/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->e(Lcom/google/android/play/core/appupdate/internal/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->g(Lcom/google/android/play/core/appupdate/internal/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->g(Lcom/google/android/play/core/appupdate/internal/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->d(Lcom/google/android/play/core/appupdate/internal/h;)Lcom/google/android/play/core/appupdate/internal/f;

    move-result-object v0

    const-string v2, "Leaving the connection open for other ongoing calls."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/play/core/appupdate/internal/f;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->c(Lcom/google/android/play/core/appupdate/internal/h;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->d(Lcom/google/android/play/core/appupdate/internal/h;)Lcom/google/android/play/core/appupdate/internal/f;

    move-result-object v2

    const-string v4, "Unbind from service."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/play/core/appupdate/internal/f;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->a(Lcom/google/android/play/core/appupdate/internal/h;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->b(Lcom/google/android/play/core/appupdate/internal/h;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {v0, v3}, Lcom/google/android/play/core/appupdate/internal/h;->i(Lcom/google/android/play/core/appupdate/internal/h;Z)V

    invoke-static {v0, v0}, Lcom/google/android/play/core/appupdate/internal/h;->j(Lcom/google/android/play/core/appupdate/internal/h;Landroid/os/IInterface;)V

    invoke-static {v0, v0}, Lcom/google/android/play/core/appupdate/internal/h;->h(Lcom/google/android/play/core/appupdate/internal/h;Landroid/content/ServiceConnection;)V

    :cond_2
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->l(Lcom/google/android/play/core/appupdate/internal/h;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
