.class public final Lcom/transsion/home/category/adapter/g;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/category/adapter/g;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/home/category/adapter/g;->f:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/category/adapter/g;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/CategoryItemBean;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->adapter_play_list_music:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/CategoryItemBean;)V
    .locals 13

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget v3, Lcom/transsion/home/R$id;->tv_title:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget v3, Lcom/transsion/home/R$id;->iv_cover:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v3, :cond_6

    sget-object v4, Lej/f;->a:Lej/f$a;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v6

    :cond_3
    invoke-virtual {v4, v5}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v5

    :cond_5
    :goto_1
    invoke-virtual {v4, v6}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_6
    sget v3, Lcom/transsion/home/R$id;->tvRankNum:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_a

    iget-boolean v4, p0, Lcom/transsion/home/category/adapter/g;->f:Z

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_2

    :cond_7
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/transsion/home/category/adapter/g;->f:Z

    if-eqz v4, :cond_a

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x63

    if-le v4, v5, :cond_8

    const/high16 v4, 0x41600000    # 14.0f

    goto :goto_3

    :cond_8
    const/16 v5, 0x9

    if-le v4, v5, :cond_9

    const/high16 v4, 0x41900000    # 18.0f

    goto :goto_3

    :cond_9
    const/high16 v4, 0x41a00000    # 20.0f

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_a
    sget v3, Lcom/transsion/home/R$id;->ll_download:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsnet/downloader/widget/DownloadView;

    if-eqz v3, :cond_11

    iget-object v4, p0, Lcom/transsion/home/category/adapter/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/transsnet/downloader/widget/DownloadView;->setPageFrom(Ljava/lang/String;)V

    sget-object v4, Lak/t;->a:Lak/t;

    invoke-virtual {v4}, Lak/t;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    goto :goto_9

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4

    :cond_c
    move v3, v2

    :goto_4
    const/4 v4, 0x1

    if-eqz v3, :cond_10

    sget v3, Lcom/transsion/home/R$id;->ll_download:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/transsnet/downloader/widget/DownloadView;

    if-eqz v5, :cond_11

    invoke-static {v5}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    :goto_5
    move-object v6, p2

    goto :goto_6

    :cond_d
    const/4 p2, 0x0

    goto :goto_5

    :goto_6
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_f

    goto :goto_8

    :cond_f
    :goto_7
    move v4, v2

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    goto :goto_9

    :cond_10
    sget p2, Lcom/transsion/home/R$id;->ll_download:I

    invoke-virtual {p1, p2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_11
    :goto_9
    if-nez v1, :cond_14

    sget p2, Lcom/transsion/home/R$id;->divider:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_12
    sget p2, Lcom/transsion/home/R$id;->bg_gradient:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_13

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_13
    sget p2, Lcom/transsion/home/R$id;->item_root:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_17

    sget v3, Lcom/transsion/home/R$drawable;->bg_category_first_item:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    :cond_14
    sget p2, Lcom/transsion/home/R$id;->divider:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_15

    invoke-static {p2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_15
    sget p2, Lcom/transsion/home/R$id;->bg_gradient:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_16

    invoke-static {p2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_16
    sget p2, Lcom/transsion/home/R$id;->item_root:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->bg_01:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_17
    :goto_a
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p2

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1a

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_18

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_18
    check-cast v3, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    if-ge v2, v1, :cond_19

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    :cond_19
    move v2, v4

    goto :goto_b

    :cond_1a
    sget p2, Lcom/transsion/home/R$id;->iv_playlist_page_corner:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tn/lib/view/CornerTextView;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/tn/lib/view/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    :cond_1b
    return-void
.end method
