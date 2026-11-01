.class public Lcom/google/android/material/internal/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private f:J

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/g;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/material/internal/g;->b:Landroid/view/View;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/g;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/g;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/internal/g;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/g;->l(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/internal/g;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/g;->b:Landroid/view/View;

    return-object p0
.end method

.method private e(Landroid/animation/Animator;Ljava/util/List;)V
    .locals 1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(Z)Landroid/animation/AnimatorSet;
    .locals 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/g;->j(Z)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/g;->k(Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/g;->h(Z)Landroid/animation/Animator;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private h(Z)Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/g;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/internal/g;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/g;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/internal/g;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/material/internal/q;->l(Ljava/util/Collection;)Lcom/google/android/material/internal/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v1, p0, Lcom/google/android/material/internal/g;->f:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private j(Z)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/internal/g;->g:I

    invoke-static {v0, v1}, Lcom/google/android/material/internal/f0;->d(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/internal/g;->b:Landroid/view/View;

    iget v2, p0, Lcom/google/android/material/internal/g;->h:I

    invoke-static {v1, v2}, Lcom/google/android/material/internal/f0;->d(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v3, Lcom/google/android/material/internal/u;

    invoke-direct {v3, v2}, Lcom/google/android/material/internal/u;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/internal/f;

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/internal/f;-><init>(Lcom/google/android/material/internal/g;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/google/android/material/internal/g;->e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-wide v1, p0, Lcom/google/android/material/internal/g;->f:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private k(Z)Landroid/animation/Animator;
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/internal/g;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/internal/f0;->i(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/material/internal/q;->e(Ljava/util/Collection;)Lcom/google/android/material/internal/q;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v2, p0, Lcom/google/android/material/internal/g;->f:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Loa/a;->a:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v0}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic l(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/material/internal/g;->b:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/google/android/material/internal/f0;->u(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Collection;)Lcom/google/android/material/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public d(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g()Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/g;->f(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/internal/g$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/g$b;-><init>(Lcom/google/android/material/internal/g;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/google/android/material/internal/g;->c:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/internal/g;->e(Landroid/animation/Animator;Ljava/util/List;)V

    return-object v0
.end method

.method public i()Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/g;->f(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/internal/g$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/g$a;-><init>(Lcom/google/android/material/internal/g;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/google/android/material/internal/g;->c:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/internal/g;->e(Landroid/animation/Animator;Ljava/util/List;)V

    return-object v0
.end method

.method public m(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/g;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/g;->e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public n(I)Lcom/google/android/material/internal/g;
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/g;->g:I

    return-object p0
.end method

.method public o(J)Lcom/google/android/material/internal/g;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/material/internal/g;->f:J

    return-object p0
.end method
