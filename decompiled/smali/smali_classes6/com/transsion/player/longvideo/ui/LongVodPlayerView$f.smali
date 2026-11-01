.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/lib/view/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->Y0(Lcom/tn/lib/view/SecondariesSeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field final synthetic b:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 7

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStopTrackingTouch targetProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LongVodPlayerView"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setFormUserSeek$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-interface {p1, v1, v2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isErrorShown(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->q()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updateSeekbar(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZJ)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-virtual {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->hideBottomController(Z)V

    return-void
.end method

.method public b(Lcom/tn/lib/view/SecondariesSeekBar;JZ)V
    .locals 4

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getReplayLayout$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Landroid/view/View;

    move-result-object p1

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->i(Landroid/view/View;)Z

    move-result p1

    if-ne p1, p4, :cond_0

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getReplayLayout$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isUGCAutoPauseShow(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$ugcPause2Play(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1, p4}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setFormUserSeek$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getHandler$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getRunnable$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    long-to-float p1, p2

    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    move-result-wide v0

    long-to-float p3, v0

    mul-float/2addr p3, p1

    float-to-long v0, p3

    iput-wide v0, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_2
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide p2, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {p1, p4, p2, p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updateSeekbar(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZJ)V

    :cond_3
    return-void
.end method

.method public c(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 7

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LongVodPlayerView"

    const-string v3, "onStartTrackingTouch "

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
