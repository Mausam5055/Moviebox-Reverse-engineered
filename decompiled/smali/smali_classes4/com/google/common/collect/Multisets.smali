.class public abstract Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multisets$ImmutableEntry;,
        Lcom/google/common/collect/Multisets$e;,
        Lcom/google/common/collect/Multisets$DecreasingCount;,
        Lcom/google/common/collect/Multisets$d;,
        Lcom/google/common/collect/Multisets$c;,
        Lcom/google/common/collect/Multisets$b;
    }
.end annotation


# direct methods
.method private static a(Lcom/google/common/collect/l3;Lcom/google/common/collect/AbstractMapBasedMultiset;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/common/collect/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->addTo(Lcom/google/common/collect/l3;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/google/common/collect/l3;Lcom/google/common/collect/l3;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/common/collect/AbstractMapBasedMultiset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/l3;Lcom/google/common/collect/AbstractMapBasedMultiset;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/l3$a;

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->getCount()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/google/common/collect/l3;->add(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static c(Lcom/google/common/collect/l3;Ljava/util/Collection;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/common/collect/l3;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/Multisets;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/l3;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/l3;Lcom/google/common/collect/l3;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Iterable;)Lcom/google/common/collect/l3;
    .locals 0

    check-cast p0, Lcom/google/common/collect/l3;

    return-object p0
.end method

.method static e(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Multisets$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$a;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static f(Lcom/google/common/collect/l3;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/l3;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/common/collect/l3;

    invoke-interface {p0}, Lcom/google/common/collect/l3;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/l3;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-interface {p0}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/l3$a;

    invoke-interface {v1}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/collect/l3;->count(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/google/common/collect/l3$a;->getCount()I

    move-result v1

    if-eq v3, v1, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static g(Ljava/lang/Object;I)Lcom/google/common/collect/l3$a;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static h(Ljava/lang/Iterable;)I
    .locals 1

    instance-of v0, p0, Lcom/google/common/collect/l3;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/l3;

    invoke-interface {p0}, Lcom/google/common/collect/l3;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method static i(Lcom/google/common/collect/l3;)Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/Multisets$e;

    invoke-interface {p0}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$e;-><init>(Lcom/google/common/collect/l3;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static j(Lcom/google/common/collect/l3;Ljava/util/Collection;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/common/collect/l3;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/l3;

    invoke-interface {p1}, Lcom/google/common/collect/l3;->elementSet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/l3;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static k(Lcom/google/common/collect/l3;Ljava/util/Collection;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/common/collect/l3;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/l3;

    invoke-interface {p1}, Lcom/google/common/collect/l3;->elementSet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/l3;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static l(Lcom/google/common/collect/l3;Ljava/lang/Object;I)I
    .locals 1

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/google/common/collect/l3;->count(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    if-lez p2, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/l3;->add(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/l3;->remove(Ljava/lang/Object;I)I

    :cond_1
    :goto_0
    return v0
.end method

.method static m(Lcom/google/common/collect/l3;Ljava/lang/Object;II)Z
    .locals 1

    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/google/common/collect/l3;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/l3;->setCount(Ljava/lang/Object;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
