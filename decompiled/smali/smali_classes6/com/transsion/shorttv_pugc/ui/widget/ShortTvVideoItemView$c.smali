.class public final Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/shorttv_pugc/base/widget/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->G()V
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

.field final synthetic f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->d:Ljava/lang/String;

    const/high16 p1, 0x3fc00000    # 1.5f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->W(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lms/j0;

    move-result-object v0

    iget-object v0, v0, Lms/j0;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->a:I

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lms/j0;

    move-result-object v0

    iget-object v0, v0, Lms/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v2, "seekBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lct/b;->d(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lms/j0;

    move-result-object v0

    iget-object v0, v0, Lms/j0;->r:Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lct/b;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lms/j0;

    move-result-object v0

    iget-object v0, v0, Lms/j0;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->c:I

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lms/j0;

    move-result-object v0

    iget-object v0, v0, Lms/j0;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iput v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->b:I

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/j;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->b:I

    int-to-float v0, p1

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->c:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->a:I

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
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    int-to-long v0, v1

    invoke-static {p1, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$updateProgress(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;J)V

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

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->W(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lms/j0;

    move-result-object v0

    iget-object v0, v0, Lms/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v1, "seekBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lct/b;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lms/j0;

    move-result-object v0

    iget-object v0, v0, Lms/j0;->r:Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lct/b;->d(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lms/j0;

    move-result-object v0

    iget-object v0, v0, Lms/j0;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getData$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getDotLayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lut/c;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lut/c;->h()V

    goto :goto_1

    :cond_4
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getTAG$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "\u6570\u636e\u8fd8\u6ca1\u6709\u62c9\u4e0b\u6765\uff0c\u4e0d\u8fdb\u884cseek"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_5
    :goto_1
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
