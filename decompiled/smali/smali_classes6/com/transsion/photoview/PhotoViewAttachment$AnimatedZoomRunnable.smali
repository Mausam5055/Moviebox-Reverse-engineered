.class Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/photoview/PhotoViewAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/transsion/photoview/PhotoViewAttachment;


# direct methods
.method public constructor <init>(Lcom/transsion/photoview/PhotoViewAttachment;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mFocalX:F

    iput p5, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mFocalY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mStartTime:J

    iput p2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mZoomStart:F

    iput p3, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method

.method private interpolate()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v2}, Lcom/transsion/photoview/PhotoViewAttachment;->s(Lcom/transsion/photoview/PhotoViewAttachment;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->f(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->interpolate()F

    move-result v0

    iget v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mZoomStart:F

    iget v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mZoomEnd:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v2}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v2}, Lcom/transsion/photoview/PhotoViewAttachment;->t(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/c;

    move-result-object v2

    iget v3, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mFocalX:F

    iget v4, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mFocalY:F

    invoke-interface {v2, v1, v3, v4}, Lcom/transsion/photoview/c;->d(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/photoview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
