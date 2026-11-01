.class public final Ltv/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/h$a;
    }
.end annotation


# instance fields
.field private final a:Ltv/h$a;


# direct methods
.method public constructor <init>(Ltv/h$a;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/h;->a:Ltv/h$a;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v2

    move-wide v3, p3

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->f1(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJ)V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 8

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {p3}, Ltv/h$a;->a()Lqv/r;

    move-result-object p3

    iget-object p3, p3, Lqv/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {p3}, Lcom/tn/lib/view/SecondariesSeekBar;->getMaxProgress()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    const-wide/16 v4, 0x64

    cmp-long p3, v0, v4

    if-eqz p3, :cond_1

    iget-object p3, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {p3}, Ltv/h$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v4

    cmp-long p3, v0, v4

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {p3}, Ltv/h$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :goto_0
    cmp-long p3, v0, v2

    if-gtz p3, :cond_3

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {p1}, Ltv/h$a;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "onProgress- duration <= 0, return"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0, v0, v1}, Ltv/h;->h(J)V

    :goto_1
    iget-object p3, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {p3}, Ltv/h$a;->f()Lcom/transsion/ugcvideodetail/hepler/a;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/a;->l(J)V

    :cond_4
    iget-object p3, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {p3}, Ltv/h$a;->e()Ltv/n;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ltv/n;->q(J)V

    invoke-virtual {p0, p1, p2}, Ltv/h;->g(J)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ltv/h;->f(Z)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->f()Lcom/transsion/ugcvideodetail/hepler/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->n()V

    :cond_0
    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->n:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivUgcImmPlayStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->e()Ltv/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/n;->p(Z)V

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0, v1}, Ltv/h$a;->c(Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->f()Lcom/transsion/ugcvideodetail/hepler/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->o()V

    :cond_0
    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->e()Ltv/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/n;->p(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/h;->f(Z)V

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0, v1}, Ltv/h$a;->c(Z)V

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->n:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivUgcImmPlayStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method public final e()V
    .locals 7

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->getLogTag()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    iget-object v2, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v2}, Ltv/h$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playVideo data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " orPlayer:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v1}, Ltv/h$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isFree()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->isComplete()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_2
    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->play()V

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- startplay"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- no free now, show pay dialog"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/h;->f(Z)V

    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {p1}, Ltv/h$a;->showLoading()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {p1}, Ltv/h$a;->d()V

    :goto_0
    return-void
.end method

.method public final g(J)V
    .locals 1

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    return-void
.end method

.method public final h(J)V
    .locals 7

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setMax(J)V

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setMax(J)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Ltv/h;->a:Ltv/h$a;

    invoke-interface {v0}, Ltv/h$a;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressMax: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
