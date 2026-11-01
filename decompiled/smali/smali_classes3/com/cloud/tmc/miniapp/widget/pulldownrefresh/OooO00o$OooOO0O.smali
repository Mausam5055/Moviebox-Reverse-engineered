.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZLjava/lang/Boolean;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public OooO00o:I

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:Ljava/lang/Boolean;

.field public final synthetic OooO0Oo:Z

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;ILjava/lang/Boolean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0O0:I

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0OO:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0Oo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO00o:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO00o:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget-object v7, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    sget-object v8, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v7, v8, :cond_0

    iput-object v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    goto :goto_0

    :cond_0
    iget-object v7, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_3

    iget-boolean v8, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isDragging:Z

    if-nez v8, :cond_1

    sget-object v8, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_RELEASED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v4, v8, :cond_3

    :cond_1
    const-wide/16 v3, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_CANCELED:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    if-ne v4, v1, :cond_4

    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v1, :cond_4

    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v1, :cond_4

    add-int/2addr v0, v6

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO00o:I

    iget-object v0, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOOo:Landroid/os/Handler;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0O0:I

    int-to-long v3, v1

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESH_FINISH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0OO:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0OO:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    invoke-virtual {v0, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0Oo:Z

    invoke-interface {v3, v0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    move-result v0

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7fffffff

    if-ge v0, v3, :cond_c

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-boolean v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    if-nez v4, :cond_6

    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    if-eqz v3, :cond_8

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-boolean v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    if-eqz v4, :cond_7

    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    iput v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO:F

    iput v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    iput-boolean v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOOo:Z

    iget v9, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    iget v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v10, v4, v5

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget v9, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    iget v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    int-to-float v5, v5

    add-float v10, v4, v5

    const/4 v8, 0x2

    move-wide v4, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z

    :cond_7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-boolean v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    if-eqz v4, :cond_8

    iput v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo0o:I

    iget v9, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    iget v10, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0O:F

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0OO(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Landroid/view/MotionEvent;)Z

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iput-boolean v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooooO0:Z

    iput v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0Oo:I

    :cond_8
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    if-lez v4, :cond_a

    iget-object v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo0:Landroid/view/animation/Interpolator;

    iget v5, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-boolean v3, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO00:Z

    if-eqz v3, :cond_9

    iget-object v1, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    iget v2, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    :cond_9
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    :cond_a
    if-gez v4, :cond_b

    iget-object v1, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOoo0:Landroid/view/animation/Interpolator;

    iget v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0o:I

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_b
    iget-object v0, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v2, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_c
    :goto_1
    return-void
.end method
