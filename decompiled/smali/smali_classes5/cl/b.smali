.class public final Lcl/b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/b$a;
    }
.end annotation


# static fields
.field public static final k:Lcl/b$a;

.field public static final l:I


# instance fields
.field private final e:Lhl/b;

.field private f:Lcom/transsion/home/bean/LayoutStyle;

.field private final g:I

.field private h:Z

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcl/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcl/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcl/b;->k:Lcl/b$a;

    const/16 v0, 0x8

    sput v0, Lcl/b;->l:I

    return-void
.end method

.method public constructor <init>(Lhl/b;Lcom/transsion/home/bean/LayoutStyle;IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcl/b;->e:Lhl/b;

    iput-object p2, p0, Lcl/b;->f:Lcom/transsion/home/bean/LayoutStyle;

    iput p3, p0, Lcl/b;->g:I

    iput-boolean p4, p0, Lcl/b;->h:Z

    const/4 p1, 0x1

    iput p1, p0, Lcl/b;->i:I

    sget p1, Lcom/transsion/home/R$layout;->ugc_item_filter_source:I

    iput p1, p0, Lcl/b;->j:I

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/UGCFilterVideoItem;

    invoke-virtual {p0, p1, p2}, Lcl/b;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/UGCFilterVideoItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcl/b;->i:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcl/b;->j:I

    return v0
.end method

.method public v(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->v(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/UGCFilterVideoItem;)V
    .locals 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->nativeView:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/home/R$id;->group:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/home/R$id;->iv_cover:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/imageview/ShapeableImageView;

    sget v4, Lcom/transsion/home/R$id;->cover_container:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    sget-object v5, Lrl/l;->a:Lrl/l;

    iget v6, p0, Lcl/b;->g:I

    iget-object v7, p0, Lcl/b;->f:Lcom/transsion/home/bean/LayoutStyle;

    invoke-virtual {v5, v6, v7, v0}, Lrl/l;->a(ILcom/transsion/home/bean/LayoutStyle;Ljava/lang/String;)Lrl/k;

    move-result-object v0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0}, Lrl/k;->a()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    move-object v6, v7

    :cond_2
    invoke-virtual {v5, v6}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v5

    sget v6, Lcom/tn/lib/widget/R$color;->cl37:I

    invoke-virtual {v5, v6}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v5

    invoke-virtual {v0}, Lrl/k;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v5

    invoke-virtual {v0}, Lrl/k;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    move-object v5, v7

    :cond_4
    invoke-virtual {v0, v5}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/home/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v3, v7

    :cond_5
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/home/R$id;->tv_views:I

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-boolean v0, p0, Lcl/b;->h:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    if-nez v0, :cond_a

    sget v0, Lcom/transsion/home/R$id;->iv_res_post_type:I

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->iv_upload_user_icon:I

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getAvatar()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_6
    move-object v4, v7

    :cond_7
    invoke-virtual {v0, v4}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    sget v4, Lcom/transsion/home/R$drawable;->icon_ugc_user_upload:I

    invoke-virtual {v0, v4}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v0

    sget v4, Lcom/transsion/home/R$id;->iv_upload_user_icon:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/home/R$id;->tv_type:I

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    :cond_8
    move-object v4, v7

    :cond_9
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->separator:I

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_0

    :cond_b
    move-wide v8, v4

    :goto_0
    cmp-long v0, v8, v4

    if-lez v0, :cond_c

    invoke-static {v8, v9}, Lcom/transsion/baseui/util/TimeUtilKt;->i(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_c
    move-object v0, v7

    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_d

    sget v0, Lcom/transsion/home/R$id;->separator:I

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->tv_type:I

    invoke-virtual {p1, v0, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_2

    :cond_d
    sget v4, Lcom/transsion/home/R$id;->separator:I

    invoke-virtual {p1, v4, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v4, Lcom/transsion/home/R$id;->tv_type:I

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_2
    sget v0, Lcom/transsion/home/R$id;->iv_res_post_type:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    sget v0, Lcom/transsion/home/R$id;->iv_res_post_type:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v0, p2, v5, v4, v5}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    sget v0, Lcom/transsion/home/R$id;->iv_upload_user_icon:I

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_3
    sget v0, Lcom/transsion/home/R$id;->tv_duration:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTimeOrCount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/transsion/home/R$id;->tag_audio:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/transsion/home/R$id;->tv_audio_tag:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    :cond_f
    :goto_4
    if-nez v3, :cond_10

    move v1, v2

    :cond_10
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    move-object v7, p2

    :cond_11
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final z(Z)V
    .locals 0

    iput-boolean p1, p0, Lcl/b;->h:Z

    return-void
.end method
