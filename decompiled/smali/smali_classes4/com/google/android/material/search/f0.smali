.class Lcom/google/android/material/search/f0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/material/search/SearchView;

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Landroid/widget/FrameLayout;

.field private final f:Landroidx/appcompat/widget/Toolbar;

.field private final g:Landroidx/appcompat/widget/Toolbar;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/EditText;

.field private final j:Landroid/widget/ImageButton;

.field private final k:Landroid/view/View;

.field private final l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field private final m:Lwa/h;

.field private n:Landroid/animation/AnimatorSet;

.field private o:Lcom/google/android/material/search/SearchBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/material/search/f0;->b:Landroid/view/View;

    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iput-object v0, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->e:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/f0;->d:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->f:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/f0;->e:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->g:Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object v1, p0, Lcom/google/android/material/search/f0;->f:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->h:Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/google/android/material/search/f0;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->i:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/search/f0;->h:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->j:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/material/search/f0;->i:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->k:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/material/search/f0;->j:Landroid/widget/ImageButton;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->l:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/material/search/f0;->k:Landroid/view/View;

    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->m:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iput-object p1, p0, Lcom/google/android/material/search/f0;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    new-instance p1, Lwa/h;

    invoke-direct {p1, v0}, Lwa/h;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    return-void
.end method

.method private A(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/search/f0;->i:Landroid/widget/EditText;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/f0;->K(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private B(Z)Landroid/animation/AnimatorSet;
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->s(Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->t(Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-array v6, v2, [Landroid/animation/Animator;

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->H(Z)Landroid/animation/Animator;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->G(Z)Landroid/animation/Animator;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->u(Z)Landroid/animation/Animator;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->w(Z)Landroid/animation/Animator;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->F(Z)Landroid/animation/Animator;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->z(Z)Landroid/animation/Animator;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->q(Z)Landroid/animation/Animator;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->A(Z)Landroid/animation/Animator;

    move-result-object v11

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->I(Z)Landroid/animation/Animator;

    move-result-object v12

    const/16 v13, 0x9

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v4, v13, v1

    aput-object v5, v13, v0

    aput-object v6, v13, v2

    const/4 v0, 0x3

    aput-object v7, v13, v0

    const/4 v0, 0x4

    aput-object v8, v13, v0

    const/4 v0, 0x5

    aput-object v9, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v11, v13, v0

    const/16 v0, 0x8

    aput-object v12, v13, v0

    invoke-virtual {v3, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/google/android/material/search/f0$e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/search/f0$e;-><init>(Lcom/google/android/material/search/f0;Z)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3
.end method

.method private C(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-static {v0}, Lcom/google/android/material/internal/f0;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method private D(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1}, Lcom/google/android/material/internal/f0;->p(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method private E()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/search/f0;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/f0;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    return v1
.end method

.method private F(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/search/f0;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/f0;->K(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private G(Z)Landroid/animation/Animator;
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    invoke-virtual {v0}, Lwa/h;->m()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    invoke-virtual {v1}, Lwa/h;->l()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-static {v0}, Lcom/google/android/material/internal/f0;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iget-object v2, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1, v2}, Lcom/google/android/material/internal/f0;->b(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v3}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v4}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadius()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    invoke-virtual {v5}, Lwa/h;->k()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    new-instance v5, Lcom/google/android/material/internal/u;

    invoke-direct {v5, v2}, Lcom/google/android/material/internal/u;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/z;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/google/android/material/search/z;-><init>(Lcom/google/android/material/search/f0;FFLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x12c

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0xfa

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private H(Z)Landroid/animation/Animator;
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Loa/a;->a:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v0, Loa/a;->b:Landroid/animation/TimeInterpolator;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0xfa

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {p1, v0}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/search/f0;->b:Landroid/view/View;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private I(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/search/f0;->h:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/f0;->K(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private J(Z)Landroid/animation/AnimatorSet;
    .locals 4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0}, Lcom/google/android/material/search/f0;->L()Landroid/animation/Animator;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->k(Landroid/animation/AnimatorSet;)V

    sget-object v1, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x15e

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private K(ZZLandroid/view/View;)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Lcom/google/android/material/search/f0;->D(Landroid/view/View;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/material/search/f0;->C(Landroid/view/View;)I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/4 v3, 0x0

    new-array v4, v0, [F

    aput p2, v4, v2

    aput v3, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-array v4, v1, [Landroid/view/View;

    aput-object p3, v4, v2

    invoke-static {v4}, Lcom/google/android/material/internal/q;->m([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/google/android/material/search/f0;->E()I

    move-result v4

    int-to-float v4, v4

    new-array v5, v0, [F

    aput v4, v5, v2

    aput v3, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-array v4, v1, [Landroid/view/View;

    aput-object p3, v4, v2

    invoke-static {v4}, Lcom/google/android/material/internal/q;->n([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    aput-object v3, v0, v1

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xfa

    :goto_1
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p2, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, p2}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p3
.end method

.method private L()Landroid/animation/Animator;
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-array v3, v3, [Landroid/view/View;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/google/android/material/internal/q;->n([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private static synthetic N(Landroidx/appcompat/graphics/drawable/c;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/c;->setProgress(F)V

    return-void
.end method

.method private static synthetic O(Lcom/google/android/material/internal/h;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(F)V

    return-void
.end method

.method private synthetic P(FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    invoke-static {p1, p2, p4}, Loa/a;->a(FFF)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {p2, p3, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(Landroid/graphics/Rect;F)V

    return-void
.end method

.method private synthetic Q()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->B(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/f0$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/f0$a;-><init>(Lcom/google/android/material/search/f0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic R()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->J(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/f0$c;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/f0$c;-><init>(Lcom/google/android/material/search/f0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private T(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/f0;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->b(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private U(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->T(F)V

    return-void
.end method

.method private V(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/c;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/graphics/drawable/c;

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/c;->setProgress(F)V

    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/h;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/material/internal/h;

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/h;->a(F)V

    :cond_1
    return-void
.end method

.method private W(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->b(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/f0;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->W(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->g:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/search/f0;->g:Landroidx/appcompat/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/search/f0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/search/f0;->R()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/material/search/f0;FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/search/f0;->P(FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private b0()Landroid/animation/AnimatorSet;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->B(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/f0$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/f0$b;-><init>(Lcom/google/android/material/search/f0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public static synthetic c(Landroidx/appcompat/graphics/drawable/c;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/search/f0;->N(Landroidx/appcompat/graphics/drawable/c;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private c0()Landroid/animation/AnimatorSet;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->J(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/f0$d;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/f0$d;-><init>(Lcom/google/android/material/search/f0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public static synthetic d(Lcom/google/android/material/search/f0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/search/f0;->Q()V

    return-void
.end method

.method private d0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->x()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWING:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    invoke-direct {p0}, Lcom/google/android/material/search/f0;->Y()V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-instance v1, Lcom/google/android/material/search/b0;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/b0;-><init>(Lcom/google/android/material/search/f0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic e(Lcom/google/android/material/internal/h;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/search/f0;->O(Lcom/google/android/material/internal/h;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private e0()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/material/search/d0;

    invoke-direct {v1, v0}, Lcom/google/android/material/search/d0;-><init>(Lcom/google/android/material/search/SearchView;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-instance v1, Lcom/google/android/material/search/e0;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/e0;-><init>(Lcom/google/android/material/search/f0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic f(Lcom/google/android/material/search/f0;)Lcom/google/android/material/search/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/search/f0;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/f0;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/search/f0;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->U(F)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/material/search/f0;)Lcom/google/android/material/search/SearchBar;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    return-object p0
.end method

.method private j(Landroid/animation/AnimatorSet;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/search/f0;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v3}, Lcom/google/android/material/internal/ToolbarUtils;->b(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/material/search/f0;->C(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    new-array v6, v0, [F

    aput v4, v6, v2

    aput v5, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v6, v1, [Landroid/view/View;

    aput-object v3, v6, v2

    invoke-static {v6}, Lcom/google/android/material/internal/q;->m([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/google/android/material/search/f0;->E()I

    move-result v6

    int-to-float v6, v6

    new-array v7, v0, [F

    aput v6, v7, v2

    aput v5, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-array v6, v1, [Landroid/view/View;

    aput-object v3, v6, v2

    invoke-static {v6}, Lcom/google/android/material/internal/q;->n([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private k(Landroid/animation/AnimatorSet;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/f0;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->e(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, La1/a;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchView;->isAnimatedNavigationIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/f0;->m(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/f0;->n(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->V(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private l(Landroid/animation/AnimatorSet;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/search/f0;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v3}, Lcom/google/android/material/internal/ToolbarUtils;->e(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/material/search/f0;->D(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    new-array v6, v0, [F

    aput v4, v6, v2

    aput v5, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v6, v1, [Landroid/view/View;

    aput-object v3, v6, v2

    invoke-static {v6}, Lcom/google/android/material/internal/q;->m([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/google/android/material/search/f0;->E()I

    move-result v6

    int-to-float v6, v6

    new-array v7, v0, [F

    aput v6, v7, v2

    aput v5, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-array v6, v1, [Landroid/view/View;

    aput-object v3, v6, v2

    invoke-static {v6}, Lcom/google/android/material/internal/q;->n([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private m(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p2, Landroidx/appcompat/graphics/drawable/c;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/appcompat/graphics/drawable/c;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/a0;

    invoke-direct {v1, p2}, Lcom/google/android/material/search/a0;-><init>(Landroidx/appcompat/graphics/drawable/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private n(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p2, Lcom/google/android/material/internal/h;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/material/internal/h;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/c0;

    invoke-direct {v1, p2}, Lcom/google/android/material/search/c0;-><init>(Lcom/google/android/material/internal/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private q(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/search/f0;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->b(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/search/f0;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->b(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/internal/i;

    invoke-direct {v2, p1, v1}, Lcom/google/android/material/internal/i;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private s(Z)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->k(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v1, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private t(Z)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->l(Landroid/animation/AnimatorSet;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->j(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v1, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private u(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x32

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x2a

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xfa

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v1, Loa/a;->a:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/search/f0;->j:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private v(Z)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x53

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x4b

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v2, Loa/a;->a:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v2}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/search/f0;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/material/search/f0;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    new-array v0, v0, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object v2, v0, p1

    invoke-static {v0}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private w(Z)Landroid/animation/Animator;
    .locals 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->v(Z)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->y(Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->x(Z)Landroid/animation/Animator;

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

.method private x(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/search/f0;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/q;->g([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private y(Z)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/search/f0;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v4, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xfa

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Loa/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/v;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/search/f0;->k:Landroid/view/View;

    new-array v1, v3, [Landroid/view/View;

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/q;->n([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private z(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/search/f0;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/f0;->K(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method M()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/search/f0;->b0()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/f0;->c0()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public S()Landroidx/activity/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    invoke-virtual {v0}, Lwa/a;->c()Landroidx/activity/b;

    move-result-object v0

    return-object v0
.end method

.method X(Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    return-void
.end method

.method Z()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/search/f0;->d0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/f0;->e0()V

    :goto_0
    return-void
.end method

.method a0(Landroidx/activity/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    iget-object v1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0, p1, v1}, Lwa/h;->t(Landroidx/activity/b;Landroid/view/View;)V

    return-void
.end method

.method public f0(Landroidx/activity/b;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    iget-object v1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lwa/h;->v(Landroidx/activity/b;Landroid/view/View;F)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/search/f0;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAnimatedNavigationIcon()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/f0;->s(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/search/w;->a(Landroid/animation/AnimatorSet;J)V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    iget-object v1, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0, v1}, Lwa/h;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/material/search/x;->a(Landroid/animation/AnimatorSet;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public p()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/search/f0;->M()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/search/y;->a(Landroid/animation/AnimatorSet;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    iget-object v3, p0, Lcom/google/android/material/search/f0;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v2, v0, v1, v3}, Lwa/h;->j(JLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/search/f0;->t(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/f0;->n:Landroid/animation/AnimatorSet;

    return-void
.end method

.method r()Lwa/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/f0;->m:Lwa/h;

    return-object v0
.end method
