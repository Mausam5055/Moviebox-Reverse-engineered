.class public final Lcom/transsion/search_pugc/fragment/result/provider/c;
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

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getTopicType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGC_COLLECTION"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/c;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/c;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    const-string v0, "ugcVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/search_pugc/bean/SearchResultItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/c;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    return-void
.end method

.method public c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    const-string v0, "ugcVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    return-void
.end method

.method public d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V

    return-void
.end method

.method public e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    const-string v0, "ugcVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/search/R$layout;->provider_result_common:I

    return v0
.end method

.method public final y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "helper"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideos()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->EDUCATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    sget-object v5, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v5

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

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

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v7, v6

    :cond_5
    :goto_0
    invoke-virtual {v5, v7}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v5

    sget v6, Lcom/transsion/search/R$id;->iv_cover:I

    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v5, Lcom/transsion/search/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    goto :goto_1

    :cond_6
    move-object v6, v7

    :goto_1
    invoke-virtual {p1, v5, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideoNum()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    sget v6, Lcom/transsion/search/R$id;->tv_view_resource_tag:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_7

    sget v4, Lcom/transsion/baseui/R$plurals;->episodes_count_text:I

    goto :goto_2

    :cond_7
    sget v4, Lcom/transsion/baseui/R$plurals;->videos_count_text:I

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v9, v10, v1

    invoke-virtual {v8, v4, v5, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_8
    const/4 v4, 0x4

    if-eqz v3, :cond_9

    sget v3, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_3

    :cond_9
    sget v3, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v3, v2, v7, v4, v7}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    :goto_3
    sget v3, Lcom/transsion/search/R$id;->v_corner:I

    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getWatchNum()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-static {p2}, Lcom/transsion/search_pugc/constant/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_a
    move-object p2, v7

    :goto_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/transsion/search/R$string;->views:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/transsion/baseui/util/k$b;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->g(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p2, v3, v5}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Lcom/transsion/baseui/util/k$b;

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/tn/lib/widget/R$color;->white_60:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/transsion/baseui/util/k$b;

    aput-object p2, v5, v1

    aput-object v3, v5, v0

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget v0, Lcom/transsion/search/R$id;->tv_info:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2, v3, v1, v4, v7}, Lcom/transsion/baseui/util/q;->g(Ljava/util/List;Landroid/content/Context;ZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget p2, Lcom/transsion/search/R$id;->ivInfoIcon:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v2, v7, v4, v7}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "helper"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/transsion/search/R$id;->ivInfoIcon:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    invoke-static {v2, v3, v5, v4, v5}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    :goto_0
    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    const-string v6, ""

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    move-object v3, v6

    :cond_2
    invoke-virtual {v2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, v3

    :cond_4
    :goto_1
    invoke-virtual {v2, v6}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    sget v3, Lcom/transsion/search/R$id;->iv_cover:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v2, Lcom/transsion/search/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v5

    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v2, Lcom/transsion/search/R$id;->tv_view_resource_tag:I

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDuration()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/transsion/search_pugc/constant/a;->j(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v3, v5

    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v2, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    move-result v3

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_5

    :cond_8
    const/16 v3, 0x8

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/baseui/R$drawable;->ic_tag_ugc_shorts_search:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget v2, Lcom/transsion/search/R$id;->v_corner:I

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_9
    move-object v3, v5

    :goto_6
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    move v3, v1

    goto :goto_8

    :cond_b
    :goto_7
    move v3, v0

    :goto_8
    xor-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v2, Lcom/transsion/search/R$id;->tv_view_resource_corner:I

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_c
    move-object v3, v5

    :goto_9
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-static {v3}, Lcom/transsion/search_pugc/constant/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_d
    move-object v3, v5

    :goto_a
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/transsion/search/R$string;->views:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lcom/transsion/baseui/util/k$b;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_e
    move-object v6, v5

    :goto_b
    invoke-static {v6}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->g(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "getString(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Lcom/transsion/baseui/util/k$b;

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_f
    move-object p2, v5

    :goto_c
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sget v6, Lcom/tn/lib/widget/R$color;->white_60:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, p2, v6}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/transsion/baseui/util/k$b;

    aput-object v2, p2, v1

    aput-object v3, p2, v0

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget v0, Lcom/transsion/search/R$id;->tv_info:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2, v1, v4, v5}, Lcom/transsion/baseui/util/q;->g(Ljava/util/List;Landroid/content/Context;ZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method
