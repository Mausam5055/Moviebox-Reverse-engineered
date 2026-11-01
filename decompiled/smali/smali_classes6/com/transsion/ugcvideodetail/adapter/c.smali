.class public final Lcom/transsion/ugcvideodetail/adapter/c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:I


# direct methods
.method public constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/adapter/c;->e:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/adapter/c;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/adapter/c;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/ugcvideodetail/adapter/c;->h:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/ugcvideodetail/adapter/c;->i:I

    sget p1, Lcom/transsion/ugcvideodetail/R$layout;->item_ugc_imm_video_detail:I

    iput p1, p0, Lcom/transsion/ugcvideodetail/adapter/c;->j:I

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/adapter/c;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V

    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/adapter/c;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Ljava/util/List;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/transsion/ugcvideodetail/adapter/c;->i:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/transsion/ugcvideodetail/adapter/c;->j:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/ugcvideodetail/R$id;->viewImmVideoItem:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/adapter/c;->e:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    iget-object v3, p0, Lcom/transsion/ugcvideodetail/adapter/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/ugcvideodetail/adapter/c;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/ugcvideodetail/adapter/c;->h:Ljava/lang/String;

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setData(Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V

    return-void
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Ljava/util/List;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    sget p3, Lcom/transsion/ugcvideodetail/R$id;->viewImmVideoItem:I

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setDownloadStatus(I)V

    :cond_0
    return-void
.end method
