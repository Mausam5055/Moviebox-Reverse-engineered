.class public abstract Lcom/avery/subtitle/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(JLjava/util/List;)Lk5/b;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-gt v2, v1, :cond_6

    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk5/b;

    iget-object v5, v4, Lk5/b;->b:Lk5/c;

    iget v5, v5, Lk5/c;->a:I

    int-to-long v6, v5

    cmp-long v6, p0, v6

    if-gez v6, :cond_3

    iget-object v1, v4, Lk5/b;->c:Lk5/c;

    iget v1, v1, Lk5/c;->a:I

    int-to-long v5, v1

    cmp-long v1, p0, v5

    if-lez v1, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v6, v4, Lk5/b;->c:Lk5/c;

    iget v6, v6, Lk5/c;->a:I

    int-to-long v7, v6

    cmp-long v7, p0, v7

    if-lez v7, :cond_5

    int-to-long v5, v5

    cmp-long v2, p0, v5

    if-gez v2, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_5
    int-to-long v7, v5

    cmp-long v3, p0, v7

    if-ltz v3, :cond_1

    int-to-long v5, v6

    cmp-long v3, p0, v5

    if-gtz v3, :cond_1

    return-object v4

    :cond_6
    :goto_1
    return-object v0
.end method
