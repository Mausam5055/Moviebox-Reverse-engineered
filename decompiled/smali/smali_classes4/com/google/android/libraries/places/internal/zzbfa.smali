.class final Lcom/google/android/libraries/places/internal/zzbfa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbpq;


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbdw;

.field private zzd:Lcom/google/android/libraries/places/internal/zzbdv;

.field private final zze:Lcom/google/android/libraries/places/internal/zzbij;

.field private zzf:Lcom/google/android/libraries/places/internal/zzbik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbfa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbfa;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbij;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzbdw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zze:Lcom/google/android/libraries/places/internal/zzbij;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    return-void
.end method


# virtual methods
.method final synthetic zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzd:Lcom/google/android/libraries/places/internal/zzbdv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zza()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzf:Lcom/google/android/libraries/places/internal/zzbik;

    return-void
.end method

.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbez;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbez;-><init>(Lcom/google/android/libraries/places/internal/zzbfa;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzf:Lcom/google/android/libraries/places/internal/zzbik;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbik;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbik;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzf:Lcom/google/android/libraries/places/internal/zzbik;

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzd:Lcom/google/android/libraries/places/internal/zzbdv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzf:Lcom/google/android/libraries/places/internal/zzbik;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbik;->zza()J

    move-result-wide v7

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzc:Lcom/google/android/libraries/places/internal/zzbdw;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p1

    move-wide v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbdw;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/libraries/places/internal/zzbdv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfa;->zzd:Lcom/google/android/libraries/places/internal/zzbdv;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbfa;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v3, "schedule"

    const-string v4, "Scheduling DNS resolution backoff for {0}ns"

    const-string v2, "io.grpc.internal.BackoffPolicyRetryScheduler"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
