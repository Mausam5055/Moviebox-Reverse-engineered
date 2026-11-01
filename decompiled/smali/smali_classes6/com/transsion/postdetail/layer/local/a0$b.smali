.class public final Lcom/transsion/postdetail/layer/local/a0$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baseui/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/local/a0;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:F

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:F

.field final synthetic h:Lcom/transsion/postdetail/layer/local/a0;

.field final synthetic i:Z

.field final synthetic j:I

.field final synthetic k:I


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/local/a0;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    iput-boolean p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->i:Z

    iput p3, p0, Lcom/transsion/postdetail/layer/local/a0$b;->j:I

    iput p4, p0, Lcom/transsion/postdetail/layer/local/a0$b;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->Z2()Landroidx/constraintlayout/widget/Group;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/transsion/postdetail/layer/local/a0;->B2(Lcom/transsion/postdetail/layer/local/a0;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    :goto_0
    return-void
.end method

.method public b(FF)V
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->c:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->q2()Lcom/tn/lib/view/SecondariesSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, Lcom/transsion/postdetail/layer/local/a0$b;->f:J

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/transsion/postdetail/layer/local/a0;->A2(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/transsion/postdetail/layer/local/a0;->w0(Lcom/transsion/postdetail/layer/local/a0;Z)V

    iput-boolean v3, p0, Lcom/transsion/postdetail/layer/local/a0$b;->c:Z

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->r0(Lcom/transsion/postdetail/layer/local/a0;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v4}, Lcom/transsion/postdetail/layer/local/a0;->t0(Lcom/transsion/postdetail/layer/local/a0;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->i:Z

    if-eqz v0, :cond_2

    sub-float/2addr p1, p2

    goto :goto_1

    :cond_2
    sub-float p1, p2, p1

    :goto_1
    const-wide/16 v4, 0x2710

    long-to-float p2, v4

    mul-float/2addr p1, p2

    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->j:I

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-wide v6, p0, Lcom/transsion/postdetail/layer/local/a0$b;->f:J

    long-to-float v0, v6

    add-float/2addr v0, p1

    float-to-long v6, v0

    cmp-long p1, v6, v1

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    cmp-long p1, v6, v4

    if-lez p1, :cond_4

    move-wide v1, v4

    goto :goto_2

    :cond_4
    move-wide v1, v6

    :goto_2
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->q2()Lcom/tn/lib/view/SecondariesSeekBar;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1, v2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    :cond_5
    long-to-float p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->b:F

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->n1()J

    move-result-wide p1

    long-to-float p1, p1

    iget p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->b:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->a:J

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->v0(Lcom/transsion/postdetail/layer/local/a0;J)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->a:J

    invoke-static {p1, v3, v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->x0(Lcom/transsion/postdetail/layer/local/a0;ZJ)V

    return-void
.end method

.method public c(FF)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->e:Z

    const/4 v1, 0x0

    const-string v2, "volumeControl"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Leo/n;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Leo/n;->f(Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Leo/n;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Leo/n;->b()F

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->g:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->e:Z

    :cond_2
    sub-float/2addr p1, p2

    const/4 p2, 0x2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->k:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {p2}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Leo/n;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p2

    :goto_0
    iget p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->g:F

    invoke-interface {v1, p2, p1}, Leo/n;->a(FF)V

    return-void
.end method

.method public d(FF)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->d:Z

    const/4 v1, 0x0

    const-string v2, "volumeControl"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Leo/n;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Leo/n;->f(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->d:Z

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Leo/n;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->k:I

    invoke-interface {v1, p1, p2, v0}, Leo/n;->d(FFI)V

    return-void
.end method

.method public e()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->a:J

    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->q0(Lcom/transsion/postdetail/layer/local/a0;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->a:J

    iget v4, p0, Lcom/transsion/postdetail/layer/local/a0$b;->b:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->z3(JF)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/postdetail/layer/local/a0;->x0(Lcom/transsion/postdetail/layer/local/a0;ZJ)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->w0(Lcom/transsion/postdetail/layer/local/a0;Z)V

    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->c:Z

    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->d:Z

    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->e:Z

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->M0()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->b1()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/postdetail/layer/local/a0;->d2(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->b1()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->L2()V

    return-void
.end method
