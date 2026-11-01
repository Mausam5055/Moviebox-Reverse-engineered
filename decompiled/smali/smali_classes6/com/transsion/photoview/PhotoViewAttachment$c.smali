.class Lcom/transsion/photoview/PhotoViewAttachment$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/photoview/PhotoViewAttachment;->Q(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/photoview/PhotoViewAttachment;


# direct methods
.method constructor <init>(Lcom/transsion/photoview/PhotoViewAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v3}, Lcom/transsion/photoview/PhotoViewAttachment;->K()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->K()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->m0(FFFZ)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v3}, Lcom/transsion/photoview/PhotoViewAttachment;->K()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v3}, Lcom/transsion/photoview/PhotoViewAttachment;->J()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->J()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->m0(FFFZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->L()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->m0(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->i(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->i(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->D()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v2}, Lcom/transsion/photoview/PhotoViewAttachment;->r(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->l(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/f;

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$c;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->k(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/e;

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
