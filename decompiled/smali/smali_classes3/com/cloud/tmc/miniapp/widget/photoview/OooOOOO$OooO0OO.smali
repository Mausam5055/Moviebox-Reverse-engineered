.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    cmpg-float v5, v1, v4

    if-gez v5, :cond_0

    invoke-virtual {v3, v4, v2, p1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(FFFZ)V

    goto :goto_0

    :cond_0
    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    invoke-virtual {v3, v4, v2, p1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(FFFZ)V

    goto :goto_0

    :cond_1
    iget v1, v3, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    invoke-virtual {v3, v1, v2, p1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(FFFZ)V
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
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v3, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo00:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-interface {v3, v2, v1, p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;->OooO00o(Landroid/view/View;FF)V

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-interface {v2, v0, v1, p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO;->OooO00o(Landroid/widget/ImageView;FF)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOoo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0o;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO0o;->OooO00o(Landroid/widget/ImageView;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
