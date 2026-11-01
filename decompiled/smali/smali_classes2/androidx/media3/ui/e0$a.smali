.class Landroidx/media3/ui/e0$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/ui/e0;-><init>(Landroidx/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/ui/e0;


# direct methods
.method constructor <init>(Landroidx/media3/ui/e0;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-static {p1}, Landroidx/media3/ui/e0;->p(Landroidx/media3/ui/e0;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-static {p1}, Landroidx/media3/ui/e0;->p(Landroidx/media3/ui/e0;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-static {p1}, Landroidx/media3/ui/e0;->q(Landroidx/media3/ui/e0;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-static {p1}, Landroidx/media3/ui/e0;->q(Landroidx/media3/ui/e0;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-static {p1}, Landroidx/media3/ui/e0;->r(Landroidx/media3/ui/e0;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-static {p1}, Landroidx/media3/ui/e0;->r(Landroidx/media3/ui/e0;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-static {p1}, Landroidx/media3/ui/e0;->n(Landroidx/media3/ui/e0;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-static {p1}, Landroidx/media3/ui/e0;->o(Landroidx/media3/ui/e0;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/e0$a;->a:Landroidx/media3/ui/e0;

    invoke-static {p1}, Landroidx/media3/ui/e0;->n(Landroidx/media3/ui/e0;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/media3/ui/DefaultTimeBar;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroidx/media3/ui/DefaultTimeBar;->hideScrubber(J)V

    :cond_0
    return-void
.end method
