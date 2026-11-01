.class Lcom/google/android/material/search/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/i$g;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private d:Landroid/animation/Animator;

.field private e:Landroid/animation/Animator;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/animation/Animator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/i;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/i;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/i;->c:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/i;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    return-void
.end method

.method private static synthetic A(Lab/i;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    invoke-virtual {p0, p2}, Lab/i;->e0(F)V

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static synthetic B(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic C(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/i;->t(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/i;->o(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object v1, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance p1, Lcom/google/android/material/search/i$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/search/i$c;-><init>(Lcom/google/android/material/search/i;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/search/i;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/search/i;->B(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/search/i;->C(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    return-void
.end method

.method public static synthetic c(Lab/i;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/material/search/i;->A(Lab/i;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/search/i;Lcom/google/android/material/search/i$g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->k(Lcom/google/android/material/search/i$g;)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/search/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/i;->f:Z

    return p1
.end method

.method static synthetic f(Lcom/google/android/material/search/i;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic g(Lcom/google/android/material/search/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/i;->g:Z

    return p1
.end method

.method private k(Lcom/google/android/material/search/i$g;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/i;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/search/SearchBar$b;

    invoke-interface {p1, v1}, Lcom/google/android/material/search/i$g;->a(Lcom/google/android/material/search/SearchBar$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/i;->p(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/g;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->o(J)Lcom/google/android/material/internal/g;

    move-result-object p2

    new-instance p3, Lcom/google/android/material/search/i$f;

    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/i$f;-><init>(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/g;->d(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/g;->g()Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private m(Landroid/view/View;)Landroid/animation/Animator;
    .locals 12

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v3, Loa/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v5, p0, Lcom/google/android/material/search/i;->h:Z

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xfa

    if-eqz v5, :cond_0

    move-wide v10, v8

    goto :goto_0

    :cond_0
    move-wide v10, v6

    :goto_0
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-boolean v5, p0, Lcom/google/android/material/search/i;->h:Z

    if-eqz v5, :cond_1

    const-wide/16 v6, 0x1f4

    :cond_1
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-array v6, v2, [Landroid/view/View;

    aput-object p1, v6, v4

    invoke-static {v6}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x2ee

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v4

    aput-object v5, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object p1

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
.end method

.method private n(Landroid/view/View;)Ljava/util/List;
    .locals 5

    invoke-static {p1}, Lcom/google/android/material/internal/f0;->p(Landroid/view/View;)Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v0, :cond_0

    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v4, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v4, :cond_2

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private o(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/i;->p(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/g;

    move-result-object p2

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->o(J)Lcom/google/android/material/internal/g;

    move-result-object p2

    new-instance p3, Lcom/google/android/material/search/i$d;

    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/i$d;-><init>(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/g;->d(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/g;->i()Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private p(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/g;
    .locals 1

    new-instance v0, Lcom/google/android/material/internal/g;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/g;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/i;->q(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->m(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/g;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/g;->n(I)Lcom/google/android/material/internal/g;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/google/android/material/search/i;->n(Landroid/view/View;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/g;->c(Ljava/util/Collection;)Lcom/google/android/material/internal/g;

    move-result-object p1

    return-object p1
.end method

.method private q(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lab/i;->m(Landroid/content/Context;)Lab/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lab/i;->a0(F)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p1

    invoke-virtual {v0, p1}, Lab/i;->c0(F)V

    new-instance p1, Lcom/google/android/material/search/f;

    invoke-direct {p1, v0, p2}, Lcom/google/android/material/search/f;-><init>(Lab/i;Landroid/view/View;)V

    return-object p1
.end method

.method private r(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;
    .locals 2

    invoke-static {p1}, Lcom/google/android/material/internal/f0;->i(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private s(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->r(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/material/internal/q;->e(Ljava/util/Collection;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Loa/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private t(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->r(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/material/internal/q;->e(Ljava/util/Collection;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/google/android/material/search/g;

    invoke-direct {p1, p2}, Lcom/google/android/material/search/g;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p1, 0x4b

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Loa/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private u(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p1, Loa/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private v(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->w(Landroid/widget/TextView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/material/search/i;->u(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-object v0
.end method

.method private w(Landroid/widget/TextView;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p1, Loa/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method D(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/i;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method E(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/i;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method F(Lcom/google/android/material/search/SearchBar$b;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/i;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method G(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/i;->h:Z

    return-void
.end method

.method H(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/material/search/i;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/search/i;->g:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/i;->l(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->s(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p2, p3, v2

    aput-object p1, p3, v0

    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance p1, Lcom/google/android/material/search/i$e;

    invoke-direct {p1, p0}, Lcom/google/android/material/search/i$e;-><init>(Lcom/google/android/material/search/i;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/search/i;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-wide/16 p1, 0x0

    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    return-void
.end method

.method I(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/material/search/i;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/i;->f:Z

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/google/android/material/search/e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/search/e;-><init>(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method J(Lcom/google/android/material/search/SearchBar;)V
    .locals 4

    new-instance v0, Lcom/google/android/material/search/d;

    invoke-direct {v0}, Lcom/google/android/material/search/d;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/i;->k(Lcom/google/android/material/search/i$g;)V

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->f(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/search/i;->v(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/search/i$a;

    invoke-direct {v3, p0}, Lcom/google/android/material/search/i$a;-><init>(Lcom/google/android/material/search/i;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcom/google/android/material/search/i;->d:Landroid/animation/Animator;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/google/android/material/search/i;->m(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/search/i;->e:Landroid/animation/Animator;

    new-instance v0, Lcom/google/android/material/search/i$b;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/material/search/i$b;-><init>(Lcom/google/android/material/search/i;Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method K(Lcom/google/android/material/search/SearchBar;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/i;->d:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/i;->e:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method h(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/i;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method i(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/i;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method j(Lcom/google/android/material/search/SearchBar$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/i;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/i;->g:Z

    return v0
.end method

.method y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/i;->f:Z

    return v0
.end method

.method z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/search/i;->h:Z

    return v0
.end method
