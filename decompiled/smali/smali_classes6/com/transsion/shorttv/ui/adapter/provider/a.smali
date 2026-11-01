.class public final Lcom/transsion/shorttv/ui/adapter/provider/a;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/adapter/provider/a$a;
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/a;->e:Ljava/lang/String;

    return-void
.end method

.method private final z(Landroid/view/View;Lcom/transsion/shorttv/bean/ShortTvItemType;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/shorttv/ui/adapter/provider/a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    instance-of p1, p1, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;

    goto :goto_1

    :cond_2
    instance-of p1, p1, Lcom/transsion/shorttv/ui/widget/ShortTVDiscoverHeaderView;

    goto :goto_1

    :cond_3
    instance-of p1, p1, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    goto :goto_1

    :cond_4
    instance-of p1, p1, Lcom/transsion/shorttv/ui/widget/ShortTvOpCustomView;

    goto :goto_1

    :cond_5
    instance-of p1, p1, Lcom/transsion/shorttv/ui/widget/ShortTvOpAppointmentView;

    :goto_1
    return p1
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lxs/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/provider/a;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lxs/a;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/shorttv/R$layout;->layout_view_container:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lxs/a;)V
    .locals 11

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/shorttv/R$id;->root:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Lxs/a;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lxs/a;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lxs/a;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p2}, Lxs/a;->e()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lxs/a;->a()Lcom/transsion/shorttv/bean/OperateItem;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v5

    sget-object v0, Lcom/transsion/shorttv/bean/ShortTvItemType;->Companion:Lcom/transsion/shorttv/bean/ShortTvItemType$a;

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/bean/ShortTvItemType$a;->a(Ljava/lang/String;)Lcom/transsion/shorttv/bean/ShortTvItemType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-eqz v1, :cond_b

    invoke-direct {p0, v1, v0}, Lcom/transsion/shorttv/ui/adapter/provider/a;->z(Landroid/view/View;Lcom/transsion/shorttv/bean/ShortTvItemType;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/transsion/shorttv/ui/adapter/provider/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v10, v1, v0

    :goto_0
    if-eq v10, v9, :cond_a

    if-eq v10, v8, :cond_9

    if-eq v10, v7, :cond_8

    if-eq v10, v6, :cond_7

    if-eq v10, v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v3, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;

    invoke-direct {v3, v5}, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    new-instance v6, Lcom/transsion/shorttv/ui/widget/ShortTVDiscoverHeaderView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lxs/a;->c()I

    move-result v3

    invoke-virtual {p2}, Lxs/a;->f()Z

    move-result v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTVDiscoverHeaderView;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V

    :goto_1
    move-object v3, v6

    goto :goto_2

    :cond_8
    new-instance v6, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lxs/a;->c()I

    move-result v3

    invoke-virtual {p2}, Lxs/a;->f()Z

    move-result v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V

    goto :goto_1

    :cond_9
    new-instance v6, Lcom/transsion/shorttv/ui/widget/ShortTvOpCustomView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lxs/a;->c()I

    move-result v3

    invoke-virtual {p2}, Lxs/a;->f()Z

    move-result v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTvOpCustomView;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V

    goto :goto_1

    :cond_a
    new-instance v6, Lcom/transsion/shorttv/ui/widget/ShortTvOpAppointmentView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lxs/a;->c()I

    move-result v3

    invoke-virtual {p2}, Lxs/a;->f()Z

    move-result v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTvOpAppointmentView;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_12

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_7

    :cond_b
    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    sget-object v1, Lcom/transsion/shorttv/ui/adapter/provider/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v10, v1, v0

    :goto_4
    if-eq v10, v9, :cond_11

    if-eq v10, v8, :cond_10

    if-eq v10, v7, :cond_f

    if-eq v10, v6, :cond_e

    if-eq v10, v4, :cond_d

    goto :goto_6

    :cond_d
    new-instance v3, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;

    invoke-direct {v3, v5}, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;-><init>(Landroid/content/Context;)V

    goto :goto_6

    :cond_e
    new-instance v6, Lcom/transsion/shorttv/ui/widget/ShortTVDiscoverHeaderView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lxs/a;->c()I

    move-result v3

    invoke-virtual {p2}, Lxs/a;->f()Z

    move-result v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTVDiscoverHeaderView;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V

    :goto_5
    move-object v3, v6

    goto :goto_6

    :cond_f
    new-instance v6, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lxs/a;->c()I

    move-result v3

    invoke-virtual {p2}, Lxs/a;->f()Z

    move-result v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V

    goto :goto_5

    :cond_10
    new-instance v6, Lcom/transsion/shorttv/ui/widget/ShortTvOpCustomView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lxs/a;->c()I

    move-result v3

    invoke-virtual {p2}, Lxs/a;->f()Z

    move-result v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTvOpCustomView;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V

    goto :goto_5

    :cond_11
    new-instance v6, Lcom/transsion/shorttv/ui/widget/ShortTvOpAppointmentView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lxs/a;->c()I

    move-result v3

    invoke-virtual {p2}, Lxs/a;->f()Z

    move-result v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTvOpAppointmentView;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_12

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_12
    :goto_7
    return-void
.end method
