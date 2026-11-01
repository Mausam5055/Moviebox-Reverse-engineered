.class public Lu/f;
.super Lkotlin/collections/AbstractMutableMap;

# interfaces
.implements Lt/g$a;


# instance fields
.field private a:Lu/d;

.field private b:Lw/e;

.field private c:Lu/t;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lu/d;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/AbstractMutableMap;-><init>()V

    iput-object p1, p0, Lu/f;->a:Lu/d;

    new-instance p1, Lw/e;

    invoke-direct {p1}, Lw/e;-><init>()V

    iput-object p1, p0, Lu/f;->b:Lw/e;

    iget-object p1, p0, Lu/f;->a:Lu/d;

    invoke-virtual {p1}, Lu/d;->u()Lu/t;

    move-result-object p1

    iput-object p1, p0, Lu/f;->c:Lu/t;

    iget-object p1, p0, Lu/f;->a:Lu/d;

    invoke-virtual {p1}, Lkotlin/collections/AbstractMap;->size()I

    move-result p1

    iput p1, p0, Lu/f;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    new-instance v0, Lu/h;

    invoke-direct {v0, p0}, Lu/h;-><init>(Lu/f;)V

    return-object v0
.end method

.method public bridge synthetic build()Lt/g;
    .locals 1

    invoke-virtual {p0}, Lu/f;->h()Lu/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    new-instance v0, Lu/j;

    invoke-direct {v0, p0}, Lu/j;-><init>(Lu/f;)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    sget-object v0, Lu/t;->e:Lu/t$a;

    invoke-virtual {v0}, Lu/t$a;->a()Lu/t;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lu/f;->c:Lu/t;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu/f;->p(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lu/f;->c:Lu/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Lu/t;->k(ILjava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lu/f;->f:I

    return v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1

    new-instance v0, Lu/l;

    invoke-direct {v0, p0}, Lu/l;-><init>(Lu/f;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lu/f;->c:Lu/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Lu/t;->o(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Lu/d;
    .locals 3

    iget-object v0, p0, Lu/f;->c:Lu/t;

    iget-object v1, p0, Lu/f;->a:Lu/d;

    invoke-virtual {v1}, Lu/d;->u()Lu/t;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lu/f;->a:Lu/d;

    goto :goto_0

    :cond_0
    new-instance v0, Lw/e;

    invoke-direct {v0}, Lw/e;-><init>()V

    iput-object v0, p0, Lu/f;->b:Lw/e;

    new-instance v0, Lu/d;

    iget-object v1, p0, Lu/f;->c:Lu/t;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/d;-><init>(Lu/t;I)V

    :goto_0
    iput-object v0, p0, Lu/f;->a:Lu/d;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lu/f;->e:I

    return v0
.end method

.method public final j()Lu/t;
    .locals 1

    iget-object v0, p0, Lu/f;->c:Lu/t;

    return-object v0
.end method

.method public final l()Lw/e;
    .locals 1

    iget-object v0, p0, Lu/f;->b:Lw/e;

    return-object v0
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lu/f;->e:I

    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lu/f;->d:Ljava/lang/Object;

    return-void
.end method

.method protected final o(Lw/e;)V
    .locals 0

    iput-object p1, p0, Lu/f;->b:Lw/e;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lu/f;->f:I

    iget p1, p0, Lu/f;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu/f;->e:I

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lu/f;->d:Ljava/lang/Object;

    iget-object v1, p0, Lu/f;->c:Lu/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lu/t;->D(ILjava/lang/Object;Ljava/lang/Object;ILu/f;)Lu/t;

    move-result-object p1

    iput-object p1, p0, Lu/f;->c:Lu/t;

    iget-object p1, p0, Lu/f;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6

    instance-of v0, p1, Lu/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lu/d;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    instance-of v0, p1, Lu/f;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lu/f;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu/f;->h()Lu/d;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    new-instance p1, Lw/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v3, v2, v1}, Lw/b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result v1

    iget-object v2, p0, Lu/f;->c:Lu/t;

    invoke-virtual {v0}, Lu/d;->u()Lu/t;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3, p1, p0}, Lu/t;->E(Lu/t;ILw/b;Lu/f;)Lu/t;

    move-result-object v2

    iput-object v2, p0, Lu/f;->c:Lu/t;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMap;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lw/b;->a()I

    move-result p1

    sub-int/2addr v0, p1

    if-eq v1, v0, :cond_5

    invoke-virtual {p0, v0}, Lu/f;->p(I)V

    goto :goto_3

    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lu/f;->d:Ljava/lang/Object;

    iget-object v0, p0, Lu/f;->c:Lu/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1, p0}, Lu/t;->G(ILjava/lang/Object;ILu/f;)Lu/t;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lu/t;->e:Lu/t$a;

    invoke-virtual {p1}, Lu/t$a;->a()Lu/t;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lu/f;->c:Lu/t;

    iget-object p1, p0, Lu/f;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result v0

    iget-object v1, p0, Lu/f;->c:Lu/t;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lu/t;->H(ILjava/lang/Object;Ljava/lang/Object;ILu/f;)Lu/t;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lu/t;->e:Lu/t$a;

    invoke-virtual {p1}, Lu/t$a;->a()Lu/t;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lu/f;->c:Lu/t;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result p1

    if-eq v0, p1, :cond_2

    const/4 v7, 0x1

    :cond_2
    return v7
.end method
