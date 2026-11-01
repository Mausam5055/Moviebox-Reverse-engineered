.class public abstract Lcom/google/android/libraries/places/internal/zzbvk;
.super Lcom/google/android/libraries/places/internal/zzbbm;


# static fields
.field private static final zzi:Ljava/util/logging/Logger;


# instance fields
.field protected zzf:Z

.field protected final zzg:Lcom/google/android/libraries/places/internal/zzbbo;

.field protected zzh:Lcom/google/android/libraries/places/internal/zzaze;

.field private final zzj:Ljava/util/Map;

.field private final zzk:Lcom/google/android/libraries/places/internal/zzbbd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbvk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzbbd;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbm;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnq;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbnq;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzg:Lcom/google/android/libraries/places/internal/zzbbo;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzk:Lcom/google/android/libraries/places/internal/zzbbd;

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "<init>"

    const-string v2, "Created"

    const-string v3, "io.grpc.util.MultiChildLoadBalancer"

    invoke-virtual {p1, v0, v3, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbvk;)Lcom/google/android/libraries/places/internal/zzbbd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzk:Lcom/google/android/libraries/places/internal/zzbbd;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbvk;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic zzk()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzf:Z

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "io.grpc.util.MultiChildLoadBalancer"

    const-string v5, "acceptResolvedAddressesInternal"

    const-string v6, "Received resolution result: {0}"

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzazs;

    new-instance v12, Lcom/google/android/libraries/places/internal/zzbvj;

    invoke-direct {v12, v3}, Lcom/google/android/libraries/places/internal/zzbvj;-><init>(Lcom/google/android/libraries/places/internal/zzazs;)V

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbvi;

    if-eqz v3, :cond_0

    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbbc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbe;->zzc()Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/google/android/libraries/places/internal/zzbbc;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbvi;

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzg:Lcom/google/android/libraries/places/internal/zzbbo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    move-object v5, p0

    move-object v6, v12

    invoke-direct/range {v4 .. v11}, Lcom/google/android/libraries/places/internal/zzbvi;-><init>(Lcom/google/android/libraries/places/internal/zzbvk;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbbo;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbbk;Lcom/google/android/libraries/places/internal/zzbbi;Z)V

    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NameResolver returned no usable address. "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbvk;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    goto/16 :goto_7

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbvi;->zzm()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbvi;->zzc()Lcom/google/android/libraries/places/internal/zzbbo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzbvi;->zzi(Lcom/google/android/libraries/places/internal/zzbbo;)V

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/zzbvi;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Lcom/google/android/libraries/places/internal/zzazs;

    if-eqz v6, :cond_8

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbvj;

    move-object v7, v4

    check-cast v7, Lcom/google/android/libraries/places/internal/zzazs;

    invoke-direct {v6, v7}, Lcom/google/android/libraries/places/internal/zzbvj;-><init>(Lcom/google/android/libraries/places/internal/zzazs;)V

    goto :goto_4

    :cond_8
    instance-of v6, v4, Lcom/google/android/libraries/places/internal/zzbvj;

    const-string v7, "key is wrong type"

    invoke-static {v6, v7}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    move-object v6, v4

    check-cast v6, Lcom/google/android/libraries/places/internal/zzbvj;

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/libraries/places/internal/zzazs;

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbvj;

    invoke-direct {v9, v8}, Lcom/google/android/libraries/places/internal/zzbvj;-><init>(Lcom/google/android/libraries/places/internal/zzazs;)V

    invoke-virtual {v6, v9}, Lcom/google/android/libraries/places/internal/zzbvj;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_a
    move-object v8, v3

    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, " no longer present in load balancer children"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzc()Lcom/google/android/libraries/places/internal/zzbbg;

    move-result-object v4

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzbbg;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbbg;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaye;->zza()Lcom/google/android/libraries/places/internal/zzayb;

    move-result-object v6

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbbm;->zzd:Lcom/google/android/libraries/places/internal/zzayc;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzayb;->zzc()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzbbg;->zzb(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbbg;

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/zzbbg;->zzc(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbbg;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbbg;->zzd()Lcom/google/android/libraries/places/internal/zzbbi;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/internal/zzbvi;->zzj(Lcom/google/android/libraries/places/internal/zzbbi;)V

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbvi;->zzl(Lcom/google/android/libraries/places/internal/zzbvi;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbvi;->zzd(Lcom/google/android/libraries/places/internal/zzbvi;)Lcom/google/android/libraries/places/internal/zzbvg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/internal/zzbbm;->zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V

    goto/16 :goto_3

    :cond_b
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_6
    if-ge v5, v4, :cond_d

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzbvi;->zzh()V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvk;->zzl()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbvi;->zzk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_f
    :goto_9
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzf:Z

    return-object p1

    :goto_a
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzf:Z

    throw p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzk:Lcom/google/android/libraries/places/internal/zzbbd;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbbc;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/libraries/places/internal/zzbbc;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 5

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "shutdown"

    const-string v3, "Shutdown"

    const-string v4, "io.grpc.util.MultiChildLoadBalancer"

    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbvi;->zzk()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected final zzh()Lcom/google/android/libraries/places/internal/zzbbd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzk:Lcom/google/android/libraries/places/internal/zzbbd;

    return-object v0
.end method

.method public final zzi()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzl()V
.end method
