.class public Lcom/google/android/material/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/q$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/internal/q$a;

.field private final b:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/q$a;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/q;->a:Lcom/google/android/material/internal/q$a;

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/internal/q;->b:[Landroid/view/View;

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/q;->a:Lcom/google/android/material/internal/q$a;

    iput-object p2, p0, Lcom/google/android/material/internal/q;->b:[Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/internal/q;->i(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/internal/q;->k(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/internal/q;->h(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/internal/q;->j(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method

.method public static e(Ljava/util/Collection;)Lcom/google/android/material/internal/q;
    .locals 2

    new-instance v0, Lcom/google/android/material/internal/q;

    new-instance v1, Lcom/google/android/material/internal/p;

    invoke-direct {v1}, Lcom/google/android/material/internal/p;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs f([Landroid/view/View;)Lcom/google/android/material/internal/q;
    .locals 2

    new-instance v0, Lcom/google/android/material/internal/q;

    new-instance v1, Lcom/google/android/material/internal/p;

    invoke-direct {v1}, Lcom/google/android/material/internal/p;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V

    return-object v0
.end method

.method public static varargs g([Landroid/view/View;)Lcom/google/android/material/internal/q;
    .locals 2

    new-instance v0, Lcom/google/android/material/internal/q;

    new-instance v1, Lcom/google/android/material/internal/o;

    invoke-direct {v1}, Lcom/google/android/material/internal/o;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V

    return-object v0
.end method

.method private static h(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static i(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private static j(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static k(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static l(Ljava/util/Collection;)Lcom/google/android/material/internal/q;
    .locals 2

    new-instance v0, Lcom/google/android/material/internal/q;

    new-instance v1, Lcom/google/android/material/internal/m;

    invoke-direct {v1}, Lcom/google/android/material/internal/m;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs m([Landroid/view/View;)Lcom/google/android/material/internal/q;
    .locals 2

    new-instance v0, Lcom/google/android/material/internal/q;

    new-instance v1, Lcom/google/android/material/internal/m;

    invoke-direct {v1}, Lcom/google/android/material/internal/m;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V

    return-object v0
.end method

.method public static varargs n([Landroid/view/View;)Lcom/google/android/material/internal/q;
    .locals 2

    new-instance v0, Lcom/google/android/material/internal/q;

    new-instance v1, Lcom/google/android/material/internal/n;

    invoke-direct {v1}, Lcom/google/android/material/internal/n;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/internal/q;->b:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/google/android/material/internal/q;->a:Lcom/google/android/material/internal/q$a;

    invoke-interface {v4, p1, v3}, Lcom/google/android/material/internal/q$a;->a(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
