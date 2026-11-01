.class public abstract Landroidx/compose/ui/text/h;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Ljava/util/List;II)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/h;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Ljava/util/List;II)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$c;

    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$c;->f()I

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$c;->d()I

    move-result v5

    invoke-static {p1, p2, v6, v5}, Landroidx/compose/ui/text/d;->k(IIII)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$c;

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$c;->f()I

    move-result v4

    if-gt p1, v4, :cond_2

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$c;->d()I

    move-result v4

    if-gt v4, p2, :cond_2

    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$c;

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$c;->e()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$c;->f()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$c;->d()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-direct {v4, v5, v6, v3}, Landroidx/compose/ui/text/AnnotatedString$c;-><init>(Ljava/lang/Object;II)V

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "placeholder can not overlap with paragraph."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p0
.end method
