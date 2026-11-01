.class public Lcom/bytedance/adsdk/ugeno/core/Jcg;
.super Ljava/lang/Object;


# instance fields
.field private EjP:Landroid/view/View;

.field private HiB:I

.field private Jcg:Ljava/lang/String;

.field Sj:Landroid/graphics/Paint;

.field private TKC:Landroid/animation/AnimatorSet;

.field private sP:Lcom/bytedance/adsdk/ugeno/core/Sj;

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytedance/adsdk/ugeno/core/Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->EjP:Landroid/view/View;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/core/Sj;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->TKC:Landroid/animation/AnimatorSet;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->Sj:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/core/Jcg;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->EjP:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/core/Sj;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/ugeno/core/Sj;->TKC()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;

    if-eqz v5, :cond_1

    new-instance v6, Landroid/animation/ObjectAnimator;

    invoke-direct {v6}, Landroid/animation/ObjectAnimator;-><init>()V

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Sj()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v7

    const-string v8, "translateX"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "translationX"

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v7

    const-string v8, "translateY"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "translationY"

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->EjP()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->EjP:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v7

    const-string v8, "backgroundColor"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->vS()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Jcg()F

    move-result v9

    float-to-int v9, v9

    filled-new-array {v7, v9}, [I

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "playAnimation: from = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->vS()F

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "; to="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Jcg()F

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->vS()F

    move-result v7

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Jcg()F

    move-result v9

    new-array v10, v2, [F

    aput v7, v10, v0

    aput v9, v10, v1

    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :goto_2
    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/core/Sj;

    invoke-virtual {v7}, Lcom/bytedance/adsdk/ugeno/core/Sj;->sP()F

    move-result v7

    float-to-int v7, v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->sP()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :goto_3
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_6
    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/core/Sj;

    invoke-virtual {v7}, Lcom/bytedance/adsdk/ugeno/core/Sj;->vS()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TKC()Ljava/lang/String;

    move-result-object v7

    :cond_7
    const-string v8, "reverse"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :goto_4
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Dq()[F

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Dq()[F

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_9

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Dq()[F

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :cond_9
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v7

    const-string v8, "rotationX"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->EjP:Landroid/view/View;

    new-instance v8, Lcom/bytedance/adsdk/ugeno/core/Jcg$1;

    invoke-direct {v8, p0}, Lcom/bytedance/adsdk/ugeno/core/Jcg$1;-><init>(Lcom/bytedance/adsdk/ugeno/core/Jcg;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ripple"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TEQ()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->Jcg:Ljava/lang/String;

    :cond_b
    invoke-virtual {v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->uA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v8, "standard"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_5

    :cond_c
    const/4 v7, 0x4

    goto :goto_5

    :sswitch_1
    const-string v8, "accelerateDecelerate"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    :cond_d
    const/4 v7, 0x3

    goto :goto_5

    :sswitch_2
    const-string v8, "linear"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_5

    :cond_e
    move v7, v2

    goto :goto_5

    :sswitch_3
    const-string v8, "decelerate"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_5

    :cond_f
    move v7, v1

    goto :goto_5

    :sswitch_4
    const-string v8, "accelerate"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_5

    :cond_10
    move v7, v0

    :goto_5
    packed-switch v7, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    :pswitch_1
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    :pswitch_2
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    :pswitch_3
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_6
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/core/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/Sj;->EjP()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->TKC:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/core/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/Sj;->EjP()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_12
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->TKC:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/core/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/Sj;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/core/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/Sj;->Sj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sequentially"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->TKC:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    goto :goto_7

    :cond_13
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->TKC:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    :goto_7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->TKC:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_14
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50bb8523 -> :sswitch_4
        -0x4b5653c4 -> :sswitch_3
        -0x41b970db -> :sswitch_2
        0x1c5dd2f9 -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Sj(II)V
    .locals 0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->HiB:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->vS:I

    return-void
.end method

.method public Sj(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/ugeno/core/IAnimation;)V
    .locals 4

    :try_start_0
    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/core/IAnimation;->getRipple()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->Jcg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->Jcg:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->Sj:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->Sj:Landroid/graphics/Paint;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->EjP:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->HiB:I

    int-to-float v1, v0

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->vS:I

    int-to-float v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/core/IAnimation;->getRipple()F

    move-result p2

    mul-float/2addr v0, p2

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->Sj:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ripple animation error "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Jcg;->TKC:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method
