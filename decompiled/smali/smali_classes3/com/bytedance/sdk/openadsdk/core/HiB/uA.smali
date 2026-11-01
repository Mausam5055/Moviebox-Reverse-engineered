.class public Lcom/bytedance/sdk/openadsdk/core/HiB/uA;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(I)I
    .locals 3

    and-int/lit8 v0, p0, 0x3

    and-int/lit8 v1, p0, 0x5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    :cond_0
    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    :cond_1
    return p0
.end method

.method public static Sj(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/uA;->sP(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/uA;->Sj(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private static Sj(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_1
    instance-of v0, p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/uA;->Sj(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_2
    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/uA;->Sj(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_3
    instance-of v0, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_9

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/16 v1, 0x9

    aget v1, v0, v1

    if-eqz v1, :cond_4

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_4
    const/16 v1, 0xb

    aget v1, v0, v1

    if-eqz v1, :cond_5

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_5
    const/4 v1, 0x0

    aget v1, v0, v1

    if-eqz v1, :cond_6

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_6
    const/4 v1, 0x1

    aget v1, v0, v1

    if-eqz v1, :cond_7

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_7
    const/4 v1, 0x5

    aget v1, v0, v1

    if-eqz v1, :cond_8

    const/16 v2, 0x12

    invoke-virtual {p0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_8
    const/4 v1, 0x7

    aget v0, v0, v1

    if-eqz v0, :cond_9

    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_9
    return-void
.end method

.method private static sP(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    instance-of v1, p0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    instance-of v2, p0, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_6

    instance-of v1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    instance-of p0, p0, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_8

    instance-of p0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p0, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-object v1
.end method
