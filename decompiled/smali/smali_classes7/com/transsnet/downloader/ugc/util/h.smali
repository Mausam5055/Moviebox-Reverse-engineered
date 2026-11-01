.class public abstract Lcom/transsnet/downloader/ugc/util/h;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/ugc/util/h;->c(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final b(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClickCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsnet/downloader/R$layout;->ugc_layout_resolution_pop:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-static {v1}, Lpy/d1;->a(Landroid/view/View;)Lpy/d1;

    move-result-object v1

    const-string v3, "bind(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lpy/d1;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v4, v6}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, v1, Lpy/d1;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsnet/downloader/ugc/util/f;

    invoke-direct {v1, p1}, Lcom/transsnet/downloader/ugc/util/f;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/transsnet/downloader/ugc/util/g;

    invoke-direct {p1, v2, p2}, Lcom/transsnet/downloader/ugc/util/g;-><init>(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/16 p1, 0x8c

    invoke-static {p1}, Ldk/a;->b(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p2, p1

    const/4 p1, 0x4

    invoke-static {p1}, Ldk/a;->b(I)I

    move-result p1

    invoke-virtual {v2, p0, p2, p1, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method private static final c(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p3, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;

    if-eqz p3, :cond_1

    check-cast p2, Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
