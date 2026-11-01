.class public abstract Landroidx/compose/ui/graphics/vector/f;
.super Ljava/lang/Object;


# direct methods
.method public static final a(CLjava/util/ArrayList;[FI)V
    .locals 12

    const/16 v0, 0x7a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_1

    :goto_0
    sget-object p0, Landroidx/compose/ui/graphics/vector/e$b;->c:Landroidx/compose/ui/graphics/vector/e$b;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_1
    const/16 v0, 0x6d

    if-ne p0, v0, :cond_2

    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/vector/f;->c(Ljava/util/List;[FI)V

    goto/16 :goto_15

    :cond_2
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_3

    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/vector/f;->b(Ljava/util/List;[FI)V

    goto/16 :goto_15

    :cond_3
    const/16 v0, 0x6c

    const/4 v1, 0x0

    if-ne p0, v0, :cond_4

    add-int/lit8 p3, p3, -0x2

    :goto_1
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$m;

    aget v0, p2, v1

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    invoke-direct {p0, v0, v2}, Landroidx/compose/ui/graphics/vector/e$m;-><init>(FF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_4
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_5

    add-int/lit8 p3, p3, -0x2

    :goto_2
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$e;

    aget v0, p2, v1

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    invoke-direct {p0, v0, v2}, Landroidx/compose/ui/graphics/vector/e$e;-><init>(FF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_5
    const/16 v0, 0x68

    const/4 v2, 0x1

    if-ne p0, v0, :cond_6

    sub-int/2addr p3, v2

    :goto_3
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$l;

    aget v0, p2, v1

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/e$l;-><init>(F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/16 v0, 0x48

    if-ne p0, v0, :cond_7

    sub-int/2addr p3, v2

    :goto_4
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$d;

    aget v0, p2, v1

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/e$d;-><init>(F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const/16 v0, 0x76

    if-ne p0, v0, :cond_8

    sub-int/2addr p3, v2

    :goto_5
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$r;

    aget v0, p2, v1

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/e$r;-><init>(F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    const/16 v0, 0x56

    if-ne p0, v0, :cond_9

    sub-int/2addr p3, v2

    :goto_6
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$s;

    aget v0, p2, v1

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/e$s;-><init>(F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    const/16 v0, 0x63

    if-ne p0, v0, :cond_a

    add-int/lit8 p3, p3, -0x6

    :goto_7
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$k;

    aget v3, p2, v1

    add-int/lit8 v0, v1, 0x1

    aget v4, p2, v0

    add-int/lit8 v0, v1, 0x2

    aget v5, p2, v0

    add-int/lit8 v0, v1, 0x3

    aget v6, p2, v0

    add-int/lit8 v0, v1, 0x4

    aget v7, p2, v0

    add-int/lit8 v0, v1, 0x5

    aget v8, p2, v0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/e$k;-><init>(FFFFFF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x6

    goto :goto_7

    :cond_a
    const/16 v0, 0x43

    if-ne p0, v0, :cond_b

    add-int/lit8 p3, p3, -0x6

    :goto_8
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$c;

    aget v3, p2, v1

    add-int/lit8 v0, v1, 0x1

    aget v4, p2, v0

    add-int/lit8 v0, v1, 0x2

    aget v5, p2, v0

    add-int/lit8 v0, v1, 0x3

    aget v6, p2, v0

    add-int/lit8 v0, v1, 0x4

    aget v7, p2, v0

    add-int/lit8 v0, v1, 0x5

    aget v8, p2, v0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/e$c;-><init>(FFFFFF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x6

    goto :goto_8

    :cond_b
    const/16 v0, 0x73

    if-ne p0, v0, :cond_c

    add-int/lit8 p3, p3, -0x4

    :goto_9
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$p;

    aget v0, p2, v1

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x3

    aget v4, p2, v4

    invoke-direct {p0, v0, v2, v3, v4}, Landroidx/compose/ui/graphics/vector/e$p;-><init>(FFFF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto :goto_9

    :cond_c
    const/16 v0, 0x53

    if-ne p0, v0, :cond_d

    add-int/lit8 p3, p3, -0x4

    :goto_a
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$h;

    aget v0, p2, v1

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x3

    aget v4, p2, v4

    invoke-direct {p0, v0, v2, v3, v4}, Landroidx/compose/ui/graphics/vector/e$h;-><init>(FFFF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto :goto_a

    :cond_d
    const/16 v0, 0x71

    if-ne p0, v0, :cond_e

    add-int/lit8 p3, p3, -0x4

    :goto_b
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$o;

    aget v0, p2, v1

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x3

    aget v4, p2, v4

    invoke-direct {p0, v0, v2, v3, v4}, Landroidx/compose/ui/graphics/vector/e$o;-><init>(FFFF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto :goto_b

    :cond_e
    const/16 v0, 0x51

    if-ne p0, v0, :cond_f

    add-int/lit8 p3, p3, -0x4

    :goto_c
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$g;

    aget v0, p2, v1

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    add-int/lit8 v4, v1, 0x3

    aget v4, p2, v4

    invoke-direct {p0, v0, v2, v3, v4}, Landroidx/compose/ui/graphics/vector/e$g;-><init>(FFFF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto :goto_c

    :cond_f
    const/16 v0, 0x74

    if-ne p0, v0, :cond_10

    add-int/lit8 p3, p3, -0x2

    :goto_d
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$q;

    aget v0, p2, v1

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    invoke-direct {p0, v0, v2}, Landroidx/compose/ui/graphics/vector/e$q;-><init>(FF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_d

    :cond_10
    const/16 v0, 0x54

    if-ne p0, v0, :cond_11

    add-int/lit8 p3, p3, -0x2

    :goto_e
    if-gt v1, p3, :cond_17

    new-instance p0, Landroidx/compose/ui/graphics/vector/e$i;

    aget v0, p2, v1

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    invoke-direct {p0, v0, v2}, Landroidx/compose/ui/graphics/vector/e$i;-><init>(FF)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_e

    :cond_11
    const/16 v0, 0x61

    const/4 v3, 0x0

    if-ne p0, v0, :cond_14

    add-int/lit8 p3, p3, -0x7

    move p0, v1

    :goto_f
    if-gt p0, p3, :cond_17

    new-instance v0, Landroidx/compose/ui/graphics/vector/e$j;

    aget v5, p2, p0

    add-int/lit8 v4, p0, 0x1

    aget v6, p2, v4

    add-int/lit8 v4, p0, 0x2

    aget v7, p2, v4

    add-int/lit8 v4, p0, 0x3

    aget v4, p2, v4

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_12

    move v8, v2

    goto :goto_10

    :cond_12
    move v8, v1

    :goto_10
    add-int/lit8 v4, p0, 0x4

    aget v4, p2, v4

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_13

    move v9, v2

    goto :goto_11

    :cond_13
    move v9, v1

    :goto_11
    add-int/lit8 v4, p0, 0x5

    aget v10, p2, v4

    add-int/lit8 v4, p0, 0x6

    aget v11, p2, v4

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroidx/compose/ui/graphics/vector/e$j;-><init>(FFFZZFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x7

    goto :goto_f

    :cond_14
    const/16 v0, 0x41

    if-ne p0, v0, :cond_18

    add-int/lit8 p3, p3, -0x7

    move p0, v1

    :goto_12
    if-gt p0, p3, :cond_17

    new-instance v0, Landroidx/compose/ui/graphics/vector/e$a;

    aget v5, p2, p0

    add-int/lit8 v4, p0, 0x1

    aget v6, p2, v4

    add-int/lit8 v4, p0, 0x2

    aget v7, p2, v4

    add-int/lit8 v4, p0, 0x3

    aget v4, p2, v4

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_15

    move v8, v2

    goto :goto_13

    :cond_15
    move v8, v1

    :goto_13
    add-int/lit8 v4, p0, 0x4

    aget v4, p2, v4

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_16

    move v9, v2

    goto :goto_14

    :cond_16
    move v9, v1

    :goto_14
    add-int/lit8 v4, p0, 0x5

    aget v10, p2, v4

    add-int/lit8 v4, p0, 0x6

    aget v11, p2, v4

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroidx/compose/ui/graphics/vector/e$a;-><init>(FFFZZFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x7

    goto :goto_12

    :cond_17
    :goto_15
    return-void

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown command for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final b(Ljava/util/List;[FI)V
    .locals 4

    const/4 v0, 0x2

    sub-int/2addr p2, v0

    if-ltz p2, :cond_0

    new-instance v1, Landroidx/compose/ui/graphics/vector/e$f;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/e$f;-><init>(FF)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-gt v0, p2, :cond_0

    new-instance v1, Landroidx/compose/ui/graphics/vector/e$e;

    aget v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/e$e;-><init>(FF)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final c(Ljava/util/List;[FI)V
    .locals 4

    const/4 v0, 0x2

    sub-int/2addr p2, v0

    if-ltz p2, :cond_0

    new-instance v1, Landroidx/compose/ui/graphics/vector/e$n;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/e$n;-><init>(FF)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-gt v0, p2, :cond_0

    new-instance v1, Landroidx/compose/ui/graphics/vector/e$m;

    aget v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/e$m;-><init>(FF)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method
