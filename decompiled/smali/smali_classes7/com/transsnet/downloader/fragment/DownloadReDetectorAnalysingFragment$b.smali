.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;->c1(Lcom/transsnet/downloader/bean/DownloadUrlBean;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

.field final synthetic b:Lkotlin/jvm/functions/Function0;

.field final synthetic c:Lcom/transsnet/downloader/bean/DownloadUrlBean;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;Lkotlin/jvm/functions/Function0;Lcom/transsnet/downloader/bean/DownloadUrlBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->c:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lpy/y;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lpy/y;->b:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->c:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    if-nez p1, :cond_3

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string p1, "<get-TAG>(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onAnalyzeSuccess ,  close 2"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->m0()V

    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
