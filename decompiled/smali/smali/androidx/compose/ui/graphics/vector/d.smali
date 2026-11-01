.class public abstract Landroidx/compose/ui/graphics/vector/d;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/graphics/vector/d;->d(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/graphics/vector/d;->e(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/vector/d;->f(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final d(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final e(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
