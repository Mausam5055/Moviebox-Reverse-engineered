.class public Lcom/bytedance/sdk/component/adexpress/vS/zR;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private Dq:Landroid/animation/AnimatorSet;

.field private EjP:Landroid/widget/TextView;

.field private HiB:Landroid/widget/TextView;

.field private Jcg:Landroid/animation/AnimatorSet;

.field private Sj:Landroid/widget/ImageView;

.field private TEQ:Ljava/lang/String;

.field private TKC:Landroid/widget/ImageView;

.field private Ym:I

.field private sP:Landroid/widget/ImageView;

.field private uA:Landroid/animation/AnimatorSet;

.field private vS:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->vS:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Jcg:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Dq:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->uA:Landroid/animation/AnimatorSet;

    const/16 v0, 0x64

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Ym:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Sj(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->vS:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Jcg:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Dq:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->uA:Landroid/animation/AnimatorSet;

    const/16 v0, 0x64

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Ym:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->TEQ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Sj(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/vS/zR;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->vS:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/adexpress/vS/zR;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->TKC:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->TKC()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->vS:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->vS:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/zR$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/vS/zR$1;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/zR;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected Sj(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object p1

    :cond_0
    const-string v0, "5"

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->TEQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->vS(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Ym:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Ym:I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->HiB(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    const p1, 0x7d06ffee

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Sj:Landroid/widget/ImageView;

    const p1, 0x7d06ffef

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP:Landroid/widget/ImageView;

    const p1, 0x7d06ffea

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->EjP:Landroid/widget/TextView;

    const p1, 0x7d06ffed

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->TKC:Landroid/widget/ImageView;

    const p1, 0x7d06ffeb

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->HiB:Landroid/widget/TextView;

    return-void
.end method

.method public TKC()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Sj:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    const-string v7, "alpha"

    invoke-static {v2, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v6, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Sj:Landroid/widget/ImageView;

    new-array v8, v5, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Sj:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Ym:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v9

    new-array v10, v5, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v12, 0x1

    aput v9, v10, v12

    const-string v9, "translationY"

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v13, 0x3e4ccccd    # 0.2f

    const v14, 0x3e99999a    # 0.3f

    invoke-direct {v10, v13, v3, v14, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v15, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Ym:I

    int-to-float v15, v15

    invoke-static {v10, v15}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    filled-new-array {v11, v10}, [I

    move-result-object v10

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v15, Lcom/bytedance/sdk/component/adexpress/vS/zR$2;

    invoke-direct {v15, v0}, Lcom/bytedance/sdk/component/adexpress/vS/zR$2;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/zR;)V

    invoke-virtual {v10, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v13, v3, v14, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v15, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->TKC:Landroid/widget/ImageView;

    new-array v1, v5, [F

    fill-array-data v1, :array_2

    invoke-static {v15, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v15, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->TKC:Landroid/widget/ImageView;

    new-array v4, v5, [F

    fill-array-data v4, :array_3

    invoke-static {v15, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v15, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP:Landroid/widget/ImageView;

    new-array v13, v5, [F

    fill-array-data v13, :array_4

    invoke-static {v15, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v15, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP:Landroid/widget/ImageView;

    new-array v14, v5, [F

    fill-array-data v14, :array_5

    invoke-static {v15, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v14, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP:Landroid/widget/ImageView;

    const-string v15, "scaleX"

    new-array v12, v5, [F

    fill-array-data v12, :array_6

    invoke-static {v14, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v14, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP:Landroid/widget/ImageView;

    const-string v15, "scaleY"

    new-array v3, v5, [F

    fill-array-data v3, :array_7

    invoke-static {v14, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v14, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    iget v11, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Ym:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-static {v15, v11}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v11

    new-array v15, v5, [F

    const/4 v5, 0x0

    const/16 v18, 0x0

    aput v5, v15, v18

    const/16 v17, 0x1

    aput v11, v15, v17

    invoke-static {v14, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-instance v11, Landroid/view/animation/PathInterpolator;

    move-object/from16 v16, v10

    const v10, 0x3e99999a    # 0.3f

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3e4ccccd    # 0.2f

    invoke-direct {v11, v15, v5, v10, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v9, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Jcg:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x32

    invoke-virtual {v5, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->uA:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0x5dc

    invoke-virtual {v5, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Dq:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Jcg:Landroid/animation/AnimatorSet;

    const/4 v10, 0x3

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v6, v11, v14

    const/4 v6, 0x1

    aput-object v7, v11, v6

    const/4 v7, 0x2

    aput-object v4, v11, v7

    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Dq:Landroid/animation/AnimatorSet;

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v14

    aput-object v13, v5, v6

    aput-object v12, v5, v7

    aput-object v3, v5, v10

    const/4 v2, 0x4

    aput-object v1, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->uA:Landroid/animation/AnimatorSet;

    new-array v2, v10, [Landroid/animation/Animator;

    aput-object v8, v2, v14

    aput-object v16, v2, v6

    aput-object v9, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->vS:Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Dq:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->uA:Landroid/animation/AnimatorSet;

    iget-object v4, v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Jcg:Landroid/animation/AnimatorSet;

    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v2, v5, v14

    aput-object v3, v5, v6

    aput-object v4, v5, v7

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSlideUpAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->vS:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP()V

    return-void
.end method

.method public sP()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->vS:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Dq:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Jcg:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->uA:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->EjP:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSlideText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->HiB:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->HiB:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR;->HiB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
