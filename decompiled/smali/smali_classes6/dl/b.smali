.class public final Ldl/b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/home/adapter/hashtag/a$a;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/home/adapter/hashtag/a$a;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Ldl/b;->e:Lcom/transsion/home/adapter/hashtag/a$a;

    const/4 p1, 0x2

    iput p1, p0, Ldl/b;->f:I

    return-void
.end method

.method private static final A(Ldl/b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Ldl/b;->e:Lcom/transsion/home/adapter/hashtag/a$a;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/transsion/home/adapter/hashtag/a$a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    return-void
.end method

.method public static synthetic y(Ldl/b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ldl/b;->A(Ldl/b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/hashtag/model/HashTagItem;

    invoke-virtual {p0, p1, p2}, Ldl/b;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/hashtag/model/HashTagItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/home/hashtag/model/HashTagItemType;->HASHTAG_CARD:Lcom/transsion/home/hashtag/model/HashTagItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->ugc_item_hashtag_subject:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/hashtag/model/HashTagItem;)V
    .locals 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/home/hashtag/model/HashTagItem;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x42d60000    # 107.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    const/high16 v0, 0x43150000    # 149.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    iget v0, p0, Ldl/b;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x41c00000    # 24.0f

    add-float/2addr v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v4

    sub-int v0, v4, v0

    iget v5, p0, Ldl/b;->f:I

    div-int/2addr v0, v5

    sub-int/2addr v5, v1

    int-to-float v0, v5

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    const/high16 v2, 0x42da0000    # 109.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    sub-int/2addr v4, v0

    iget v0, p0, Ldl/b;->f:I

    div-int v0, v4, v0

    const/high16 v0, 0x43240000    # 164.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    const/high16 v2, 0x42b80000    # 92.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    iget v3, p0, Ldl/b;->f:I

    div-int/2addr v4, v3

    int-to-float v3, v4

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v2, v5

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    sget v2, Lcom/transsion/home/R$id;->nativeView:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/transsion/home/R$id;->group:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/Group;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    sget v2, Lcom/transsion/home/R$id;->iv_cover:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    sget v6, Lcom/transsion/home/R$id;->cover_container:I

    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v6, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v6

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v7

    const-string v8, ""

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    :cond_1
    move-object v7, v8

    :cond_2
    invoke-virtual {v6, v7}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v6

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    move-object v7, v8

    :cond_4
    invoke-virtual {v6, v7}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->cl37:I

    invoke-virtual {v6, v7}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v6

    invoke-virtual {v6, v4}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/home/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v2, v8

    :cond_5
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/transsion/home/R$id;->tv_views:I

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_0

    :cond_6
    move-wide v9, v6

    :goto_0
    cmp-long v0, v9, v6

    if-lez v0, :cond_7

    invoke-static {v9, v10}, Lcom/transsion/baseui/util/TimeUtilKt;->i(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v8

    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_8

    sget v0, Lcom/transsion/home/R$id;->tv_type:I

    invoke-virtual {p1, v0, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->separator:I

    invoke-virtual {p1, v0, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    :cond_8
    sget v2, Lcom/transsion/home/R$id;->tv_type:I

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->separator:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_2
    sget v0, Lcom/transsion/home/R$id;->iv_res_post_type:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/4 v4, 0x0

    invoke-static {v0, p2, v4, v2, v4}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :cond_9
    invoke-static {v6, v7}, Lcom/transsion/baseui/util/TimeUtilKt;->q(J)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/transsion/home/R$id;->tv_duration:I

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/transsion/home/R$id;->tag_audio:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    sget v4, Lcom/transsion/home/R$id;->tv_audio_tag:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    move v1, v5

    :cond_b
    :goto_3
    if-nez v1, :cond_c

    move v3, v5

    :cond_c
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object v8, v0

    :cond_d
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Ldl/a;

    invoke-direct {v1, p0, p2, p1}, Ldl/a;-><init>(Ldl/b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
