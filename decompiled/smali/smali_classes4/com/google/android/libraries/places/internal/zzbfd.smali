.class final Lcom/google/android/libraries/places/internal/zzbfd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbfw;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbfw;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbfw;Lcom/google/android/libraries/places/internal/zzayf;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfd;->zza:Lcom/google/android/libraries/places/internal/zzbfw;

    const-string p1, "appExecutor"

    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbfd;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfd;->zza:Lcom/google/android/libraries/places/internal/zzbfw;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbfw;->close()V

    return-void
.end method

.method public final zza(Ljava/net/SocketAddress;Lcom/google/android/libraries/places/internal/zzbfv;Lcom/google/android/libraries/places/internal/zzaym;)Lcom/google/android/libraries/places/internal/zzbgf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfd;->zza:Lcom/google/android/libraries/places/internal/zzbfw;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbfc;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbfw;->zza(Ljava/net/SocketAddress;Lcom/google/android/libraries/places/internal/zzbfv;Lcom/google/android/libraries/places/internal/zzaym;)Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbfv;->zzg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbfc;-><init>(Lcom/google/android/libraries/places/internal/zzbfd;Lcom/google/android/libraries/places/internal/zzbgf;Ljava/lang/String;)V

    return-object v1
.end method

.method public final zzb()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfd;->zza:Lcom/google/android/libraries/places/internal/zzbfw;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbfw;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
