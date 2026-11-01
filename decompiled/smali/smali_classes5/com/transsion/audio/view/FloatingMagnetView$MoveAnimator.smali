.class public Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/view/FloatingMagnetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MoveAnimator"
.end annotation


# instance fields
.field private destinationX:F

.field private destinationY:F

.field private final handler:Landroid/os/Handler;

.field private startingTime:J

.field final synthetic this$0:Lcom/transsion/audio/view/FloatingMagnetView;


# direct methods
.method protected constructor <init>(Lcom/transsion/audio/view/FloatingMagnetView;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->handler:Landroid/os/Handler;

    return-void
.end method

.method private stop()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->startingTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->destinationX:F

    iget-object v3, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->destinationY:F

    iget-object v4, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->this$0:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-static {v4, v2, v3}, Lcom/transsion/audio/view/FloatingMagnetView;->b(Lcom/transsion/audio/view/FloatingMagnetView;FF)V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method start(FF)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->destinationX:F

    iput p2, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->destinationY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->startingTime:J

    iget-object p1, p0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
