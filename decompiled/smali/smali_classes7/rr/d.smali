.class public final Lrr/d;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method

.method private final A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 3

    sget v0, Lcom/transsion/shorttv/R$id;->iv_tag:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lrr/d;->e:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    sget v2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_rank_defalut:I

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

    sget v0, Lcom/transsion/shorttv/R$id;->tv_rank:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lyr/b;->e(Landroid/view/View;)V

    invoke-static {p1}, Lyr/b;->e(Landroid/view/View;)V

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
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_rank_03:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget p2, Lcom/transsion/shorttv/R$id;->tv_rank:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lyr/b;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_rank_02:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget p2, Lcom/transsion/shorttv/R$id;->tv_rank:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lyr/b;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_rank_01:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget p2, Lcom/transsion/shorttv/R$id;->tv_rank:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lyr/b;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    sget p2, Lcom/transsion/shorttv/R$id;->tv_rank:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lyr/b;->b(Landroid/view/View;)V

    :cond_6
    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {p0, p1, p2}, Lrr/d;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/Subject;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_adapter_play_list:I

    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/Subject;)V
    .locals 12

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget v2, Lcom/transsion/shorttv/R$id;->tv_title:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget v2, Lcom/transsion/shorttv/R$id;->iv_cover:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v2, :cond_6

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v5

    :cond_3
    invoke-virtual {v3, v4}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v3

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v5, v4

    :cond_5
    :goto_1
    invoke-virtual {v3, v5}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_6
    sget v2, Lcom/transsion/shorttv/R$id;->tv_desc:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    sget v2, Lcom/transsion/shorttv/R$id;->tv_score:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    sget v2, Lcom/transsion/shorttv/R$id;->ll_download:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;

    const/4 v2, 0x1

    if-eqz v3, :cond_f

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/transsion/shorttv/bean/SubjectType;->SHORT_TV:Lcom/transsion/shorttv/bean/SubjectType;

    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    move-result v5

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_a

    invoke-static {v3}, Lyr/b;->e(Landroid/view/View;)V

    goto :goto_5

    :cond_a
    :goto_2
    sget-object v4, Ltr/e;->a:Ltr/e;

    invoke-virtual {v4}, Ltr/e;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v3}, Lyr/b;->e(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;->setShowPlayType()V

    goto :goto_5

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v3}, Lyr/b;->e(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getResourceDetector()Lcom/transsion/shorttv/bean/ResourceDetectors;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_d

    move v4, v2

    goto :goto_4

    :cond_d
    :goto_3
    move v4, v1

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v11

    invoke-static/range {v3 .. v10}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;->setShowType$default(Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    goto :goto_5

    :cond_e
    sget v3, Lcom/transsion/shorttv/R$id;->ll_download:I

    invoke-virtual {p1, v3, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_f
    :goto_5
    if-nez v0, :cond_12

    sget v3, Lcom/transsion/shorttv/R$id;->divider:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-static {v3}, Lyr/b;->e(Landroid/view/View;)V

    :cond_10
    sget v3, Lcom/transsion/shorttv/R$id;->bg_gradient:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-static {v3}, Lyr/b;->e(Landroid/view/View;)V

    :cond_11
    sget v3, Lcom/transsion/shorttv/R$id;->item_root:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_15

    sget v4, Lcom/transsion/shorttv/R$drawable;->short_tv_bg_category_first_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_12
    sget v3, Lcom/transsion/shorttv/R$id;->divider:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-static {v3}, Lyr/b;->b(Landroid/view/View;)V

    :cond_13
    sget v3, Lcom/transsion/shorttv/R$id;->bg_gradient:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-static {v3}, Lyr/b;->b(Landroid/view/View;)V

    :cond_14
    sget v3, Lcom/transsion/shorttv/R$id;->item_root:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/shorttv/R$color;->short_tv_bg:I

    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_15
    :goto_6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_18

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_16

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_16
    check-cast v5, Lcom/transsion/shorttv/bean/Subject;

    if-ge v4, v0, :cond_17

    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v4

    if-eqz v4, :cond_17

    add-int/lit8 v1, v1, 0x1

    :cond_17
    move v4, v6

    goto :goto_7

    :cond_18
    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lrr/d;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    sget v0, Lcom/transsion/shorttv/R$id;->iv_playlist_page_corner:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/base/widget/CornerTextView;

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getCorner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/transsion/shorttv/base/widget/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method

.method public final z(Z)V
    .locals 0

    iput-boolean p1, p0, Lrr/d;->e:Z

    return-void
.end method
