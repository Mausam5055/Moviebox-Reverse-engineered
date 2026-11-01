.class public abstract Lcom/google/android/material/navigation/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x67000000

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    sput v0, Lcom/google/android/material/navigation/b;->a:I

    return-void
.end method

.method public static synthetic a(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/navigation/b;->d(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static b(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/google/android/material/navigation/b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/navigation/b$a;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)V

    return-object v0
.end method

.method public static c(Landroidx/drawerlayout/widget/DrawerLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    new-instance v0, Lcom/google/android/material/navigation/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/a;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    return-object v0
.end method

.method private static synthetic d(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/animation/ValueAnimator;)V
    .locals 2

    sget v0, Lcom/google/android/material/navigation/b;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, v1, p1}, Loa/a;->c(IIF)I

    move-result p1

    const/high16 v0, -0x67000000

    invoke-static {v0, p1}, Lz0/b;->p(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    return-void
.end method
