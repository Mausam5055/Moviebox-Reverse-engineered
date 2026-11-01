.class public final Lcom/google/android/libraries/places/internal/zzakd;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzakd;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzakd;->zzb:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/libraries/places/internal/zzakd;
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzakd;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzakd;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzakd;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Ljava/util/concurrent/ThreadFactory;
    .locals 8

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzakd;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzakd;->zzb:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v7, Lcom/google/android/libraries/places/internal/zzakc;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzakc;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v7
.end method
