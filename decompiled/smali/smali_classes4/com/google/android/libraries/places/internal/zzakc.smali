.class final Lcom/google/android/libraries/places/internal/zzakc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/ThreadFactory;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic zzd:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzakc;->zza:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzakc;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzakc;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzakc;->zzd:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzakc;->zza:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzakc;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzakc;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzakc;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_1
    return-object p1
.end method
