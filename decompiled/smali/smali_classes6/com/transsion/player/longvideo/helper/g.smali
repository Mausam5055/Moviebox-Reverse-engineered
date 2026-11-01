.class public final Lcom/transsion/player/longvideo/helper/g;
.super Lcom/transsion/player/longvideo/helper/d;


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/d;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/player/longvideo/helper/g;Lho/j;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/g;->g(Lcom/transsion/player/longvideo/helper/g;Lho/j;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/player/longvideo/helper/g;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/helper/g;->i(Lcom/transsion/player/longvideo/helper/g;)V

    return-void
.end method

.method private static final g(Lcom/transsion/player/longvideo/helper/g;Lho/j;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/player/longvideo/helper/g;->d:Z

    iget-object p0, p1, Lho/j;->h:Lho/k;

    iget-object p0, p0, Lho/k;->g:Landroid/widget/FrameLayout;

    const-string p2, "gameContainer"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p0, p1, Lho/j;->h:Lho/k;

    iget-object p0, p0, Lho/k;->j:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p1, "ivGameClose"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method private static final i(Lcom/transsion/player/longvideo/helper/g;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lho/j;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lho/j;->h:Lho/k;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lho/k;->j:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lho/j;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/d;->c(Ljava/lang/String;Lho/j;)V

    iget-object p1, p2, Lho/j;->h:Lho/k;

    iget-object p1, p1, Lho/k;->j:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/transsion/player/longvideo/helper/f;

    invoke-direct {v0, p0, p2}, Lcom/transsion/player/longvideo/helper/f;-><init>(Lcom/transsion/player/longvideo/helper/g;Lho/j;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final h(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 4

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->a()Lfo/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lfo/a$b;->d(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    :cond_0
    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->MIDDLE:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    if-eq p1, v0, :cond_9

    iget-boolean p1, p0, Lcom/transsion/player/longvideo/helper/g;->d:Z

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->a()Lfo/a$b;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lfo/a$b;->e()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of v0, p1, Lok/a;

    if-eqz v0, :cond_3

    move-object v2, p1

    check-cast v2, Lok/a;

    :cond_3
    if-eqz v2, :cond_4

    const-string v0, "fullscreen"

    invoke-interface {v2, v0}, Lok/a;->setPageStyle(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lho/j;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lho/j;->h:Lho/k;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lho/k;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lho/j;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lho/j;->h:Lho/k;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lho/k;->j:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lho/j;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v0, Lho/j;->h:Lho/k;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lho/k;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/transsion/player/longvideo/helper/e;

    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/helper/e;-><init>(Lcom/transsion/player/longvideo/helper/g;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lho/j;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Lho/j;->h:Lho/k;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lho/k;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lho/j;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v1, Lho/j;->h:Lho/k;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lho/k;->g:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method
