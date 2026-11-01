.class public abstract Lcom/google/common/collect/p2;
.super Lcom/google/common/collect/k2;

# interfaces
.implements Lcom/google/common/collect/l3;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/k2;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->l()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/l3;->add(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->l()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/l3;->count(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public abstract entrySet()Ljava/util/Set;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->l()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/l3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->l()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3;->hashCode()I

    move-result v0

    return v0
.end method

.method protected abstract l()Lcom/google/common/collect/l3;
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->l()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/l3;->remove(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->l()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/l3;->setCount(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->l()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/l3;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method protected standardAddAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/l3;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected standardClear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->d(Ljava/util/Iterator;)V

    return-void
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p2;->count(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/p2;->remove(Ljava/lang/Object;I)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->j(Lcom/google/common/collect/l3;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected standardRetainAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->k(Lcom/google/common/collect/l3;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected standardToString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
