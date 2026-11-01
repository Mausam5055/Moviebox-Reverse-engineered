.class public abstract Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->h(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->g(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->d(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V

    return-void
.end method

.method private static d(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V
    .locals 9

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->arrow_up:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->arrow_down:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x0

    aget v5, v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v3, v4

    const/high16 v6, 0x43520000    # 210.0f

    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v6

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v8

    sub-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    add-int/2addr v3, p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    sub-int/2addr v3, p1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v6, v7

    sub-int/2addr v6, v8

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/16 p1, 0x8

    if-eqz p2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v4, p1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private static e(Landroid/view/View;Landroid/view/View;)[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    move-result v1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    move-result v2

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v5

    add-int/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v5, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v5

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v6

    add-int/2addr p0, v6

    if-le p0, v2, :cond_0

    aget p0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int v5, p0, p1

    move v3, v4

    :cond_0
    filled-new-array {v1, v5, v3}, [I

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/widget/PopupWindow;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private static synthetic g(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->f(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method private static synthetic h(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->f(Landroid/widget/PopupWindow;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;->a(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    :cond_0
    return-void
.end method

.method public static i(Landroid/view/View;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)Landroid/widget/PopupWindow;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "#33000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->setAdvertiserName(Ljava/lang/String;)V

    const/high16 p1, 0x43520000    # 210.0f

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/view/View;->measure(II)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    invoke-direct {p1, v1, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v4, Landroidx/appcompat/R$style;->Animation_AppCompat_Dialog:I

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_1

    invoke-static {p1, v4}, Lf7/a;->a(Landroid/widget/PopupWindow;Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    invoke-static {p0, v2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c;->e(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v5, v6

    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    new-instance v7, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a;

    invoke-direct {v7, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v7, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;

    invoke-direct {v7, v2, p0, v6}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/c$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Landroid/view/View;Z)V

    invoke-virtual {v1, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/b;

    invoke-direct {v1, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/b;-><init>(Landroid/widget/PopupWindow;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->setListener(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    aget p2, v5, v3

    aget v1, v5, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p0, v3, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    const-string p1, "AdExpandMenu"

    const-string p2, "Failed to show adexpandmenu."

    invoke-virtual {p0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
