.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/shorttv/base/widget/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e0()V
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

.field final synthetic f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->d:Ljava/lang/String;

    const/high16 p1, 0x3fc00000    # 1.5f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->W(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->a:I

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvProgressDes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v2, "seekBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->s:Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->c:I

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iput v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->b:I

    invoke-static {v0}, Lcom/transsion/shorttv/utils/m;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->b:I

    int-to-float v0, p1

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->c:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->a:I

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
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object p1

    iget-object p1, p1, Lms/k0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1}, Lcom/transsion/shorttv/utils/m;->a(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    int-to-long v0, v1

    invoke-static {p1, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$updateProgress(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;J)V

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

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->W(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvProgressDes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v2, "seekBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->s:Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;

    move-result-object v0

    iget-object v0, v0, Lms/k0;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getData$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljs/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljs/l;->a(Ljs/e;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$playVideo(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    goto :goto_0

    :cond_2
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getTAG$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;

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
