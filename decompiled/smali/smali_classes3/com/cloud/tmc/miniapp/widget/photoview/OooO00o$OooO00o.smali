.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public OooO00o:F

.field public OooO0O0:F

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;->OooO0O0:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooOO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;->OooO00o:F

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;->OooO0O0:F

    sub-float/2addr v5, v6

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o(FFFFF)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;->OooO00o:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;->OooO0O0:F

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;->OooO00o:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;->OooO0O0:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
