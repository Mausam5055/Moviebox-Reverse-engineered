.class final Lcom/google/android/libraries/places/internal/zzbko;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbma;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbko;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbko;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzc()Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Uncaught exception in the SynchronizationContext. Panic!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "io.grpc.internal.ManagedChannelImpl$2"

    const-string v3, "uncaughtException"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbko;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbma;->zzW(Ljava/lang/Throwable;)V

    return-void
.end method
