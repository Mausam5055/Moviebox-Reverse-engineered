.class public final Lcom/google/android/libraries/places/internal/zzbeq;
.super Ljava/lang/Object;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbey;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbbd;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbbm;

.field private zzd:Lcom/google/android/libraries/places/internal/zzbbo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbey;Lcom/google/android/libraries/places/internal/zzbbd;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zza:Lcom/google/android/libraries/places/internal/zzbey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbey;->zzb(Lcom/google/android/libraries/places/internal/zzbey;)Lcom/google/android/libraries/places/internal/zzbbq;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbey;->zzd(Lcom/google/android/libraries/places/internal/zzbey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbbq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbbo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzd:Lcom/google/android/libraries/places/internal/zzbbo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzbbb;->zza(Lcom/google/android/libraries/places/internal/zzbbd;)Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbey;->zzd(Lcom/google/android/libraries/places/internal/zzbey;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find policy \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzbbm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    return-object v0
.end method

.method final zzb(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzd()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbqg;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zza:Lcom/google/android/libraries/places/internal/zzbey;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbey;->zzd(Lcom/google/android/libraries/places/internal/zzbey;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "using default policy"

    invoke-static {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzbey;->zza(Lcom/google/android/libraries/places/internal/zzbey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbbo;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/zzbex; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbqg;

    invoke-direct {v5, v3, v4}, Lcom/google/android/libraries/places/internal/zzbqg;-><init>(Lcom/google/android/libraries/places/internal/zzbbo;Ljava/lang/Object;)V

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbet;

    invoke-direct {v2, p1}, Lcom/google/android/libraries/places/internal/zzbet;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zze()V

    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzd:Lcom/google/android/libraries/places/internal/zzbbo;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbev;

    invoke-direct {p1, v4}, Lcom/google/android/libraries/places/internal/zzbev;-><init>(Lcom/google/android/libraries/places/internal/zzbeu;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p1

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzd:Lcom/google/android/libraries/places/internal/zzbbo;

    if-eqz v5, :cond_1

    iget-object v6, v3, Lcom/google/android/libraries/places/internal/zzbqg;->zza:Lcom/google/android/libraries/places/internal/zzbbo;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbbo;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzbbo;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    sget-object v6, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbes;

    invoke-direct {v7, v4}, Lcom/google/android/libraries/places/internal/zzbes;-><init>(Lcom/google/android/libraries/places/internal/zzber;)V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbbm;->zze()V

    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbqg;->zza:Lcom/google/android/libraries/places/internal/zzbbo;

    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzd:Lcom/google/android/libraries/places/internal/zzbbo;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzbbb;->zza(Lcom/google/android/libraries/places/internal/zzbbd;)Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    check-cast v4, Lcom/google/android/libraries/places/internal/zzblg;

    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbma;->zzg(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzaym;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v5, v7, v0

    aput-object v6, v7, v2

    const-string v5, "Load balancer changed from {0} to {1}"

    invoke-virtual {v4, v1, v5, v7}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v3, Lcom/google/android/libraries/places/internal/zzbqg;->zzb:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzb:Lcom/google/android/libraries/places/internal/zzbbd;

    check-cast v3, Lcom/google/android/libraries/places/internal/zzblg;

    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbma;->zzg(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzaym;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const-string v0, "Load-balancing config: {0}"

    invoke-virtual {v3, v2, v0, v4}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbi;->zzb()Lcom/google/android/libraries/places/internal/zzbbg;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbbg;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbbg;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/zzbbg;->zzb(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbbg;

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzbbg;->zzc(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbbg;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbbg;->zzd()Lcom/google/android/libraries/places/internal/zzbbi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zza(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    return-object p1
.end method

.method final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbm;->zze()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbeq;->zzc:Lcom/google/android/libraries/places/internal/zzbbm;

    return-void
.end method
