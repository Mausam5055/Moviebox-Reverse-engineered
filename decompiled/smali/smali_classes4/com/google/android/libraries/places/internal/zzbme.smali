.class final Lcom/google/android/libraries/places/internal/zzbme;
.super Ljava/lang/ref/WeakReference;


# static fields
.field private static final zza:Z

.field private static final zzb:Ljava/lang/RuntimeException;


# instance fields
.field private final zzc:Ljava/lang/ref/ReferenceQueue;

.field private final zzd:Ljava/util/concurrent/ConcurrentMap;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/ref/Reference;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.grpc.ManagedChannel.enableAllocationTracking"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/libraries/places/internal/zzbme;->zza:Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbme;->zzb:Ljava/lang/RuntimeException;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbmf;Lcom/google/android/libraries/places/internal/zzbbr;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbme;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/lang/ref/SoftReference;

    sget-boolean v0, Lcom/google/android/libraries/places/internal/zzbme;->zza:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ManagedChannel allocation site"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbme;->zzb:Ljava/lang/RuntimeException;

    :goto_0
    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbme;->zzf:Ljava/lang/ref/Reference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbme;->zze:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbme;->zzc:Ljava/lang/ref/ReferenceQueue;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbme;->zzd:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p4, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbme;->zza(Ljava/lang/ref/ReferenceQueue;)I

    return-void
.end method

.method static zza(Ljava/lang/ref/ReferenceQueue;)I
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbme;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbme;->zzf:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbme;->zzb()V

    iget-object v5, v3, Lcom/google/android/libraries/places/internal/zzbme;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/2addr v2, v0

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbmf;->zzc()Ljava/util/logging/Logger;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*~*~*~ Previous channel {0} was garbage collected without being shut down! ~*~*~*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Make sure to call shutdown()/shutdownNow()"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/logging/LogRecord;

    invoke-direct {v7, v5, v6}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbmf;->zzc()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbme;->zze:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v7, v5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbmf;->zzc()Ljava/util/logging/Logger;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final zzb()V
    .locals 1

    invoke-super {p0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbme;->zzd:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbme;->zzf:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbme;->zzb()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbme;->zzc:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbme;->zza(Ljava/lang/ref/ReferenceQueue;)I

    return-void
.end method
