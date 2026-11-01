.class final Lcom/google/android/libraries/places/internal/zzbof;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zze(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    const-string p2, "Uncaught exception in the SynchronizationContext. Re-thrown."

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbdq;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw p2
.end method
