.class Landroidx/transition/c$a;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Landroidx/transition/j$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/c$a;->b:Z

    iput-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/j;)V
    .locals 2

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    sget v0, Landroidx/transition/R$id;->transition_pause_alpha:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/transition/j;)V
    .locals 2

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/transition/z;->b(Landroid/view/View;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_pause_alpha:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic d(Landroidx/transition/j;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/k;->a(Landroidx/transition/j$f;Landroidx/transition/j;Z)V

    return-void
.end method

.method public e(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public f(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public g(Landroidx/transition/j;Z)V
    .locals 0

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroidx/transition/z;->e(Landroid/view/View;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/transition/c$a;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    iget-boolean p1, p0, Landroidx/transition/c$a;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Landroidx/transition/z;->e(Landroid/view/View;F)V

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/transition/z;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/c$a;->b:Z

    iget-object p1, p0, Landroidx/transition/c$a;->a:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
