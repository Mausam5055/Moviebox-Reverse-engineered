.class public Lcom/bytedance/sdk/component/adexpress/vS/sef;
.super Landroid/widget/FrameLayout;


# instance fields
.field private EjP:Landroid/animation/AnimatorSet;

.field private HiB:Z

.field private Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/vS/EjP;

.field private sP:Landroid/widget/ImageView;

.field private vS:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->HiB:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->EjP:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/sef;->TKC()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/sef;->EjP()V

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/vS/sef$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/vS/sef$1;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/sef;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private EjP()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->sP:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v5, Lcom/bytedance/sdk/component/adexpress/vS/sef$2;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/component/adexpress/vS/sef$2;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/sef;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->sP:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    new-array v7, v1, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->EjP:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object v5, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/component/adexpress/vS/sef;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->HiB:Z

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/vS/sef;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->sP:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/vS/sef;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->HiB:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/adexpress/vS/sef;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    return-object p0
.end method

.method private TKC()V
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/vS/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->TKC:Lcom/bytedance/sdk/component/adexpress/vS/EjP;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800033

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->TKC:Lcom/bytedance/sdk/component/adexpress/vS/EjP;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->TKC:Lcom/bytedance/sdk/component/adexpress/vS/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->Sj()V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->sP:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->sP:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    const-string v3, "tt_splash_hand"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/ib;->EjP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->sP:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->vS:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->Sj:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->vS:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/adexpress/vS/sef;)Lcom/bytedance/sdk/component/adexpress/vS/EjP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->TKC:Lcom/bytedance/sdk/component/adexpress/vS/EjP;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->EjP:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->EjP:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->TKC:Lcom/bytedance/sdk/component/adexpress/vS/EjP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/EjP;->sP()V

    :cond_1
    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->vS:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGuideTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sef;->vS:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
