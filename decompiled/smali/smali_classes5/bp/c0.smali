.class public final Lbp/c0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Landroidx/fragment/app/Fragment;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:I

.field private final j:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lbp/c0;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lbp/c0;->f:Ljava/lang/String;

    iput-object p3, p0, Lbp/c0;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lbp/c0;->h:Z

    const/4 p1, 0x1

    iput p1, p0, Lbp/c0;->i:I

    sget p1, Lcom/transsion/postdetail/R$layout;->item_short_tv_immersion_video:I

    iput p1, p0, Lbp/c0;->j:I

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p0, p1, p2}, Lbp/c0;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lbp/c0;->i:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lbp/c0;->j:I

    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->l()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->l()Ljava/util/List;

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

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/postdetail/R$id;->video_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    iget-object v3, p0, Lbp/c0;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lbp/c0;->f:Ljava/lang/String;

    iget-object v6, p0, Lbp/c0;->g:Ljava/lang/String;

    iget-boolean v7, p0, Lbp/c0;->h:Z

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setData(Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
