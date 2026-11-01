.class public abstract Lcom/google/android/libraries/places/internal/zzoa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# instance fields
.field private transient zza:Lcom/google/android/libraries/places/internal/zzob;

.field private transient zzb:Lcom/google/android/libraries/places/internal/zzob;

.field private transient zzc:Lcom/google/android/libraries/places/internal/zznt;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzoa;
    .locals 2

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    new-instance v1, Lcom/google/android/libraries/places/internal/zznz;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/zznz;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/google/android/libraries/places/internal/zznz;->zzb(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zznz;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zznz;->zzc()Lcom/google/android/libraries/places/internal/zzoa;

    move-result-object p0

    return-object p0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzoa;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzor;->zza:Lcom/google/android/libraries/places/internal/zzoa;

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzoa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzoa;->zzb()Lcom/google/android/libraries/places/internal/zznt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zznt;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzoa;->zzg()Lcom/google/android/libraries/places/internal/zzob;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzoa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzoa;->zzg()Lcom/google/android/libraries/places/internal/zzob;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzot;->zza(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoa;->zzb:Lcom/google/android/libraries/places/internal/zzob;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzoa;->zzf()Lcom/google/android/libraries/places/internal/zzob;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzoa;->zzb:Lcom/google/android/libraries/places/internal/zzob;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-ltz v0, :cond_2

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x40000000

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size cannot be negative but was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzoa;->zzb()Lcom/google/android/libraries/places/internal/zznt;

    move-result-object v0

    return-object v0
.end method

.method abstract zza()Lcom/google/android/libraries/places/internal/zznt;
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zznt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoa;->zzc:Lcom/google/android/libraries/places/internal/zznt;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzoa;->zza()Lcom/google/android/libraries/places/internal/zznt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzoa;->zzc:Lcom/google/android/libraries/places/internal/zznt;

    :cond_0
    return-object v0
.end method

.method abstract zze()Lcom/google/android/libraries/places/internal/zzob;
.end method

.method abstract zzf()Lcom/google/android/libraries/places/internal/zzob;
.end method

.method public final zzg()Lcom/google/android/libraries/places/internal/zzob;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoa;->zza:Lcom/google/android/libraries/places/internal/zzob;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzoa;->zze()Lcom/google/android/libraries/places/internal/zzob;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzoa;->zza:Lcom/google/android/libraries/places/internal/zzob;

    :cond_0
    return-object v0
.end method
