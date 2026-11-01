.class Lcom/transsion/publish/view/ZoomImageView$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/ZoomImageView;->r(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/transsion/publish/view/ZoomImageView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/ZoomImageView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    iput p2, p0, Lcom/transsion/publish/view/ZoomImageView$c;->a:F

    iput p3, p0, Lcom/transsion/publish/view/ZoomImageView$c;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/ZoomImageView;->k(Lcom/transsion/publish/view/ZoomImageView;)F

    move-result v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v0}, Lcom/transsion/publish/view/ZoomImageView;->c(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView$c;->a:F

    iget v2, p0, Lcom/transsion/publish/view/ZoomImageView$c;->b:F

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->c(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->n(Lcom/transsion/publish/view/ZoomImageView;)V

    return-void
.end method
