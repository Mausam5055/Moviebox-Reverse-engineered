.class public abstract Landroidx/compose/ui/focus/f;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/view/View;)Ly/i;
    .locals 7

    sget-object v0, Landroidx/compose/ui/focus/e;->a:Landroidx/compose/ui/focus/e$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/e$a;->a()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Ly/i;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v3, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    aget v0, v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-direct {v1, v3, v5, v2, v0}, Ly/i;-><init>(FFFF)V

    return-object v1
.end method

.method public static final b(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    goto/16 :goto_1

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    goto :goto_1

    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_7
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static final c(I)Ljava/lang/Integer;
    .locals 2

    sget-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->h()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0x21

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->a()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x82

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->d()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x11

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->g()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0x42

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/b;->l(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final d(I)Landroidx/compose/ui/focus/b;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/b$a;->a()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/focus/b;->i(I)Landroidx/compose/ui/focus/b;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/b$a;->g()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/focus/b;->i(I)Landroidx/compose/ui/focus/b;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/b$a;->h()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/focus/b;->i(I)Landroidx/compose/ui/focus/b;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/b$a;->d()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/focus/b;->i(I)Landroidx/compose/ui/focus/b;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object p0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/b$a;->e()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/focus/b;->i(I)Landroidx/compose/ui/focus/b;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object p0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/b$a;->f()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/focus/b;->i(I)Landroidx/compose/ui/focus/b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final e(I)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    :goto_0
    return-object p0
.end method
