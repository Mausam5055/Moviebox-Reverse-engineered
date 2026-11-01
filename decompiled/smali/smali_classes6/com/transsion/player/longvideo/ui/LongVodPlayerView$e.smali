.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/ui/longvideo/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:F

.field private c:Z

.field private d:J

.field final synthetic e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    iput-boolean p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$onSingleTapClick(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    return-void
.end method

.method public b(FF)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lho/j;

    move-result-object v0

    iget-object v0, v0, Lho/j;->h:Lho/k;

    iget-object v0, v0, Lho/k;->t:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->d:J

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showBottomController(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setFormUserSeek$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    iput-boolean v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->c:Z

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getHandler$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getRunnable$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->f:Z

    if-eqz v0, :cond_1

    sub-float/2addr p1, p2

    goto :goto_0

    :cond_1
    sub-float p1, p2, p1

    :goto_0
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurUiType$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/ui/LongVodUiType;

    move-result-object p2

    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->LAND:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getScreenHeight$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)I

    move-result p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getScreenWidth$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)I

    move-result p2

    :goto_1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v2

    long-to-float v0, v2

    mul-float/2addr p1, v0

    mul-int/lit8 p2, p2, 0x4

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-wide v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->d:J

    long-to-float p2, v2

    add-float/2addr p2, p1

    float-to-long p1, p2

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_3

    move-wide p1, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_4

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide p1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lho/j;

    move-result-object v0

    iget-object v0, v0, Lho/j;->h:Lho/k;

    iget-object v0, v0, Lho/k;->t:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lho/j;

    move-result-object v0

    iget-object v0, v0, Lho/j;->i:Lho/l;

    iget-object v0, v0, Lho/l;->n:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v2

    long-to-float p2, v2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->b:F

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide p1

    long-to-float p1, p1

    iget p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->b:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->a:J

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updateSeekbar(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZJ)V

    return-void
.end method

.method public c()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->a:J

    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isErrorShown(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isUGCAutoPauseShow(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$ugcPause2Play(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/c0;->q()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updateSeekbar(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZJ)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->hideBottomController(Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setFormUserSeek$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    iput-boolean v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->c:Z

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$endLongPress(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 7

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lho/j;

    move-result-object v0

    iget-object v0, v0, Lho/j;->h:Lho/k;

    iget-object v0, v0, Lho/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LongVodPlayerView"

    const-string v3, "onDoubleTap "

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$videoPauseOrPlayClick(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$longPressSpeed(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    return-void
.end method
