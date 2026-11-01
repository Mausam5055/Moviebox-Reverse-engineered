.class public final Lcom/google/android/libraries/places/internal/zzln;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzla;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzlq;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzlr;

.field private final zzd:Landroid/os/Handler;

.field private zze:Ljava/lang/Runnable;

.field private final zzf:Landroidx/lifecycle/b0;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzla;Lcom/google/android/libraries/places/internal/zzlq;Lcom/google/android/libraries/places/internal/zzlr;Lcom/google/android/libraries/places/internal/zzlm;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzln;->zzd:Landroid/os/Handler;

    new-instance p4, Landroidx/lifecycle/b0;

    invoke-direct {p4}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzln;->zzf:Landroidx/lifecycle/b0;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzln;->zza:Lcom/google/android/libraries/places/internal/zzla;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzln;->zzc:Lcom/google/android/libraries/places/internal/zzlr;

    return-void
.end method

.method private static zzn(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ApiException;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private final zzo(Lcom/google/android/libraries/places/internal/zzkv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzf:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzf:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static zzp(Lcom/google/android/gms/common/api/Status;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x2334

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p0

    const/16 v0, 0x2333

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected final onCleared()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zza:Lcom/google/android/libraries/places/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzla;->zzc()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzd:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzln;->zze:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzlq;->zzo()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzc:Lcom/google/android/libraries/places/internal/zzlr;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzlr;->zza(Lcom/google/android/libraries/places/internal/zzlq;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzf:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzlq;->zzp()V

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zzh(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzkv;->zzj(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzlq;->zzr()V

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzln;->zzn(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzln;->zzp(Lcom/google/android/gms/common/api/Status;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzkv;->zzq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzkv;->zzi(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzq()V

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zzn(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzlq;->zzs()V

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzln;->zzn(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzln;->zzp(Lcom/google/android/gms/common/api/Status;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzkv;->zzq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzkv;->zzm(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void
.end method

.method final synthetic zzd(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zza:Lcom/google/android/libraries/places/internal/zzla;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzla;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzlj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzlj;-><init>(Lcom/google/android/libraries/places/internal/zzln;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zze(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzln;->zzf:Landroidx/lifecycle/b0;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzkv;->zzo()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzlq;->zzu(I)V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzln;->zza:Lcom/google/android/libraries/places/internal/zzla;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzla;->zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzkv;->zzg()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzli;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzli;-><init>(Lcom/google/android/libraries/places/internal/zzln;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzg()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzlq;->zzv()V

    return-void
.end method

.method public final zzh()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzlq;->zzl()V

    return-void
.end method

.method public final zzi()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzlq;->zzm()V

    return-void
.end method

.method public final zzj()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzlq;->zzn()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzkv;->zzl()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void
.end method

.method public final zzk()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzlq;->zzw()V

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzln;->zzm(Ljava/lang/String;I)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zza:Lcom/google/android/libraries/places/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzla;->zzc()V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzln;->zzm(Ljava/lang/String;I)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzkv;->zzp()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void
.end method

.method public final zzm(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zzb:Lcom/google/android/libraries/places/internal/zzlq;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzt(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zze:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzln;->zzd:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzln;->zza:Lcom/google/android/libraries/places/internal/zzla;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzla;->zzc()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzkv;->zzk()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzlk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzlk;-><init>(Lcom/google/android/libraries/places/internal/zzln;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzln;->zze:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzln;->zzd:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzkv;->zzg()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzln;->zzo(Lcom/google/android/libraries/places/internal/zzkv;)V

    return-void
.end method
