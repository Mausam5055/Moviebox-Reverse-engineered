.class public abstract Landroidx/compose/foundation/text/modifiers/b;
.super Ljava/lang/Object;


# direct methods
.method public static final a(JZIF)J
    .locals 1

    sget-object v0, Lo0/b;->b:Lo0/b$a;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/b;->c(JZIF)I

    move-result p2

    invoke-static {p0, p1}, Lo0/b;->k(J)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p2, p1, p0}, Lo0/b$a;->b(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final b(ZII)I
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {p0}, Landroidx/compose/ui/text/style/p$a;->b()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/ui/text/style/p;->e(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static final c(JZIF)I
    .locals 0

    if-nez p2, :cond_0

    sget-object p2, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {p2}, Landroidx/compose/ui/text/style/p$a;->b()I

    move-result p2

    invoke-static {p3, p2}, Landroidx/compose/ui/text/style/p;->e(II)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lo0/b;->h(J)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lo0/b;->l(J)I

    move-result p2

    goto :goto_0

    :cond_1
    const p2, 0x7fffffff

    :goto_0
    invoke-static {p0, p1}, Lo0/b;->n(J)I

    move-result p3

    if-ne p3, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p4}, Landroidx/compose/foundation/text/b;->a(F)I

    move-result p3

    invoke-static {p0, p1}, Lo0/b;->n(J)I

    move-result p0

    invoke-static {p3, p0, p2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p2

    :goto_1
    return p2
.end method
