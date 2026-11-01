.class Lcom/google/android/exoplayer2/ui/i0$b;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/i0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/i0;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/i0;->p(Lcom/google/android/exoplayer2/ui/i0;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/i0;->p(Lcom/google/android/exoplayer2/ui/i0;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/i0;->q(Lcom/google/android/exoplayer2/ui/i0;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/i0;->q(Lcom/google/android/exoplayer2/ui/i0;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/i0;->r(Lcom/google/android/exoplayer2/ui/i0;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/i0;->r(Lcom/google/android/exoplayer2/ui/i0;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/i0;->o(Lcom/google/android/exoplayer2/ui/i0;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/i0;->n(Lcom/google/android/exoplayer2/ui/i0;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/i0;->o(Lcom/google/android/exoplayer2/ui/i0;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/i0$b;->a:Lcom/google/android/exoplayer2/ui/i0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/i0;->n(Lcom/google/android/exoplayer2/ui/i0;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->showScrubber(J)V

    :cond_4
    return-void
.end method
