.class public final Lcom/transsion/shorttv_pugc/ui/adapter/g;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

.field private f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    iput-boolean p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->f:Z

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->h:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->i:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->j:I

    sget p1, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_item_video:I

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->k:I

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/g;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/adapter/g;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/util/List;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->j:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->k:I

    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/shorttv_pugc/utils/e;->c:Lcom/transsion/shorttv_pugc/utils/e$a;

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/utils/e$a;->a()Lcom/transsion/shorttv_pugc/utils/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/utils/e;->d()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/utils/e$a;->a()Lcom/transsion/shorttv_pugc/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/utils/e;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/shorttv/R$id;->view_video_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->f:Z

    iget-object v5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->h:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->i:Z

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v10}, Lcom/transsion/shorttv_pugc/ui/widget/a$a;->a(Lcom/transsion/shorttv_pugc/ui/widget/a;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/util/List;)V
    .locals 9

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    sget v0, Lcom/transsion/shorttv/R$id;->view_video_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->f:Z

    iget-object v5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->h:Ljava/lang/String;

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->i:Z

    move-object v1, p2

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setData(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_1
    instance-of p1, p3, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->updateLockState(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    :cond_2
    :goto_2
    return-void
.end method
