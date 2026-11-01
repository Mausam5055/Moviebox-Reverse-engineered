.class public final Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;
.super Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;


# instance fields
.field public OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final OooO0oO:Ljava/lang/String;

.field public OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

.field public OooOO0:Landroid/widget/ImageView;

.field public OooOO0O:Landroid/widget/ImageView;

.field public OooOO0o:Landroid/widget/ImageView;

.field public OooOOO:Landroid/widget/TextView;

.field public OooOOO0:Landroid/widget/ImageView;

.field public OooOOOO:Landroid/widget/TextView;

.field public OooOOOo:Landroid/widget/TextView;

.field public OooOOo:F

.field public OooOOo0:Landroid/widget/ImageView;

.field public OooOOoo:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "gif"

    const-string v8, "context"

    move-object/from16 v9, p1

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "triggerId"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "mainImgUrl"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "styleBean"

    move-object/from16 v10, p8

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    :try_start_0
    sget v8, Lcom/cloud/tmc/ad/R$layout;->view_interstitial_json_all_styles:I

    invoke-virtual {v0, v8}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {v0, v6}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    sget v11, Lcom/cloud/tmc/ad/R$id;->cl_content:I

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_main:I

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0:Landroid/widget/ImageView;

    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_ad:I

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0O:Landroid/widget/ImageView;

    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_homepage:I

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0o:Landroid/widget/ImageView;

    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_logo:I

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOO0:Landroid/widget/ImageView;

    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_close:I

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo0:Landroid/widget/ImageView;

    sget v11, Lcom/cloud/tmc/ad/R$id;->tv_title:I

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOO:Landroid/widget/TextView;

    sget v11, Lcom/cloud/tmc/ad/R$id;->tv_content:I

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOOO:Landroid/widget/TextView;

    sget v11, Lcom/cloud/tmc/ad/R$id;->tv_next:I

    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOOo:Landroid/widget/TextView;

    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowTitle()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOO:Landroid/widget/TextView;

    if-eqz v11, :cond_1

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v12, p5

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    :goto_0
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowDescript()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOOO:Landroid/widget/TextView;

    if-eqz v11, :cond_2

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v12, p6

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowButton()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOOo:Landroid/widget/TextView;

    if-eqz v11, :cond_3

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v12, p7

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowLogo()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "RequestOptions()\n       \u2026                        )"

    const/high16 v13, 0x41000000    # 8.0f

    if-eqz v11, :cond_4

    :try_start_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOO0:Landroid/widget/ImageView;

    if-eqz v11, :cond_4

    new-instance v14, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v14}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v15, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v15, v5, v8, v4, v6}, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;-><init>(FFFF)V

    invoke-virtual {v14, v15}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v7, v4, v5, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v6, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v13

    :goto_1
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowButton()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowLogo()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowTitle()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowDescript()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-static {v2, v7, v6, v8, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v13, v4

    :cond_6
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v8, -0x2

    const/4 v10, -0x1

    invoke-direct {v4, v10, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0:Landroid/widget/ImageView;

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    :goto_2
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    new-instance v6, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v6}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v8, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v8, v10, v5, v11, v13}, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;-><init>(FFFF)V

    invoke-virtual {v6, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenHeight()I

    move-result v6

    int-to-double v10, v6

    const-wide v12, 0x3fe70a3d70a3d70aL    # 0.72

    mul-double/2addr v10, v12

    double-to-int v6, v10

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-static {v2, v7, v6, v8, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "{\n                      \u2026                        }"

    if-eqz v3, :cond_9

    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v2, :cond_b

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/cloud/tmc/ad/interface/AdEventListener;->fillingResult(Ljava/lang/String;Z)V

    :cond_b
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0O:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0o:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo0:Landroid/widget/ImageView;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_c

    new-instance v2, Lcom/cloud/tmc/miniapp/ad/interstitial/d;

    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/ad/interstitial/d;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v1, :cond_c

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/ad/interface/AdEventListener;->fillingResult(Ljava/lang/String;Z)V

    :cond_c
    :goto_4
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    iget v4, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo:F

    iget v5, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOoo:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    new-instance v12, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    move-object v3, v12

    invoke-direct/range {v3 .. v9}, Lcom/cloud/tmc/ad/bean/DownUpPointBean;-><init>(FFFFII)V

    iget-object v10, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v10, :cond_2

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/cloud/tmc/ad/interface/AdEventListener$DefaultImpls;->click$default(Lcom/cloud/tmc/ad/interface/AdEventListener;Ljava/lang/String;Lcom/cloud/tmc/ad/bean/DownUpPointBean;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOoo:F

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V
    .locals 3

    const-string v0, "adShowBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener;->showResult(Ljava/lang/String;ZLcom/cloud/tmc/ad/bean/AdShowBean;)V

    :cond_0
    return-void
.end method

.method public OooO0O0()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0O:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/ad/interface/AdEventListener;->clickPersonalization(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0o:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/ad/interface/AdEventListener;->clickHomePage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo0:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    new-instance v8, Lcom/cloud/tmc/ad/bean/AdClickBean;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/ad/bean/AdClickBean;-><init>(IJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    invoke-virtual {v8, v1}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowTimes(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Lcom/cloud/tmc/ad/bean/AdClickBean;->getShowDuration()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v8, v1, v2}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowDuration(J)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowArea(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, v0, v8}, Lcom/cloud/tmc/ad/interface/AdEventListener;->closeAd(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdClickBean;)V

    :cond_5
    :goto_1
    return-void
.end method
