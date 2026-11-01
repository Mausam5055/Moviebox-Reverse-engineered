.class public final Lcom/transsion/home/category/adapter/f;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/category/adapter/f;->e:Ljava/lang/String;

    return-void
.end method

.method private final z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 3

    sget v0, Lcom/transsion/home/R$id;->iv_tag:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    sget v2, Lcom/transsion/home/R$mipmap;->ic_rank_defalut:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    sget v0, Lcom/transsion/home/R$id;->tv_rank:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    if-ge p2, v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    sget p2, Lcom/transsion/home/R$mipmap;->ic_rank_03:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget p2, Lcom/transsion/home/R$id;->tv_rank:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    sget p2, Lcom/transsion/home/R$mipmap;->ic_rank_02:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget p2, Lcom/transsion/home/R$id;->tv_rank:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    sget p2, Lcom/transsion/home/R$mipmap;->ic_rank_01:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget p2, Lcom/transsion/home/R$id;->tv_rank:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/category/adapter/f;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/CategoryItemBean;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->adapter_play_list:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/CategoryItemBean;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "helper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sget v6, Lcom/transsion/home/R$id;->tv_title:I

    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget v6, Lcom/transsion/home/R$id;->iv_cover:I

    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v6, :cond_6

    sget-object v7, Lej/f;->a:Lej/f$a;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "getContext(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v7

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v8

    const-string v9, ""

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_2
    move-object v8, v9

    :cond_3
    invoke-virtual {v7, v8}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v7

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    move-object v9, v8

    :cond_5
    :goto_1
    invoke-virtual {v7, v9}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v7

    invoke-virtual {v7, v6}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_6
    sget v6, Lcom/transsion/home/R$id;->tv_desc:I

    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_7
    move-object v8, v7

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    sget v6, Lcom/transsion/home/R$id;->tv_score:I

    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    sget v6, Lcom/transsion/home/R$id;->ll_download:I

    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/transsnet/downloader/widget/DownloadView;

    const/4 v8, 0x1

    if-eqz v6, :cond_12

    iget-object v9, v0, Lcom/transsion/home/category/adapter/f;->e:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/transsnet/downloader/widget/DownloadView;->setPageFrom(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v10

    if-nez v9, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v10, :cond_b

    invoke-static {v6}, Ljg/c;->k(Landroid/view/View;)V

    goto/16 :goto_7

    :cond_b
    :goto_3
    sget-object v9, Lak/t;->a:Lak/t;

    invoke-virtual {v9}, Lak/t;->b()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {v6}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual {v6}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    goto :goto_7

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4

    :cond_d
    move v6, v5

    :goto_4
    if-eqz v6, :cond_11

    sget v6, Lcom/transsion/home/R$id;->ll_download:I

    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/transsnet/downloader/widget/DownloadView;

    if-eqz v9, :cond_12

    invoke-static {v9}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    :cond_e
    move-object v10, v7

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_10

    move v2, v8

    goto :goto_6

    :cond_10
    :goto_5
    move v2, v5

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/16 v15, 0x18

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    goto :goto_7

    :cond_11
    sget v2, Lcom/transsion/home/R$id;->ll_download:I

    invoke-virtual {v1, v2, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_12
    :goto_7
    if-nez v4, :cond_15

    sget v2, Lcom/transsion/home/R$id;->divider:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_13
    sget v2, Lcom/transsion/home/R$id;->bg_gradient:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_14
    sget v2, Lcom/transsion/home/R$id;->item_root:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_18

    sget v6, Lcom/transsion/home/R$drawable;->bg_category_first_item:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :cond_15
    sget v2, Lcom/transsion/home/R$id;->divider:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_16
    sget v2, Lcom/transsion/home/R$id;->bg_gradient:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_17
    sget v2, Lcom/transsion/home/R$id;->item_root:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->bg_01:I

    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_18
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1b

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v5

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v9, v6, 0x1

    if-gez v6, :cond_19

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_19
    check-cast v7, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    if-ge v6, v4, :cond_1a

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v6

    if-eqz v6, :cond_1a

    add-int/lit8 v5, v5, 0x1

    :cond_1a
    move v6, v9

    goto :goto_9

    :cond_1b
    add-int/2addr v4, v8

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v4}, Lcom/transsion/home/category/adapter/f;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    sget v2, Lcom/transsion/home/R$id;->iv_playlist_page_corner:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tn/lib/view/CornerTextView;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tn/lib/view/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    :cond_1c
    return-void
.end method
