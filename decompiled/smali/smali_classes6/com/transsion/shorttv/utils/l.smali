.class public abstract Lcom/transsion/shorttv/utils/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    const/high16 v1, 0x3f000000    # 0.5f

    const-string v2, "0.5x"

    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    new-instance v1, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    const/high16 v2, 0x3f400000    # 0.75f

    const-string v3, "0.75x"

    invoke-direct {v1, v2, v3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    new-instance v2, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "1x"

    invoke-direct {v2, v3, v4}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    new-instance v3, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    const/high16 v4, 0x3fa00000    # 1.25f

    const-string v5, "1.25x"

    invoke-direct {v3, v4, v5}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    new-instance v4, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    const/high16 v5, 0x3fc00000    # 1.5f

    const-string v6, "1.5x"

    invoke-direct {v4, v5, v6}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    new-instance v5, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    const/high16 v6, 0x3fe00000    # 1.75f

    const-string v7, "1.75x"

    invoke-direct {v5, v6, v7}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    new-instance v6, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    const/high16 v7, 0x40000000    # 2.0f

    const-string v8, "2x"

    invoke-direct {v6, v7, v8}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    const/4 v7, 0x7

    new-array v7, v7, [Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv/utils/l;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/utils/l;->d(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/utils/l;->a:Ljava/util/List;

    return-object v0
.end method

.method public static final c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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

    sget v2, Lcom/transsion/shorttv/R$layout;->short_tv_layout_video_pop:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-static {v1}, Lms/l0;->a(Landroid/view/View;)Lms/l0;

    move-result-object v1

    const-string v3, "bind(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lms/l0;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/transsion/shorttv/base/widget/NpaLinearLayoutManager;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v4, v6}, Lcom/transsion/shorttv/base/widget/NpaLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, v1, Lms/l0;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/shorttv/utils/j;

    invoke-direct {v1, p1}, Lcom/transsion/shorttv/utils/j;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/transsion/shorttv/utils/k;

    invoke-direct {v3, v2, p2}, Lcom/transsion/shorttv/utils/k;-><init>(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/16 p2, 0x26

    invoke-static {p2}, Lyr/a;->a(I)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/2addr p2, p1

    const/4 p1, 0x4

    invoke-static {p1}, Lyr/a;->a(I)I

    move-result p1

    add-int/2addr p2, p1

    const/16 p1, 0x50

    invoke-static {p1}, Lyr/a;->a(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {v2, p0, v0, p1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method private static final d(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lds/d;->a:Lds/d;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p3, v1, v2}, Lds/d;->a(IJ)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    if-eqz p3, :cond_1

    check-cast p2, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

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
