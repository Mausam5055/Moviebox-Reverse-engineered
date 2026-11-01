.class final Lcom/google/android/libraries/places/internal/zzbmg;
.super Ljava/lang/Object;


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzayh;


# instance fields
.field final zzb:Ljava/lang/Long;

.field final zzc:Ljava/lang/Boolean;

.field final zzd:Ljava/lang/Integer;

.field final zze:Ljava/lang/Integer;

.field final zzf:Lcom/google/android/libraries/places/internal/zzbpp;

.field final zzg:Lcom/google/android/libraries/places/internal/zzbje;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.internal.ManagedChannelServiceConfig.MethodInfo"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzayh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzayh;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbmg;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;ZII)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "timeout"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    const-string v2, "waitForReady"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    const-string v2, "maxResponseMessageBytes"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, "maxInboundMessageSize %s exceeds bounds"

    invoke-static {v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v2, "maxRequestMessageBytes"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const-string v6, "maxOutboundMessageSize %s exceeds bounds"

    invoke-static {v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-eqz p2, :cond_4

    const-string v5, "retryPolicy"

    invoke-static {v1, v5}, Lcom/google/android/libraries/places/internal/zzbkg;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x5

    const-string v7, "maxAttempts must be greater than 1: %s"

    const/4 v8, 0x2

    const-string v9, "maxAttempts cannot be empty"

    const-string v10, "maxAttempts"

    const-wide/16 v11, 0x0

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_5
    invoke-static {v5, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v13, v8, :cond_6

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    invoke-static {v14, v7, v13}, Lcom/google/android/libraries/places/internal/zzmt;->zzh(ZLjava/lang/String;I)V

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    const-string v13, "initialBackoff"

    invoke-static {v5, v13}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "initialBackoff cannot be empty"

    invoke-static {v13, v14}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-lez v15, :cond_7

    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    const-string v2, "initialBackoffNanos must be greater than 0: %s"

    invoke-static {v15, v2, v13, v14}, Lcom/google/android/libraries/places/internal/zzmt;->zzi(ZLjava/lang/String;J)V

    const-string v2, "maxBackoff"

    invoke-static {v5, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v15, "maxBackoff cannot be empty"

    invoke-static {v2, v15}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v2, v3, v11

    if-lez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    const-string v15, "maxBackoff must be greater than 0: %s"

    invoke-static {v2, v15, v3, v4}, Lcom/google/android/libraries/places/internal/zzmt;->zzi(ZLjava/lang/String;J)V

    const-string v2, "backoffMultiplier"

    invoke-static {v5, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    const-string v15, "backoffMultiplier cannot be empty"

    invoke-static {v2, v15}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    const-wide/16 v17, 0x0

    cmpl-double v15, v21, v17

    if-lez v15, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    const-string v6, "backoffMultiplier must be greater than 0: %s"

    invoke-static {v15, v6, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "perAttemptRecvTimeout"

    invoke-static {v5, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v6, v17, v11

    if-ltz v6, :cond_b

    :cond_a
    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    const-string v15, "perAttemptRecvTimeout cannot be negative: %s"

    invoke-static {v6, v15, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbqh;->zzb(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v24

    if-nez v2, :cond_c

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    const-string v6, "retryableStatusCodes cannot be empty without perAttemptRecvTimeout"

    invoke-static {v5, v6}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbpp;

    move-object v15, v5

    move-wide/from16 v17, v13

    move-wide/from16 v19, v3

    move-object/from16 v23, v2

    invoke-direct/range {v15 .. v24}, Lcom/google/android/libraries/places/internal/zzbpp;-><init>(IJJDLjava/lang/Long;Ljava/util/Set;)V

    :goto_9
    iput-object v5, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    if-eqz p2, :cond_e

    const-string v2, "hedgingPolicy"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_a
    if-nez v1, :cond_f

    const/4 v2, 0x0

    goto :goto_d

    :cond_f
    invoke-static {v1, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v8, :cond_10

    const/4 v3, 0x1

    goto :goto_b

    :cond_10
    const/4 v3, 0x0

    :goto_b
    invoke-static {v3, v7, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzh(ZLjava/lang/String;I)V

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v3, "hedgingDelay"

    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "hedgingDelay cannot be empty"

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-ltz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_c

    :cond_11
    const/4 v5, 0x0

    :goto_c
    const-string v6, "hedgingDelay must not be negative: %s"

    invoke-static {v5, v6, v3, v4}, Lcom/google/android/libraries/places/internal/zzmt;->zzi(ZLjava/lang/String;J)V

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbje;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbqh;->zza(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/google/android/libraries/places/internal/zzbje;-><init>(IJLjava/util/Set;)V

    move-object v2, v5

    :goto_d
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbmg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbmg;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "timeoutNanos"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "waitForReady"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "maxInboundMessageSize"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "maxOutboundMessageSize"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "retryPolicy"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "hedgingPolicy"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
