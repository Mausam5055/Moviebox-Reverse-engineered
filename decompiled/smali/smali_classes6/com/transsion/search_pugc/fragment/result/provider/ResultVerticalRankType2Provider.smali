.class public final Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;

# interfaces
.implements Lcom/transsion/search_pugc/fragment/result/provider/t;


# instance fields
.field private final synthetic e:Lcom/transsion/search_pugc/fragment/result/provider/t;


# direct methods
.method public constructor <init>(Lcom/transsion/search_pugc/fragment/result/provider/t;)V
    .locals 1

    const-string v0, "reportable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    const-string v0, "ugcVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/search_pugc/bean/SearchResultItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    return-void
.end method

.method public c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    const-string v0, "ugcVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    return-void
.end method

.method public d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V

    return-void
.end method

.method public e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    const-string v0, "ugcVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK_TYPE2:Lcom/transsion/search_pugc/constant/SearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/search/R$layout;->provider_result_vertical_rank_type2:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "helper"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_13

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-nez p2, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object v4, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    move-object v6, v7

    :cond_3
    invoke-virtual {v5, v6}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    move-object v6, v7

    :cond_5
    invoke-virtual {v5, v6}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v5

    sget v6, Lcom/transsion/search/R$id;->iv_cover:I

    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz v5, :cond_a

    sget v8, Lcom/transsion/search/R$id;->iv_cover1:I

    invoke-virtual {p1, v8, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v8

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    :cond_6
    move-object v5, v7

    :cond_7
    invoke-virtual {v8, v5}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    :cond_8
    move-object v8, v7

    :cond_9
    invoke-virtual {v5, v8}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v5

    sget v8, Lcom/transsion/search/R$id;->iv_cover1:I

    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_a
    new-instance v5, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider$convert$2;

    invoke-direct {v5, p1, v6}, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider$convert$2;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v5, v2, v6}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz v5, :cond_f

    sget v8, Lcom/transsion/search/R$id;->iv_cover2:I

    invoke-virtual {p1, v8, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v4

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    :cond_b
    move-object v5, v7

    :cond_c
    invoke-virtual {v4, v5}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    move-object v7, v5

    :cond_e
    :goto_1
    invoke-virtual {v4, v7}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    sget v5, Lcom/transsion/search/R$id;->iv_cover2:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_f
    new-instance v4, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider$convert$4;

    invoke-direct {v4, p1, v6}, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider$convert$4;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v4, v2, v6}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget v4, Lcom/transsion/search/R$id;->tv_title:I

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    goto :goto_3

    :cond_10
    move-object v5, v6

    :goto_3
    invoke-virtual {p1, v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getCount()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-le v3, v2, :cond_11

    sget v4, Lcom/transsion/search/R$id;->tv_view_resource_tag:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/transsion/search/R$string;->videos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v3, v8, v1

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_4

    :cond_11
    sget v4, Lcom/transsion/search/R$id;->tv_view_resource_tag:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/transsion/search/R$string;->video:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v3, v8, v1

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_12
    :goto_4
    sget v3, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ljg/c;->g(Landroid/view/View;)V

    new-instance v3, Lcom/transsion/baseui/util/k$a;

    sget v4, Lcom/transsion/search/R$drawable;->ic_tag_collection:I

    invoke-direct {v3, v4}, Lcom/transsion/baseui/util/k$a;-><init>(I)V

    new-instance v4, Lcom/transsion/baseui/util/k$b;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/transsion/baseui/R$string;->ugc_video_tv_collection:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "getString(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v7, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v5, Lcom/transsion/baseui/util/k$b;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, p2, v7}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/transsion/baseui/util/k;

    aput-object v3, p2, v1

    aput-object v4, p2, v2

    aput-object v5, p2, v0

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget v0, Lcom/transsion/search/R$id;->tv_info:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {p2, v2, v1, v3, v6}, Lcom/transsion/baseui/util/q;->g(Ljava/util/List;Landroid/content/Context;ZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_13
    :goto_5
    return-void
.end method
