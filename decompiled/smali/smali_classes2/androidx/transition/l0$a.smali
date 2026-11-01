.class Landroidx/transition/l0$a;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Landroidx/transition/j$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:I

.field private final c:Landroid/view/ViewGroup;

.field private final d:Z

.field private e:Z

.field f:Z


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/l0$a;->f:Z

    iput-object p1, p0, Landroidx/transition/l0$a;->a:Landroid/view/View;

    iput p2, p0, Landroidx/transition/l0$a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/transition/l0$a;->c:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Landroidx/transition/l0$a;->d:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/transition/l0$a;->i(Z)V

    return-void
.end method

.method private h()V
    .locals 2

    iget-boolean v0, p0, Landroidx/transition/l0$a;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/transition/l0$a;->a:Landroid/view/View;

    iget v1, p0, Landroidx/transition/l0$a;->b:I

    invoke-static {v0, v1}, Landroidx/transition/z;->f(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/transition/l0$a;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/transition/l0$a;->i(Z)V

    return-void
.end method

.method private i(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/transition/l0$a;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/transition/l0$a;->e:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/transition/l0$a;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroidx/transition/l0$a;->e:Z

    invoke-static {v0, p1}, Landroidx/transition/y;->b(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/j;)V
    .locals 1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/transition/l0$a;->i(Z)V

    iget-boolean p1, p0, Landroidx/transition/l0$a;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/transition/l0$a;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/transition/z;->f(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/transition/j;)V
    .locals 1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/transition/l0$a;->i(Z)V

    iget-boolean p1, p0, Landroidx/transition/l0$a;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/transition/l0$a;->a:Landroid/view/View;

    iget v0, p0, Landroidx/transition/l0$a;->b:I

    invoke-static {p1, v0}, Landroidx/transition/z;->f(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public synthetic d(Landroidx/transition/j;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/k;->a(Landroidx/transition/j$f;Landroidx/transition/j;Z)V

    return-void
.end method

.method public e(Landroidx/transition/j;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/transition/j;->S(Landroidx/transition/j$f;)Landroidx/transition/j;

    return-void
.end method

.method public f(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public synthetic g(Landroidx/transition/j;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/k;->b(Landroidx/transition/j$f;Landroidx/transition/j;Z)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/l0$a;->f:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/l0$a;->h()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroidx/transition/l0$a;->h()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/transition/l0$a;->a:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/transition/z;->f(Landroid/view/View;I)V

    iget-object p1, p0, Landroidx/transition/l0$a;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
