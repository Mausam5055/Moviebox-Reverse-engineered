.class final Lcom/google/android/libraries/places/internal/zzbie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbih;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbcr;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbih;Lcom/google/android/libraries/places/internal/zzbcr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "savedListener"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbie;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzk()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const-string v2, "run"

    const-string v3, "io.grpc.internal.DnsNameResolver$Resolve"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzk()Ljava/util/logging/Logger;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbih;->zzj(Lcom/google/android/libraries/places/internal/zzbih;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Attempting DNS resolution of "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v3, v2, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzbih;->zzg(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzazs;

    move-result-object v6

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbct;->zzc()Lcom/google/android/libraries/places/internal/zzbcs;

    move-result-object v7

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzk()Ljava/util/logging/Logger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzk()Ljava/util/logging/Logger;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using proxy address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v3, v2, v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/libraries/places/internal/zzbcs;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbcs;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    invoke-virtual {v1, v5}, Lcom/google/android/libraries/places/internal/zzbih;->zzi(Z)Lcom/google/android/libraries/places/internal/zzbib;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbcr;->zza(Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbih;->zzh(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbid;

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/places/internal/zzbid;-><init>(Lcom/google/android/libraries/places/internal/zzbie;Z)V

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void

    :cond_4
    :try_start_1
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzc(Lcom/google/android/libraries/places/internal/zzbib;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzc(Lcom/google/android/libraries/places/internal/zzbib;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/libraries/places/internal/zzbcs;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbcs;

    :cond_5
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zza(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zza(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/libraries/places/internal/zzbcs;->zzc(Lcom/google/android/libraries/places/internal/zzbcp;)Lcom/google/android/libraries/places/internal/zzbcs;

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbcs;->zzd()Lcom/google/android/libraries/places/internal/zzbct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbcr;->zzb(Lcom/google/android/libraries/places/internal/zzbct;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbie;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzbih;->zzj(Lcom/google/android/libraries/places/internal/zzbih;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to resolve host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzbcr;->zza(Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v4, :cond_7

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v5

    :goto_4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbih;->zzh(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbid;

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/places/internal/zzbid;-><init>(Lcom/google/android/libraries/places/internal/zzbie;Z)V

    goto :goto_1

    :goto_5
    if-eqz v4, :cond_8

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    move v0, v5

    :goto_6
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbih;->zzh(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbid;

    invoke-direct {v3, p0, v0}, Lcom/google/android/libraries/places/internal/zzbid;-><init>(Lcom/google/android/libraries/places/internal/zzbie;Z)V

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    throw v1
.end method
