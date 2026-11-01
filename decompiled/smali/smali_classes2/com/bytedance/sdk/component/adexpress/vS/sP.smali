.class public Lcom/bytedance/sdk/component/adexpress/vS/sP;
.super Landroid/widget/FrameLayout;


# instance fields
.field private Dq:I

.field private EjP:Landroid/view/View;

.field private HiB:Landroid/view/View;

.field private Jcg:Landroid/widget/ImageView;

.field private Sj:Landroid/animation/AnimatorSet;

.field private TEQ:Landroid/content/Context;

.field private TKC:Z

.field private sP:Landroid/animation/ObjectAnimator;

.field private uA:I

.field private vS:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TKC:Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Dq:I

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->uA:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TEQ:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TKC()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->EjP()V

    return-void
.end method

.method private EjP()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->EjP:Landroid/view/View;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->EjP:Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->HiB:Landroid/view/View;

    new-array v6, v1, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->HiB:Landroid/view/View;

    new-array v7, v1, [F

    fill-array-data v7, :array_3

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->vS:Landroid/view/View;

    new-array v8, v1, [F

    fill-array-data v8, :array_4

    invoke-static {v7, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->vS:Landroid/view/View;

    new-array v8, v1, [F

    fill-array-data v8, :array_5

    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Jcg:Landroid/widget/ImageView;

    new-array v1, v1, [F

    fill-array-data v1, :array_6

    const-string v8, "rotation"

    invoke-static {v7, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->sP:Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0x5dc

    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/sP$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/vS/sP$1;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/sP;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x40200000    # 2.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x40200000    # 2.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x3e600000    # -20.0f
        0x0
    .end array-data
.end method

.method private Sj(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/vS/sP;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TKC:Z

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/vS/sP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TKC:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/adexpress/vS/sP;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private TKC()V
    .locals 8

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TEQ:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->EjP:Landroid/view/View;

    const-string v1, "#1A7BBEFF"

    const-string v2, "#337BBEFF"

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Dq:I

    int-to-double v3, v1

    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v3, v5

    double-to-int v1, v3

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->uA:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->EjP:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->EjP:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TEQ:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->HiB:Landroid/view/View;

    const-string v3, "#807BBEFF"

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Dq:I

    int-to-double v4, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v4, v6

    double-to-int v2, v4

    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->uA:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->HiB:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->HiB:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TEQ:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->vS:Landroid/view/View;

    const-string v2, "#FF7BBEFF"

    invoke-direct {p0, v3, v2}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Dq:I

    int-to-double v3, v2

    mul-double/2addr v3, v6

    double-to-int v3, v3

    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->vS:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->vS:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TEQ:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Jcg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_blue_hand"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/ib;->EjP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Jcg:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Dq:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3d70a3d70a3d7L    # 0.62

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->uA:I

    int-to-double v3, v3

    const-wide v5, 0x3fe0f5c28f5c28f6L    # 0.53

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Jcg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Jcg:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/adexpress/vS/sP;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->sP:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TKC:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->sP:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TKC:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->sP:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method
