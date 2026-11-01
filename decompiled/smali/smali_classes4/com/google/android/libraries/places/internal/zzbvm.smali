.class final Lcom/google/android/libraries/places/internal/zzbvm;
.super Lcom/google/android/libraries/places/internal/zzbbk;


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbk;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty list"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbbk;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zzc:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbvm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbvm;

    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zzc:I

    iget v3, p1, Lcom/google/android/libraries/places/internal/zzbvm;->zzc:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbvm;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zza:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbvm;->zza:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zza:Ljava/util/List;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbvm;->zza:Ljava/util/List;

    invoke-virtual {v3, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zzc:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/libraries/places/internal/zzbvm;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmn;->zza(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "subchannelPickers"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zza:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbbe;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvm;->zza:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbbk;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbk;->zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    return-object p1
.end method
