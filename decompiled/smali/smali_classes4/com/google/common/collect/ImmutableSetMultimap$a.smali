.class public final Lcom/google/common/collect/ImmutableSetMultimap$a;
.super Lcom/google/common/collect/ImmutableMultimap$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$c;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;-><init>(I)V

    return-void
.end method


# virtual methods
.method d(ILjava/lang/Iterable;)I
    .locals 1

    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method e(I)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->c:Ljava/util/Comparator;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/collect/ImmutableSortedSet$a;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/ImmutableSortedSet$a;-><init>(Ljava/util/Comparator;I)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->m(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->o(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p1

    return-object p1
.end method

.method public j()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->of()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$c;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$c;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap;->fromMapBuilderEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method k(Lcom/google/common/collect/ImmutableMultimap$c;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->b(Lcom/google/common/collect/ImmutableMultimap$c;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public m(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public n(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->i(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method
