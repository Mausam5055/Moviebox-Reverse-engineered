.class Lcom/transsion/publish/view/clip/ClipImageView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/clip/ClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/clip/ClipImageView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/clip/ClipImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView$a;->a:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$a;->a:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/clip/ClipImageView;->b(Lcom/transsion/publish/view/clip/ClipImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/transsion/publish/view/clip/ClipImageView$a;->a:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-virtual {v2}, Lcom/transsion/publish/view/clip/ClipImageView;->getScale()F

    move-result v2

    invoke-static {}, Lcom/transsion/publish/view/clip/ClipImageView;->f()F

    move-result v3

    cmpg-float v2, v2, v3

    const-wide/16 v3, 0x10

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/publish/view/clip/ClipImageView$a;->a:Lcom/transsion/publish/view/clip/ClipImageView;

    new-instance v5, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;

    invoke-static {}, Lcom/transsion/publish/view/clip/ClipImageView;->f()F

    move-result v6

    invoke-direct {v5, v2, v6, v0, p1}, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;-><init>(Lcom/transsion/publish/view/clip/ClipImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView$a;->a:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-static {p1, v1}, Lcom/transsion/publish/view/clip/ClipImageView;->d(Lcom/transsion/publish/view/clip/ClipImageView;Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/publish/view/clip/ClipImageView$a;->a:Lcom/transsion/publish/view/clip/ClipImageView;

    new-instance v5, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;

    invoke-static {v2}, Lcom/transsion/publish/view/clip/ClipImageView;->a(Lcom/transsion/publish/view/clip/ClipImageView;)F

    move-result v6

    invoke-direct {v5, v2, v6, v0, p1}, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;-><init>(Lcom/transsion/publish/view/clip/ClipImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView$a;->a:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-static {p1, v1}, Lcom/transsion/publish/view/clip/ClipImageView;->d(Lcom/transsion/publish/view/clip/ClipImageView;Z)V

    :goto_0
    return v1
.end method
