.class public final Lcom/google/android/libraries/places/internal/zzben;
.super Ljava/lang/Object;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbeo;

.field private final zzb:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbeo;JLcom/google/android/libraries/places/internal/zzbem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzben;->zza:Lcom/google/android/libraries/places/internal/zzbeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/libraries/places/internal/zzben;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzben;->zza:Lcom/google/android/libraries/places/internal/zzbeo;

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzben;->zzb:J

    add-long v3, v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbeo;->zzc(Lcom/google/android/libraries/places/internal/zzbeo;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzben;->zza:Lcom/google/android/libraries/places/internal/zzbeo;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbeo;->zzd()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbeo;->zzb(Lcom/google/android/libraries/places/internal/zzbeo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v10, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v10, v2

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const-string v8, "backoff"

    const-string v9, "Increased {0} to {1}"

    const-string v7, "io.grpc.internal.AtomicBackoff$State"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
