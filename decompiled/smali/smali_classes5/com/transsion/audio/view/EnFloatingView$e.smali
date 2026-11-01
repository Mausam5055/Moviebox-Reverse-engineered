.class Lcom/transsion/audio/view/EnFloatingView$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/view/EnFloatingView;->packUpAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/view/EnFloatingView;


# direct methods
.method constructor <init>(Lcom/transsion/audio/view/EnFloatingView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView$e;->a:Lcom/transsion/audio/view/EnFloatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/view/EnFloatingView$e;->a:Lcom/transsion/audio/view/EnFloatingView;

    invoke-static {p1}, Lcom/transsion/audio/view/EnFloatingView;->l(Lcom/transsion/audio/view/EnFloatingView;)Lbj/d;

    move-result-object p1

    iget-object p1, p1, Lbj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/view/EnFloatingView$e;->a:Lcom/transsion/audio/view/EnFloatingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/audio/view/EnFloatingView;->n(Lcom/transsion/audio/view/EnFloatingView;Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/audio/view/EnFloatingView$e;->a:Lcom/transsion/audio/view/EnFloatingView;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/transsion/audio/view/EnFloatingView;->m(Lcom/transsion/audio/view/EnFloatingView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/view/EnFloatingView$e;->a:Lcom/transsion/audio/view/EnFloatingView;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/transsion/audio/view/EnFloatingView;->m(Lcom/transsion/audio/view/EnFloatingView;Ljava/lang/Boolean;)V

    return-void
.end method
