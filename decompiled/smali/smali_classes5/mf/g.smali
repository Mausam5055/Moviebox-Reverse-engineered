.class public Lmf/g;
.super Lmf/j;


# instance fields
.field private d:Lcom/tencent/tinker/android/dex/j;

.field private e:Lcom/tencent/tinker/android/dex/v$a;

.field private f:Lcom/tencent/tinker/android/dex/j$h;

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j;Lof/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lmf/j;-><init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lof/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/g;->d:Lcom/tencent/tinker/android/dex/j;

    iput-object p1, p0, Lmf/g;->e:Lcom/tencent/tinker/android/dex/v$a;

    iput-object p1, p0, Lmf/g;->f:Lcom/tencent/tinker/android/dex/j$h;

    iput-object p1, p0, Lmf/g;->g:Ljava/util/List;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lmf/g;->d:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {p3}, Lcom/tencent/tinker/android/dex/j;->h()Lcom/tencent/tinker/android/dex/v;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/v;->g:Lcom/tencent/tinker/android/dex/v$a;

    iput-object p1, p0, Lmf/g;->e:Lcom/tencent/tinker/android/dex/v$a;

    invoke-virtual {p3, p1}, Lcom/tencent/tinker/android/dex/j;->m(Lcom/tencent/tinker/android/dex/v$a;)Lcom/tencent/tinker/android/dex/j$h;

    move-result-object p1

    iput-object p1, p0, Lmf/g;->f:Lcom/tencent/tinker/android/dex/j$h;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x200

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lmf/g;->g:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private n(Ljava/util/List;)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Ljf/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljf/a;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tinker/android/dex/g;

    iget v7, v5, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v5, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v5, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-virtual {v3, v5, v6}, Ljf/a;->n(II)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tinker/android/dex/g;

    iget v5, v4, Lcom/tencent/tinker/android/dex/g;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/tencent/tinker/android/dex/g;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget v7, v4, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v4, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-virtual {v3, v5}, Ljf/a;->g(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v5, v7}, Ljf/a;->n(II)V

    :cond_2
    iget-object v5, p0, Lmf/g;->d:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {v5, v4}, Lcom/tencent/tinker/android/dex/j;->i(Lcom/tencent/tinker/android/dex/g;)[S

    move-result-object v5

    array-length v7, v5

    move v8, v6

    :goto_1
    if-ge v8, v7, :cond_1

    aget-short v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    iget v10, v4, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v9, v4, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-virtual {v3, v9}, Ljf/a;->g(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v9, v10}, Ljf/a;->n(II)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/ArrayDeque;

    const/16 v4, 0x40

    invoke-direct {v2, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    :goto_2
    invoke-virtual {v3}, Ljf/a;->o()I

    move-result v4

    if-ge v6, v4, :cond_6

    invoke-virtual {v3, v6}, Ljf/a;->m(I)I

    move-result v4

    invoke-virtual {v3, v6}, Ljf/a;->p(I)I

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tinker/android/dex/g;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Ljf/a;->g(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v7, v8}, Ljf/a;->n(II)V

    if-nez v8, :cond_8

    invoke-interface {v2, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v0, p1, :cond_a

    return-object v4

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal dex format, there\'s at least one loop in class inheritance graph."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected bridge synthetic a(Lof/a;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    check-cast p2, Lcom/tencent/tinker/android/dex/g;

    invoke-virtual {p0, p1, p2}, Lmf/g;->l(Lof/a;Lcom/tencent/tinker/android/dex/g;)Lcom/tencent/tinker/android/dex/g;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v$a;
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/j;->h()Lcom/tencent/tinker/android/dex/v;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/v;->g:Lcom/tencent/tinker/android/dex/v$a;

    return-object p1
.end method

.method protected bridge synthetic g(Lff/a;)Ljava/lang/Comparable;
    .locals 0

    invoke-virtual {p0, p1}, Lmf/g;->m(Lff/a;)Lcom/tencent/tinker/android/dex/g;

    move-result-object p1

    return-object p1
.end method

.method protected h()V
    .locals 3

    iget-object v0, p0, Lmf/g;->g:Ljava/util/List;

    invoke-direct {p0, v0}, Lmf/g;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmf/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tinker/android/dex/g;

    iget-object v2, p0, Lmf/g;->f:Lcom/tencent/tinker/android/dex/j$h;

    invoke-virtual {v2, v1}, Lcom/tencent/tinker/android/dex/j$h;->W(Lcom/tencent/tinker/android/dex/g;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic k(Ljava/lang/Comparable;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/g;

    invoke-virtual {p0, p1}, Lmf/g;->o(Lcom/tencent/tinker/android/dex/g;)I

    move-result p1

    return p1
.end method

.method protected l(Lof/a;Lcom/tencent/tinker/android/dex/g;)Lcom/tencent/tinker/android/dex/g;
    .locals 0

    invoke-virtual {p1, p2}, Lof/a;->g(Lcom/tencent/tinker/android/dex/g;)Lcom/tencent/tinker/android/dex/g;

    move-result-object p1

    return-object p1
.end method

.method protected m(Lff/a;)Lcom/tencent/tinker/android/dex/g;
    .locals 0

    invoke-virtual {p1}, Lff/a;->q()Lcom/tencent/tinker/android/dex/g;

    move-result-object p1

    return-object p1
.end method

.method protected o(Lcom/tencent/tinker/android/dex/g;)I
    .locals 2

    iget-object v0, p0, Lmf/g;->e:Lcom/tencent/tinker/android/dex/v$a;

    iget v1, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    iget-object v0, p0, Lmf/g;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method
