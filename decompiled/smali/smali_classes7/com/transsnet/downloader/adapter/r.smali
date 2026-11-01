.class public final Lcom/transsnet/downloader/adapter/r;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ-\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00022\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/r;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lr6/i;",
        "<init>",
        "()V",
        "holder",
        "",
        "selected",
        "item",
        "",
        "D1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ZLcom/transsion/moviedetailapi/bean/DownloadResolutionItem;)V",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;)V",
        "",
        "",
        "payloads",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;Ljava/util/List;)V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "E1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "F",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private F:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsnet/downloader/R$layout;->item_download_re_resolution:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ZLcom/transsion/moviedetailapi/bean/DownloadResolutionItem;)V
    .locals 10

    sget v0, Lcom/transsnet/downloader/R$id;->iv_resolution:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsnet/downloader/R$id;->tv_resolution_selected:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/baseui/widget/GradientTextView;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-class v4, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v4, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/transsion/memberapi/IPremiumApi;->t()I

    move-result v3

    goto :goto_0

    :cond_0
    const/16 v3, 0x2d0

    :goto_0
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/VipInfo;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v4, Lcom/transsnet/downloader/util/b0;->a:Lcom/transsnet/downloader/util/b0;

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->getResolution()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/transsnet/downloader/util/b0;->a(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v3, :cond_3

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iget-object v6, p0, Lcom/transsnet/downloader/adapter/r;->F:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->isEduType()Z

    move-result v6

    if-ne v6, v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v6, p0, Lcom/transsnet/downloader/adapter/r;->F:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->isMusicType()Z

    move-result v6

    if-ne v6, v5, :cond_5

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    sget-object v4, Llg/a;->a:Llg/a$a;

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->getResolution()I

    move-result p3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadResResolutionTabAdapter --> refresh() --> resolution = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " --> vipResolutionRatio = "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " --> isVipSource = "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "premium_p"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v2, :cond_7

    sget p3, Lcom/transsion/baseui/R$mipmap;->p_v2_premium_2:I

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    const-string p3, "#FFDFB0"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, v0, v2, p3}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    if-eqz p2, :cond_6

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget p2, Lcom/transsnet/downloader/R$drawable;->p_v2_resolution_ratio_2_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget p2, Lcom/transsnet/downloader/R$drawable;->p_v2_resolution_ratio_3_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_7
    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/tn/lib/widget/R$color;->brand_gradient_start:I

    invoke-static {p2, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v2, Lcom/tn/lib/widget/R$color;->brand_gradient_center:I

    invoke-static {p3, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/tn/lib/widget/R$color;->brand_gradient_end:I

    invoke-static {v0, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, p2, p3, v0}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget p2, Lcom/transsnet/downloader/R$drawable;->p_v2_resolution_ratio_1_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {p2, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {p3, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v0, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, p2, p3, v0}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget p2, Lcom/transsnet/downloader/R$drawable;->p_v2_resolution_ratio_3_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->isSelected()Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/transsnet/downloader/adapter/r;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ZLcom/transsion/moviedetailapi/bean/DownloadResolutionItem;)V

    sget v0, Lcom/transsnet/downloader/R$id;->tv_resolution_selected:I

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->getResolution()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "P"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-direct {p0, p1, p3, p2}, Lcom/transsnet/downloader/adapter/r;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ZLcom/transsion/moviedetailapi/bean/DownloadResolutionItem;)V

    :cond_1
    return-void
.end method

.method public final E1(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/r;->F:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/r;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;)V

    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/adapter/r;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method
