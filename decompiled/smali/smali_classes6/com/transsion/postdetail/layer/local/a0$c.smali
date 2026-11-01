.class public final Lcom/transsion/postdetail/layer/local/a0$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/lib/view/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/local/a0;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/layer/local/a0;

.field final synthetic b:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic c:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/local/a0;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Lcom/transsion/postdetail/layer/local/a0$c;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 7

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v2

    const-string v0, "<get-TAG>(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopTrackingTouch targetProgress:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->w0(Lcom/transsion/postdetail/layer/local/a0;Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

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

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v4, p0, Lcom/transsion/postdetail/layer/local/a0$c;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v4, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->z3(JF)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p1}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/transsion/postdetail/layer/local/a0;->v0(Lcom/transsion/postdetail/layer/local/a0;J)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    const-wide/16 v2, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/transsion/postdetail/layer/local/a0;->x0(Lcom/transsion/postdetail/layer/local/a0;ZJ)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p1, v1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    return-void
.end method

.method public b(Lcom/tn/lib/view/SecondariesSeekBar;JZ)V
    .locals 3

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->g1()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->i(Landroid/view/View;)Z

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->g1()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {p1, p4}, Lcom/transsion/postdetail/layer/local/a0;->w0(Lcom/transsion/postdetail/layer/local/a0;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/a0;->r0(Lcom/transsion/postdetail/layer/local/a0;)Landroid/os/Handler;

    move-result-object p1

    iget-object p4, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {p4}, Lcom/transsion/postdetail/layer/local/a0;->t0(Lcom/transsion/postdetail/layer/local/a0;)Ljava/lang/Runnable;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    long-to-float p1, p2

    const-wide/16 p2, 0x2710

    long-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p2}, Lcom/transsion/postdetail/layer/local/a0;->n1()J

    move-result-wide p2

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object p3, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p3}, Lcom/transsion/postdetail/layer/local/a0;->n1()J

    move-result-wide p3

    long-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-long p3, p3

    iput-wide p3, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide p2, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {p1, p2, p3}, Lcom/transsion/postdetail/layer/local/a0;->v0(Lcom/transsion/postdetail/layer/local/a0;J)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide p2, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {p1, v0, p2, p3}, Lcom/transsion/postdetail/layer/local/a0;->x0(Lcom/transsion/postdetail/layer/local/a0;ZJ)V

    :cond_2
    return-void
.end method

.method public c(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 7

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v2

    const-string p1, "<get-TAG>(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "onStartTrackingTouch "

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
