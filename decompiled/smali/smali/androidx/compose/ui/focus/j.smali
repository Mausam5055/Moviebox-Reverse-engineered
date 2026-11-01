.class public abstract Landroidx/compose/ui/focus/j;
.super Ljava/lang/Object;


# direct methods
.method public static final a(I)Z
    .locals 2

    sget-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result p0

    :goto_0
    return p0
.end method
