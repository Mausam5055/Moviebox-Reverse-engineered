.class public abstract Lmo/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/media3/common/i0;Lmo/d;)Landroidx/media3/common/f0;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaTrackGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    move-result-object p0

    const-string v0, "iterator(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/i0$a;

    invoke-virtual {v0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/f0;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lmo/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/f0;->c:I

    invoke-virtual {p1}, Lmo/d;->e()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Landroidx/media3/common/r;)Lmo/b;
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lmo/b;

    iget-object v2, p0, Landroidx/media3/common/r;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/common/r;->b:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    iget v5, p0, Landroidx/media3/common/r;->e:I

    iget v6, p0, Landroidx/media3/common/r;->h:I

    iget v7, p0, Landroidx/media3/common/r;->i:I

    iget v8, p0, Landroidx/media3/common/r;->j:I

    iget-object v9, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    iget v10, p0, Landroidx/media3/common/r;->v:I

    iget v11, p0, Landroidx/media3/common/r;->w:I

    iget v12, p0, Landroidx/media3/common/r;->x:F

    iget v13, p0, Landroidx/media3/common/r;->y:I

    iget v14, p0, Landroidx/media3/common/r;->z:F

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lmo/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIFIF)V

    return-object v0
.end method

.method public static final c(Landroidx/media3/common/i0;)Lmo/c;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/i0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lmo/c;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lmo/c;-><init>(Lcom/google/common/collect/ImmutableList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v1, v0, [Lmo/d;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/media3/common/i0$a;

    invoke-static {v3}, Lmo/a;->d(Landroidx/media3/common/i0$a;)Lmo/d;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lmo/c;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lmo/c;-><init>(Lcom/google/common/collect/ImmutableList;)V

    :goto_1
    return-object p0
.end method

.method public static final d(Landroidx/media3/common/i0$a;)Lmo/d;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/media3/common/i0$a;->a:I

    new-array v6, v0, [Lmo/b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    move-result-object v2

    const-string v3, "getTrackFormat(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lmo/a;->b(Landroidx/media3/common/r;)Lmo/b;

    move-result-object v2

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lmo/d;

    iget v2, p0, Landroidx/media3/common/i0$a;->a:I

    invoke-virtual {p0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    move-result-object v1

    iget-object v3, v1, Landroidx/media3/common/f0;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    move-result-object v1

    iget v4, v1, Landroidx/media3/common/f0;->c:I

    invoke-virtual {p0}, Landroidx/media3/common/i0$a;->e()Z

    move-result v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lmo/d;-><init>(ILjava/lang/String;IZ[Lmo/b;)V

    return-object v0
.end method
