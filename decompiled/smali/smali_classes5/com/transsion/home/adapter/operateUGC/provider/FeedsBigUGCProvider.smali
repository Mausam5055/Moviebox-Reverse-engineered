.class public final Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;
.super Lcom/transsion/home/adapter/trending/provider/b;


# instance fields
.field private final e:I

.field private final f:I

.field private final g:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/b;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->f:I

    new-instance p1, Lcom/transsion/home/adapter/operateUGC/provider/e;

    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/operateUGC/provider/e;-><init>(Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic D(Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;)Lhl/d;
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->I(Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;)Lhl/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->G(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final G(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getFeedsUGCVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p3

    if-eqz p3, :cond_2

    iget v0, p1, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {p3, v0, v1}, Lov/c;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_2
    sget-object p3, Lhl/d;->c:Lhl/d$a;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result p2

    iget p1, p1, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    invoke-virtual {p3, p2, p0, p1}, Lhl/d$a;->c(ILcom/transsion/home/bean/OperateItem;I)V

    return-void
.end method

.method private final H()Lhl/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhl/d;

    return-object v0
.end method

.method private static final I(Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;)Lhl/d;
    .locals 2

    new-instance v0, Lhl/d;

    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    invoke-virtual {v1, p0}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lhl/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 11

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v1, "UGCFeedsBig"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFeedsUGCVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_image:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBuiltIn()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v5

    new-instance v8, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider$convert$1$1;

    invoke-direct {v8, v0, v1, v3}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider$convert$1$1;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    sget-object v4, Lej/f;->a:Lej/f$a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v2

    :cond_3
    invoke-virtual {v4, v5}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    iget v5, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->f:I

    invoke-virtual {v4, v5}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    move-object v5, v2

    :cond_5
    invoke-virtual {v4, v5}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    sget v5, Lcom/transsion/wrapperad/R$color;->module_01:I

    invoke-virtual {v4, v5}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v4

    invoke-virtual {v4, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_6
    :goto_0
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_title:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_corner:I

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_type_icon:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    const/4 v4, 0x4

    invoke-static {v1, v0, v3, v4, v3}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_8
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_time_text:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTimeOrCount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_title:I

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/baseui/R$string;->ugc_video_shorts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "special_#shorts_icon"

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_6

    :cond_9
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    iget v6, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    move-result-object v3

    :cond_a
    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    move-object v2, v0

    :cond_d
    :goto_1
    const-string v0, "special_#user_icon"

    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_e
    :goto_2
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    sget-object v3, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v3}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_10

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    :cond_f
    move-wide v2, v4

    :goto_3
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->j(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_4

    :cond_11
    move-wide v2, v4

    :goto_4
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->i(J)Ljava/lang/String;

    move-result-object v0

    :goto_5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_6
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_subtitle:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/baseui/util/q;->e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/home/adapter/operateUGC/provider/d;

    invoke-direct {v1, p2, p0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/d;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v1}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_12

    invoke-direct {p0}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->H()Lhl/d;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    move-result p1

    invoke-virtual {v0, p2, p1, v4, v5}, Lhl/d;->a(Lcom/transsion/home/bean/OperateItem;IJ)V

    :cond_12
    :goto_7
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_BIG:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->provider_ugc_item_big:I

    return v0
.end method
