.class public final Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baseui/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field final synthetic f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->d:Ljava/lang/String;

    const/high16 p1, 0x3fc00000    # 1.5f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->W(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->a:I

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$setContentVisibility(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->t:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvProgressDes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v2, "seekBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->m:Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->c:I

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->b:I

    invoke-static {v0}, Lcom/transsion/postdetail/util/n;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Z)V

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->b:I

    int-to-float v0, p1

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->c:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->a:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    float-to-int p2, v0

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    if-le p2, p1, :cond_3

    move v1, p1

    goto :goto_0

    :cond_3
    move v1, p2

    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object p1

    iget-object p1, p1, Lso/l0;->t:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1}, Lcom/transsion/postdetail/util/n;->c(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object p1

    iget-object p1, p1, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object p1

    iget-object p1, p1, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

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
    .locals 6

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->W(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$setContentVisibility(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->t:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "tvProgressDes"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v3, "seekBar"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->m:Landroid/widget/ProgressBar;

    const-string v3, "progressBar"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;

    move-result-object v0

    iget-object v0, v0, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v3, v0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$isSeekToFinish$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v3, v4}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_1
    const-wide/16 v3, 0x0

    :cond_2
    invoke-static {v0, v3, v4}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$setNextSeekTo$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;J)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_3
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
