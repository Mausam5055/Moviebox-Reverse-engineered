.class public abstract Landroidx/compose/foundation/lazy/layout/c;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Landroidx/compose/runtime/collection/b;I)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/c;->b(Landroidx/compose/runtime/collection/b;I)I

    move-result p0

    return p0
.end method

.method private static final b(Landroidx/compose/runtime/collection/b;I)I
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v2

    check-cast v3, Landroidx/compose/foundation/lazy/layout/b$a;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/b$a;->b()I

    move-result v3

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    if-ge v3, p1, :cond_2

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v1

    check-cast v3, Landroidx/compose/foundation/lazy/layout/b$a;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/b$a;->b()I

    move-result v3

    if-ge p1, v3, :cond_0

    return v2

    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method
