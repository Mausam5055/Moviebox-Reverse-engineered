.class public final Lcom/google/android/libraries/places/internal/zzbdv;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbdt;

.field private final zzb:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbdt;Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/libraries/places/internal/zzbdu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbdv;->zza:Lcom/google/android/libraries/places/internal/zzbdt;

    const-string p1, "future"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbdv;->zzb:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdv;->zza:Lcom/google/android/libraries/places/internal/zzbdt;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/zzbdt;->zzb:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdv;->zzb:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public final zzb()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdv;->zza:Lcom/google/android/libraries/places/internal/zzbdt;

    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/zzbdt;->zzc:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/libraries/places/internal/zzbdt;->zzb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
