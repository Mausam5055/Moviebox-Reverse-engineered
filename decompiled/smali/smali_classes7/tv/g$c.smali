.class public final Ltv/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baseui/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field final synthetic e:Ltv/g;

.field final synthetic f:Landroid/content/Context;


# direct methods
.method constructor <init>(Ltv/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ltv/g$c;->e:Ltv/g;

    iput-object p2, p0, Ltv/g$c;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Ltv/g$c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(FF)V
    .locals 5

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->c(Ltv/g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->c()Lcom/tn/lib/pager/PagerLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/tn/lib/pager/PagerLayoutManager;->X(Z)V

    :cond_0
    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    move-result-wide v2

    iput-wide v2, p0, Ltv/g$c;->a:J

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0, v1}, Ltv/g$a;->e(Z)V

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->E:Landroid/widget/TextView;

    const-string v1, "tvUgcImmProgressDes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    const-string v1, "seekUgcImmBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    const-string v1, "progressUgcImmBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Ltv/g$c;->c:I

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getMaxProgress()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/g$c;->b:J

    invoke-static {v0, v1}, Lcom/transsion/baseui/util/TimeUtilKt;->n(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/g$c;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/g;->e(Ltv/g;Z)V

    sub-float/2addr p2, p1

    iget-wide v0, p0, Ltv/g$c;->b:J

    long-to-float p1, v0

    mul-float/2addr p2, p1

    iget p1, p0, Ltv/g$c;->c:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-wide v2, p0, Ltv/g$c;->a:J

    long-to-float p1, v2

    add-float/2addr p1, p2

    float-to-long p1, p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_2

    move-wide v0, v2

    goto :goto_0

    :cond_2
    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    move-wide v0, p1

    :goto_0
    invoke-static {}, Lph/c;->e()Lph/c$a;

    move-result-object p1

    cmp-long p2, v0, v2

    if-gtz p2, :cond_4

    const-string p2, "00:00"

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/TimeUtilKt;->n(J)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object p1

    iget-object p2, p0, Ltv/g$c;->f:Landroid/content/Context;

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object p1

    iget-object p2, p0, Ltv/g$c;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  /  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object p1

    iget-object p2, p0, Ltv/g$c;->f:Landroid/content/Context;

    sget v2, Lcom/tn/lib/widget/R$color;->white_60:I

    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lph/c$a;->b()Lph/c;

    move-result-object p1

    iget-object p2, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {p2}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object p2

    invoke-interface {p2}, Ltv/g$a;->a()Lqv/r;

    move-result-object p2

    iget-object p2, p2, Lqv/r;->E:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {p1}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ltv/g$a;->f(J)V

    return-void
.end method

.method public c(FF)V
    .locals 0

    return-void
.end method

.method public d(FF)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->c()Lcom/tn/lib/pager/PagerLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/tn/lib/pager/PagerLayoutManager;->X(Z)V

    :cond_0
    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->c(Ltv/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ltv/g;->e(Ltv/g;Z)V

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0, v1}, Ltv/g$a;->e(Z)V

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->E:Landroid/widget/TextView;

    const-string v2, "tvUgcImmProgressDes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    const-string v2, "seekUgcImmBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    const-string v2, "progressUgcImmBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    move-result-wide v2

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isDataComplete()Z

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_1
    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    goto :goto_0

    :cond_2
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Ltv/g$c;->e:Ltv/g;

    invoke-static {v0}, Ltv/g;->b(Ltv/g;)Ltv/g$a;

    move-result-object v0

    invoke-interface {v0}, Ltv/g$a;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "\u6570\u636e\u8fd8\u6ca1\u6709\u62c9\u4e0b\u6765\uff0c\u4e0d\u8fdb\u884cseek"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
