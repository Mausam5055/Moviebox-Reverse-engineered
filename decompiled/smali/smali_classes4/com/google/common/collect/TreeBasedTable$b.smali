.class Lcom/google/common/collect/TreeBasedTable$b;
.super Lcom/google/common/collect/StandardTable$g;

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final d:Ljava/lang/Object;

.field final e:Ljava/lang/Object;

.field transient f:Ljava/util/SortedMap;

.field final synthetic g:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/StandardTable$g;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/TreeBasedTable$b;->h(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Lcom/google/common/base/m;->d(Z)V

    return-void
.end method


# virtual methods
.method bridge synthetic c()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->i()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable$g;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method d()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->l()V

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$g;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$g;->e()V

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method h(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$g;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method i()Ljava/util/SortedMap;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->l()V

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/util/SortedSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Maps$n;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method k(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->h(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->h(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->j()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method l()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    :cond_1
    return-void
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$g;->e()V

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable$g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$g;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$g;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
