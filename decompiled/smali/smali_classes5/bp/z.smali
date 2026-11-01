.class public final Lbp/z;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroidx/recyclerview/widget/RecyclerView$s;

.field private final h:Landroid/content/Context;

.field private final i:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private final j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;Landroid/content/Context;Landroidx/lifecycle/LifecycleCoroutineScope;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lbp/z;->e:Ljava/lang/String;

    iput-object p2, p0, Lbp/z;->f:Ljava/lang/String;

    iput-object p3, p0, Lbp/z;->g:Landroidx/recyclerview/widget/RecyclerView$s;

    iput-object p4, p0, Lbp/z;->h:Landroid/content/Context;

    iput-object p5, p0, Lbp/z;->i:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lbp/z;->j:I

    return-void
.end method

.method private static final C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/z;Landroid/view/View;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    const/4 p2, 0x0

    if-nez v1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v3, v2

    :goto_1
    iget-object v4, p1, Lbp/z;->h:Landroid/content/Context;

    if-nez v4, :cond_3

    return p2

    :cond_3
    iget-object v5, p1, Lbp/z;->i:Landroidx/lifecycle/LifecycleCoroutineScope;

    if-nez v5, :cond_4

    return p2

    :cond_4
    sget-object p2, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v0, p1, Lbp/z;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    move-object v0, v2

    :cond_5
    iget-object v6, p1, Lbp/z;->f:Ljava/lang/String;

    invoke-virtual {p2, p0, v0, v6}, Lcom/transsion/postdetail/helper/a;->l(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    iget-object p2, p1, Lbp/z;->e:Ljava/lang/String;

    if-nez p2, :cond_6

    move-object p2, v2

    :cond_6
    new-instance v6, Lbp/y;

    invoke-direct {v6, p1, p0}, Lbp/y;-><init>(Lbp/z;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->k(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlinx/coroutines/n0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final D(Lbp/z;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->C0(I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final E(III)I
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f400000    # 0.75f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    mul-int/lit8 p3, p3, 0x4

    div-int/lit8 p3, p3, 0x3

    goto :goto_0

    :cond_0
    const p2, 0x3faaaaab

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    mul-int/lit8 p3, p3, 0x3

    div-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_1
    int-to-float p2, p3

    div-float/2addr p2, p1

    float-to-int p3, p2

    :goto_0
    return p3
.end method

.method private final G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V
    .locals 1

    sget v0, Lcom/transsion/postdetail/R$id;->tv_staggered_post_like:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1, p3, p2}, Lbp/z;->F(Landroidx/appcompat/widget/AppCompatTextView;ZLcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/z;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lbp/z;->C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/z;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lbp/z;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lbp/z;->D(Lbp/z;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 13

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    move-object v0, v1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    sget v2, Lcom/transsion/postdetail/R$id;->tvPicNum:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lcom/transsion/postdetail/R$id;->ivPlaying:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    sget v4, Lcom/transsion/postdetail/R$id;->iv_cover:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v6

    :goto_3
    sget-object v7, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "getContext(...)"

    const/4 v8, 0x0

    if-eqz v5, :cond_b

    if-eqz v3, :cond_4

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v6

    :goto_4
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getWidth()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v8

    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getHeight()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_6

    :cond_8
    move v9, v8

    :goto_6
    iget v10, p0, Lbp/z;->j:I

    invoke-direct {p0, v5, v9, v10}, Lbp/z;->E(III)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v3

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    move-object v2, v1

    :cond_a
    invoke-virtual {v3, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v4}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto/16 :goto_c

    :cond_b
    if-eqz v3, :cond_c

    invoke-static {v3}, Ljg/c;->g(Landroid/view/View;)V

    :cond_c
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v3

    goto :goto_7

    :cond_d
    move-object v3, v6

    :goto_7
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_1a

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto/16 :goto_c

    :cond_e
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/Image;

    goto :goto_8

    :cond_f
    move-object v3, v6

    :goto_8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_9

    :cond_10
    move v5, v8

    :goto_9
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_a

    :cond_11
    move v10, v8

    :goto_a
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_b

    :cond_12
    move v11, v8

    :goto_b
    iget v12, p0, Lbp/z;->j:I

    invoke-direct {p0, v10, v11, v12}, Lbp/z;->E(III)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v9, Lej/f;->a:Lej/f$a;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v9

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_14

    :cond_13
    move-object v10, v1

    :cond_14
    invoke-virtual {v9, v10}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v9

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    :cond_15
    move-object v3, v1

    :cond_16
    invoke-virtual {v9, v3}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v3

    invoke-virtual {v3, v4}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_17
    const/4 v3, 0x1

    if-le v5, v3, :cond_19

    if-eqz v2, :cond_18

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_18
    if-eqz v2, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pics"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_19
    if-eqz v2, :cond_1a

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1a
    :goto_c
    sget v2, Lcom/transsion/postdetail/R$id;->tv_title:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1b

    if-eqz v2, :cond_1c

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_d

    :cond_1b
    if-eqz v2, :cond_1c

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1c
    :goto_d
    if-eqz v2, :cond_1d

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    sget v0, Lcom/transsion/postdetail/R$id;->iv_user_avatar:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_20

    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f

    :cond_1e
    move-object v3, v1

    :cond_1f
    invoke-virtual {v2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_20
    sget v0, Lcom/transsion/postdetail/R$id;->tv_user_name:I

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_21
    move-object v2, v6

    :goto_e
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/postdetail/R$id;->tv_staggered_post_like:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_26

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    move-result-object v6

    :cond_22
    if-eqz v6, :cond_24

    const-wide/16 v2, 0x0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_23

    goto :goto_f

    :cond_23
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object v1

    :cond_24
    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget v1, Lcom/tn/lib/widget/R$drawable;->room_staggered_like_icon:I

    invoke-virtual {v0, v1, v8, v8, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_10

    :cond_25
    sget v1, Lcom/tn/lib/widget/R$drawable;->room_staggered_unlike_icon:I

    invoke-virtual {v0, v1, v8, v8, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_26
    :goto_10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lbp/x;

    invoke-direct {v0, p2, p0}, Lbp/x;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/z;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/util/List;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_4

    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lbp/z;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    return-void
.end method

.method public final F(Landroidx/appcompat/widget/AppCompatTextView;ZLcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    :goto_1
    const-string p3, ""

    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    sget p2, Lcom/tn/lib/widget/R$drawable;->room_staggered_like_icon:I

    invoke-virtual {p1, p2, p3, p3, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    :cond_3
    sget p2, Lcom/tn/lib/widget/R$drawable;->room_staggered_unlike_icon:I

    invoke-virtual {p1, p2, p3, p3, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, p1, p2}, Lbp/z;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, p1, p2, p3}, Lbp/z;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/util/List;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/MediaType;->CONTENT_ALL:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/postdetail/R$layout;->item_provider_post_staggered_layout:I

    return v0
.end method
