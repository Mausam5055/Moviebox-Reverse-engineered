.class Lcom/transsion/publish/view/ZoomImageView$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/ZoomImageView$b;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/ZoomImageView$b;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/ZoomImageView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    iget-object p1, p1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    iget-object p1, p1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    iget-object v0, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/ZoomImageView;->a(Lcom/transsion/publish/view/ZoomImageView;)I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    iget-object v1, v1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1, p1}, Lcom/transsion/publish/view/ZoomImageView;->g(Lcom/transsion/publish/view/ZoomImageView;I)V

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    iget-object p1, p1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    iget-object v1, v1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->b(Lcom/transsion/publish/view/ZoomImageView;)I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    iget-object v2, v2, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v2, p1}, Lcom/transsion/publish/view/ZoomImageView;->h(Lcom/transsion/publish/view/ZoomImageView;I)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b$a;->a:Lcom/transsion/publish/view/ZoomImageView$b;

    iget-object p1, p1, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/transsion/publish/view/ZoomImageView;->m(Lcom/transsion/publish/view/ZoomImageView;FF)V

    :cond_0
    return-void
.end method
