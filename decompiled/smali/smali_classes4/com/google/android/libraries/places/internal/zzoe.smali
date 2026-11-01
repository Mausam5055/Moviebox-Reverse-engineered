.class final Lcom/google/android/libraries/places/internal/zzoe;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# instance fields
.field final zza:Ljava/util/List;

.field final zzb:Lcom/google/android/libraries/places/internal/zzmd;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzmd;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzoe;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzoe;->zzb:Lcom/google/android/libraries/places/internal/zzmd;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoe;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzef;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoe;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoe;->zza:Ljava/util/List;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzod;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzod;-><init>(Lcom/google/android/libraries/places/internal/zzoe;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoe;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzef;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final removeRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoe;->zza:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoe;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
