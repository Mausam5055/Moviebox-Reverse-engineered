.class public final Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;
.super Lcom/tn/lib/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0005*\u0002$(\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J!\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u0019\u0010\u0013\u001a\u00020\u00122\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0010R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;",
        "Lcom/tn/lib/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "h0",
        "g0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onCancel",
        "(Landroid/content/DialogInterface;)V",
        "onResume",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onDismiss",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "a",
        "Lkotlin/Lazy;",
        "f0",
        "()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "shortTvPlayListViewModel",
        "Lcom/transsion/ad/bidding/video/BiddingVideoManager;",
        "b",
        "Lcom/transsion/ad/bidding/video/BiddingVideoManager;",
        "videoManager",
        "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;",
        "c",
        "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;",
        "interstitialManager",
        "com/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1",
        "d",
        "Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;",
        "videoListener",
        "com/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1",
        "e",
        "Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;",
        "interstitialListener",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private final d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;

.field private final e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/postdetail/R$layout;->dialog_short_tv_unlock_tips:I

    invoke-direct {p0, v0}, Lcom/tn/lib/dialog/BaseDialog;-><init>(I)V

    const-class v0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;

    new-instance v0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->i0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->j0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-object p0
.end method

.method public static final synthetic c0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    return-object p0
.end method

.method public static final synthetic e0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->g0()V

    return-void
.end method

.method private final f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    return-object v0
.end method

.method private final g0()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    const-string v1, "ShortTvInterstitialScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$loadInterstitialAd$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$loadInterstitialAd$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final h0()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/video/BiddingVideoManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    const-string v1, "ShortTvVideoScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$loadVideoAd$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$loadVideoAd$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final i0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->j()V

    return-void
.end method

.method private static final j0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V
    .locals 8

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Loh/g;->a:Loh/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Loh/g;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget p1, Lcom/transsion/postdetail/R$string;->player_no_network_tip2:I

    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->h()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    if-nez p1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/transsion/postdetail/shorttv/k;->a:Lcom/transsion/postdetail/shorttv/k;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v3, "dialog_minitv_unlock"

    const-string v4, "1"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/postdetail/shorttv/k;->b(Lcom/transsion/postdetail/shorttv/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->h0()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->j()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/postdetail/R$style;->BottomDialogTheme:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/c;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/c;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tn/lib/dialog/BaseDialog;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/postdetail/R$id;->iv_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/transsion/postdetail/shorttv/l;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/shorttv/l;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/postdetail/R$id;->tv_episode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->h()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTotalEpisode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sget-object v4, Lcom/transsnet/downloader/util/d0;->a:Lcom/transsnet/downloader/util/d0;

    invoke-virtual {v4}, Lcom/transsnet/downloader/util/d0;->e()I

    move-result v5

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, ""

    :cond_2
    invoke-virtual {v4, v2}, Lcom/transsnet/downloader/util/d0;->c(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v5, v2

    if-lt v5, v3, :cond_3

    sget v2, Lcom/transsion/postdetail/R$string;->short_tv_watch_ad_tips:I

    sget v3, Lcom/transsion/postdetail/R$string;->short_tv_all:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget v2, Lcom/transsion/postdetail/R$string;->short_tv_watch_ad_tips:I

    invoke-virtual {v4}, Lcom/transsnet/downloader/util/d0;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/transsion/postdetail/R$id;->tv_unlock:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/postdetail/shorttv/m;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/shorttv/m;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
