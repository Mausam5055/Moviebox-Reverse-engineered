.class Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/publish/view/clip/ClipImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScaleRunnable"
.end annotation


# static fields
.field static final BIGGER:F = 1.07f

.field static final SMALLER:F = 0.93f


# instance fields
.field private mTargetScale:F

.field final synthetic this$0:Lcom/transsion/publish/view/clip/ClipImageView;

.field private tmpScale:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/transsion/publish/view/clip/ClipImageView;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    iput p3, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->x:F

    iput p4, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->y:F

    invoke-virtual {p1}, Lcom/transsion/publish/view/clip/ClipImageView;->getScale()F

    move-result p1

    iget p2, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const p1, 0x3f88f5c3    # 1.07f

    iput p1, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->tmpScale:F

    goto :goto_0

    :cond_0
    const p1, 0x3f6e147b    # 0.93f

    iput p1, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->tmpScale:F

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/clip/ClipImageView;->c(Lcom/transsion/publish/view/clip/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->tmpScale:F

    iget v2, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->x:F

    iget v3, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/clip/ClipImageView;->e(Lcom/transsion/publish/view/clip/ClipImageView;)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/clip/ClipImageView;->c(Lcom/transsion/publish/view/clip/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-virtual {v0}, Lcom/transsion/publish/view/clip/ClipImageView;->getScale()F

    move-result v0

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->tmpScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    iget v3, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    :cond_0
    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/clip/ClipImageView;->c(Lcom/transsion/publish/view/clip/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v2, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->x:F

    iget v3, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/clip/ClipImageView;->e(Lcom/transsion/publish/view/clip/ClipImageView;)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/clip/ClipImageView;->c(Lcom/transsion/publish/view/clip/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;->this$0:Lcom/transsion/publish/view/clip/ClipImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/publish/view/clip/ClipImageView;->d(Lcom/transsion/publish/view/clip/ClipImageView;Z)V

    :goto_0
    return-void
.end method
