.class public final Lcom/google/android/libraries/places/internal/zzjj;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzjf;

.field private final zzb:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzjf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjj;->zza:Lcom/google/android/libraries/places/internal/zzjf;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjj;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;JLjava/lang/String;)Z
    .locals 2

    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzjj;->zzb:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p4, Landroid/os/HandlerThread;

    const-string v0, "timeoutHandlerThread"

    invoke-direct {p4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjj;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {v0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lcom/google/android/libraries/places/internal/zzjg;

    const-string v1, "Location timeout."

    invoke-direct {p4, p1, v1}, Lcom/google/android/libraries/places/internal/zzjg;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    invoke-virtual {v0, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjj;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/HandlerThread;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    move-result p1

    return p1
.end method
