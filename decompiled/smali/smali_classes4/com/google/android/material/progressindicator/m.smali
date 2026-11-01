.class final Lcom/google/android/material/progressindicator/m;
.super Lcom/google/android/material/progressindicator/i;


# static fields
.field private static final k:[I

.field private static final l:[I

.field private static final m:Landroid/util/Property;


# instance fields
.field private c:Landroid/animation/ObjectAnimator;

.field private d:Landroid/animation/ObjectAnimator;

.field private final e:[Landroid/view/animation/Interpolator;

.field private final f:Lcom/google/android/material/progressindicator/b;

.field private g:I

.field private h:Z

.field private i:F

.field j:Landroidx/vectordrawable/graphics/drawable/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x352

    const/16 v1, 0x2ee

    const/16 v2, 0x215

    const/16 v3, 0x237

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/m;->k:[I

    const/16 v0, 0x14d

    const/4 v1, 0x0

    const/16 v2, 0x4f3

    const/16 v3, 0x3e8

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/m;->l:[I

    new-instance v0, Lcom/google/android/material/progressindicator/m$c;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/m$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/m;->m:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/n;)V
    .locals 5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/i;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/progressindicator/m;->g:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/material/progressindicator/m;->j:Landroidx/vectordrawable/graphics/drawable/b;

    iput-object p2, p0, Lcom/google/android/material/progressindicator/m;->f:Lcom/google/android/material/progressindicator/b;

    sget p2, Lcom/google/android/material/R$anim;->linear_indeterminate_line1_head_interpolator:I

    invoke-static {p1, p2}, Landroidx/vectordrawable/graphics/drawable/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    sget v2, Lcom/google/android/material/R$anim;->linear_indeterminate_line1_tail_interpolator:I

    invoke-static {p1, v2}, Landroidx/vectordrawable/graphics/drawable/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$anim;->linear_indeterminate_line2_head_interpolator:I

    invoke-static {p1, v3}, Landroidx/vectordrawable/graphics/drawable/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$anim;->linear_indeterminate_line2_tail_interpolator:I

    invoke-static {p1, v4}, Landroidx/vectordrawable/graphics/drawable/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/view/animation/Interpolator;

    aput-object p2, v4, v1

    const/4 p2, 0x1

    aput-object v2, v4, p2

    aput-object v3, v4, v0

    const/4 p2, 0x3

    aput-object p1, v4, p2

    iput-object v4, p0, Lcom/google/android/material/progressindicator/m;->e:[Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic i(Lcom/google/android/material/progressindicator/m;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/progressindicator/m;->g:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/progressindicator/m;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/progressindicator/m;->g:I

    return p1
.end method

.method static synthetic k(Lcom/google/android/material/progressindicator/m;)Lcom/google/android/material/progressindicator/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/m;->f:Lcom/google/android/material/progressindicator/b;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/progressindicator/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/m;->h:Z

    return p1
.end method

.method static synthetic m(Lcom/google/android/material/progressindicator/m;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/m;->n()F

    move-result p0

    return p0
.end method

.method private n()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/progressindicator/m;->i:F

    return v0
.end method

.method private o()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->c:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    const-wide/16 v2, 0x708

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/material/progressindicator/m;->m:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/m;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->c:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->c:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/google/android/material/progressindicator/m$a;

    invoke-direct {v4, p0}, Lcom/google/android/material/progressindicator/m$a;-><init>(Lcom/google/android/material/progressindicator/m;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/material/progressindicator/m;->m:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/m;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/m$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/m$b;-><init>(Lcom/google/android/material/progressindicator/m;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private p()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/m;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/h$a;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/m;->f:Lcom/google/android/material/progressindicator/b;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/b;->c:[I

    iget v3, p0, Lcom/google/android/material/progressindicator/m;->g:I

    aget v2, v2, v3

    iput v2, v1, Lcom/google/android/material/progressindicator/h$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/m;->h:Z

    :cond_1
    return-void
.end method

.method private s(I)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/h$a;

    sget-object v2, Lcom/google/android/material/progressindicator/m;->l:[I

    mul-int/lit8 v3, v0, 0x2

    aget v4, v2, v3

    sget-object v5, Lcom/google/android/material/progressindicator/m;->k:[I

    aget v6, v5, v3

    invoke-virtual {p0, p1, v4, v6}, Lcom/google/android/material/progressindicator/i;->b(III)F

    move-result v4

    iget-object v6, p0, Lcom/google/android/material/progressindicator/m;->e:[Landroid/view/animation/Interpolator;

    aget-object v6, v6, v3

    invoke-interface {v6, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v6, v7}, Ld1/a;->a(FFF)F

    move-result v4

    iput v4, v1, Lcom/google/android/material/progressindicator/h$a;->a:F

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    aget v4, v5, v3

    invoke-virtual {p0, p1, v2, v4}, Lcom/google/android/material/progressindicator/i;->b(III)F

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/progressindicator/m;->e:[Landroid/view/animation/Interpolator;

    aget-object v3, v4, v3

    invoke-interface {v3, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-static {v2, v6, v7}, Ld1/a;->a(FFF)F

    move-result v2

    iput v2, v1, Lcom/google/android/material/progressindicator/h$a;->b:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/m;->q()V

    return-void
.end method

.method public d(Landroidx/vectordrawable/graphics/drawable/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/m;->j:Landroidx/vectordrawable/graphics/drawable/b;

    return-void
.end method

.method public f()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/m;->a()V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/j;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->d:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/google/android/material/progressindicator/m;->i:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->d:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/google/android/material/progressindicator/m;->i:F

    sub-float/2addr v2, v1

    const/high16 v1, 0x44e10000    # 1800.0f

    mul-float/2addr v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/m;->o()V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/m;->q()V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/m;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/m;->j:Landroidx/vectordrawable/graphics/drawable/b;

    return-void
.end method

.method q()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/m;->g:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/progressindicator/h$a;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/m;->f:Lcom/google/android/material/progressindicator/b;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/b;->c:[I

    aget v3, v3, v0

    iput v3, v2, Lcom/google/android/material/progressindicator/h$a;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method r(F)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/progressindicator/m;->i:F

    const/high16 v0, 0x44e10000    # 1800.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/m;->s(I)V

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/m;->p()V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/j;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
