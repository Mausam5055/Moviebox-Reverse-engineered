.class public abstract Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;
.super Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/RefreshAction;
.implements Lcom/cloud/tmc/miniapp/action/HandlerAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniAppBaseFragment"


# instance fields
.field private hasVirtualNavBar:Z

.field private isFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile loadingAnimatorPlaying:Z

.field private final loadingAnimatorSet:Landroid/animation/AnimatorSet;

.field private navigationBarProgressUpdating:Z

.field private final onKeyboardListener:Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;

.field private pullDownRefresh:Z

.field private pullUpRefresh:Z

.field private refreshFooterDelayed:Ljava/lang/Integer;

.field private refreshHeaderDelayed:Ljava/lang/Integer;

.field private final refreshManager$delegate:Lkotlin/Lazy;

.field private rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

.field private final swipeBackManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->Companion:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;-><init>()V

    sget-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$swipeBackManager$2;->INSTANCE:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$swipeBackManager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->swipeBackManager$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$refreshManager$2;->INSTANCE:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$refreshManager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshManager$delegate:Lkotlin/Lazy;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onKeyboardListener$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onKeyboardListener$1;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onKeyboardListener:Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;

    return-void
.end method

.method public static synthetic V(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showLoadingDialog$lambda$37$lambda$36(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    return-void
.end method

.method public static synthetic W(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setCapsuleParams$lambda$31$lambda$30(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    return-void
.end method

.method public static synthetic X(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showLoadingDialog$lambda$37(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    return-void
.end method

.method public static synthetic Y(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hideLoadingDialog$lambda$39(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    return-void
.end method

.method public static synthetic Z(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableHeaderTranslationContent$lambda$11(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    return-void
.end method

.method public static synthetic a0(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setHostActivityStatusBackground$lambda$35$lambda$34(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    return-void
.end method

.method public static final synthetic access$getApp$p$s-387525749(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    return-object p0
.end method

.method public static final synthetic access$getPage$p$s-387525749(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    return-object p0
.end method

.method public static final synthetic access$tabBarAdjustPan(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->tabBarAdjustPan(II)V

    return-void
.end method

.method public static synthetic b0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshApp$lambda$32(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private final declared-synchronized cancelAnimator()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MiniAppBaseFragment"

    const-string v1, "cancelAnimator"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorPlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "MiniAppBaseFragment"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private final checkAlertBeforeUnload()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$checkAlertBeforeUnload$1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$checkAlertBeforeUnload$1;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/PageExtKt;->checkAlertBeforeUnload(Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final enableHeaderTranslationContent$lambda$11(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 9

    const-string v0, "custom"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderStyle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "default"

    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    move-result v2

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getPx2dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->getContent()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getPx2dp(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const-string v7, "capsuleTranslationY"

    invoke-interface {v5, v7}, Lcom/cloud/tmc/kernel/node/ValueStore;->getIntValue(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v7, :cond_3

    const-string v8, "capsuleHeight"

    invoke-interface {v7, v8}, Lcom/cloud/tmc/kernel/node/ValueStore;->getIntValue(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    add-float/2addr v5, v7

    invoke-static {v5}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getPx2dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    cmpg-float v4, v3, v4

    if-nez v4, :cond_5

    const v3, 0x4199999a    # 19.2f

    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getPx2dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v5, v2, v3

    goto :goto_4

    :cond_5
    const/4 v4, 0x5

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x3

    int-to-float v4, v4

    mul-float v5, v3, v4

    :goto_4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v6

    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0O0(F)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    const-string v0, "MiniAppBaseFragment"

    const-string v1, "Error refreshing"

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private final getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    return-object v0
.end method

.method private final getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->swipeBackManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    return-object v0
.end method

.method private static final hideLoadingDialog$lambda$39(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->fl_loading_mask:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->cancelAnimator()V

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v0, "MiniAppBaseFragment"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private static final refreshApp$lambda$32(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    check-cast p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refreshApp()V

    return-void
.end method

.method public static synthetic sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendAppOrPageReadyToRender(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendAppOrPageReadyToRender"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendEventOrLifecycleToWorker(Ljava/lang/String;ZLjava/util/Map;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendEventOrLifecycleToWorker"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker(Ljava/util/Map;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendPageEnterToWorker"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setCapsuleParams()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    new-instance v0, Lcom/cloud/tmc/miniapp/base/e;

    invoke-direct {v0, p0, v2}, Lcom/cloud/tmc/miniapp/base/e;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static final setCapsuleParams$lambda$31$lambda$30(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const-string v1, "capsuleHeight"

    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const-string v1, "capsuleWidth"

    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const-string v1, "capsuleTop"

    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    const-string v0, "capsuleRight"

    invoke-interface {p0, v0, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    const-string v0, "capsuleBottom"

    invoke-interface {p0, v0, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    const-string v1, "capsuleLeft"

    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    const-string v1, "capsuleTranslationX"

    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    const-string v0, "capsuleTranslationY"

    invoke-interface {p0, v0, p1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private final setHostActivityStatusBackground(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 4

    const-string v0, "MiniAppBaseFragment"

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHostActivityStatusBackground page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    instance-of v2, v1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getmAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_2

    const-string p1, "setHostActivityStatusBackground: appLoadResult is null"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getContentBgColor()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Lcom/cloud/tmc/miniapp/base/j;

    invoke-direct {v1, v3, p0, p1}, Lcom/cloud/tmc/miniapp/base/j;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v1, "setHostActivityStatusBackground parse color failed!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private static final setHostActivityStatusBackground$lambda$35$lambda$34(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 3

    const-string v0, "MiniAppBaseFragment"

    const-string v1, "$color"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$page"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHostActivityStatusBackground: contentBackground: : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    instance-of p2, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz p2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_2

    :cond_2
    move-object v2, p1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p0, "setHostActivityStatusBackground: \u8bbe\u7f6e activity \u7684\u72b6\u6001\u5e03\u5c40\u80cc\u666f\u8272\u6210\u529f"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p0, "setHostActivityStatusBackground: \u6267\u884c\u5b8c\u6bd5"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    const-string p1, "setHostActivityStatusBackground parse color failed!!!"

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private final setParallaxOffset(F)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(F)V

    return-void
.end method

.method public static synthetic setParallaxOffset$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;FILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setParallaxOffset(F)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setParallaxOffset"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setShowLoading(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 5

    const-string v0, "MiniAppBaseFragment"

    :try_start_0
    const-string v1, "setShowLoading"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "setShowLoading \u5f53\u9762\u9875\u9762\u672a\u6e32\u67d3\uff0c\u4e0d\u518d\u6267\u884c"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "firstStartedPagePath"

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShowLoading firstStartedPagePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShowLoading current pagePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "setShowLoading \u9996\u4e2a\u542f\u52a8\u9875\u9762\u4e0d\u5c55\u793a\u9875\u9762Loading"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/UrlUtil;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "setShowLoading \u6df7\u5408\u9875\u9762\u4e0d\u652f\u6301\u663e\u793a\u9875\u9762Loading"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    const-string v3, "firstNormalPageOpened"

    invoke-interface {p1, v3}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_6
    move p1, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShowLoading \u9996\u4e2a\u6b63\u5e38\u5c0f\u7a0b\u5e8f\u9875\u9762\u662f\u5426\u6253\u5f00\u8fc7\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePageLoading()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShowLoading \u4e1a\u52a1\u5c0f\u7a0b\u5e8f\u914d\u7f6eLoading\u7684\u5f00\u5173\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/UrlUtil;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    const-string p1, "setShowLoading \u9996\u4e2a\u9875\u9762\u4e3aH5\u6df7\u5408\u9875\uff0c\u9996\u4e2a\u6b63\u5e38\u5c0f\u7a0b\u5e8f\u9875\u9762\u5c1a\u672a\u6253\u5f00\u8fc7"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_8
    if-nez v2, :cond_9

    const-string p1, "setShowLoading \u5173\u95ed\u9875\u9762\u8c03\u6574Loading"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showLoadingDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v1, "setShowLoading fail!!!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static final showLoadingDialog$lambda$37(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->fl_loading_mask:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_loading:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->startAnimator(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/base/g;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/base/g;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v0, "MiniAppBaseFragment"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static final showLoadingDialog$lambda$37$lambda$36(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hideLoadingDialog()V

    return-void
.end method

.method private final declared-synchronized startAnimator(Landroid/widget/ImageView;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MiniAppBaseFragment"

    const-string v1, "startAnimator"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    const-string v0, "rotation"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v0, "ofFloat(it, \"rotation\", 0F, 360F)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorPlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "MiniAppBaseFragment"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private final tabBarAdjustPan(II)V
    .locals 7

    const-string v0, "MiniAppBaseFragment"

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableTabBarAdjustPan()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    const-string p1, "onTabBarAdjustPan enableTabBarAdjustPan is not enabled"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabBarAdjustPan: page is not tabPage "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_4

    const-string v3, "isApiShowTabBarEnabled"

    invoke-interface {v1, v3}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    const-string v3, "hideTabBar"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_7

    invoke-interface {p1, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBar(Z)Z

    goto :goto_4

    :cond_5
    int-to-double v3, p1

    int-to-double p1, p2

    const-wide v5, 0x3fc3333333333333L    # 0.15

    mul-double/2addr p1, v5

    cmpl-double p1, v3, p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_7

    invoke-interface {p1, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBar(Z)Z

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_7

    invoke-interface {p1, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->showTabBar(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    const-string p2, "tabBarAdjustPan failed"

    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V

    :cond_0
    return-void
.end method

.method public final attachToRefresh(Landroid/view/View;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Landroid/view/View;
    .locals 10

    const-string v0, "MiniAppBaseFragment"

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "window"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderDelayed()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshHeaderDelayed:Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshFooterDelayed()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshFooterDelayed:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, p0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullDownRefresh()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableRefresh(Z)V

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullUpRefresh()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableLoadMore(Z)V

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderStyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "custom"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0O;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomLoadingGif()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomSuccessGif()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-virtual {v1, v5, v7, v6}, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Z)Ljava/io/File;

    move-result-object v5

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomLoading()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomSuccess()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-virtual {v1, v7, v9, v8}, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Z)Ljava/io/File;

    move-result-object v1

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomTextEnable()Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v3, v7}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0O0(Z)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v3

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderTranslationContent()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableHeaderTranslationContent(Z)V

    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderAccentColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0Oo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "set header accent color error"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderBackgroundColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0O0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "set header background color error"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshFooterAccentColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "set footer accent color error"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshFooterBackgroundColor()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0OO(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    const-string v1, "set footer background color error"

    invoke-static {v0, v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-object p1
.end method

.method public final attachToSwipeBack(Landroid/view/View;)Landroid/view/View;
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setEdgeLevel(I)V

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final checkBackToPageInterceptAndRemoveIt()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->getInterceptors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;->getInterceptName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackToPageIntercept"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->removeInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniAppBaseFragment"

    invoke-static {v2, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public destroy()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hideLoadingDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MiniAppBaseFragment"

    const-string v2, "remove callbacks and messages"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public enableHeaderTranslationContent(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(Z)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableTransparentStatusBar()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/cloud/tmc/miniapp/base/h;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/base/h;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public enableLoadMore(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0Oo(Z)V

    return-void
.end method

.method public enableRefresh(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0OO(Z)V

    return-void
.end method

.method public final getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appLoadResult"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    return-object v0
.end method

.method public final getEntryInfo()Lcom/cloud/tmc/integration/model/EntryInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "entryInfo"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/EntryInfo;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->getHandler(Lcom/cloud/tmc/miniapp/action/HandlerAction;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final getHasVirtualNavBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hasVirtualNavBar:Z

    return v0
.end method

.method public getNavigationBarProgressUpdateStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->navigationBarProgressUpdating:Z

    return v0
.end method

.method public final getNavigationBarProgressUpdating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->navigationBarProgressUpdating:Z

    return v0
.end method

.method public final getSceneParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v0

    return-object v0
.end method

.method public final hasVirtualNavBar(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v0, v2

    if-gtz v0, :cond_1

    sub-int/2addr v1, p1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final hideLoadingDialog()V
    .locals 3

    const-string v0, "MiniAppBaseFragment"

    :try_start_0
    const-string v1, "hideLoadingDialog"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/base/k;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/k;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public hideTabBar(Z)Z
    .locals 1

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->hideTabBar(Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hideTabBarRedDot(I)Z
    .locals 6

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setUnreadVisible(IZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_1

    const-class v4, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->setShowRedDot(Z)V

    :cond_4
    :goto_2
    return v0
.end method

.method public hideTabBarUnreadIcon(I)Z
    .locals 6

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setUnreadIconVisible(IZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_1

    const-class v4, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->setShowUnreadIcon(Z)V

    :cond_4
    :goto_2
    return v0
.end method

.method public final hideVirtualNavBar()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "requireActivity().window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x802

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public initView()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setCapsuleParams()V

    return-void
.end method

.method public final isFullScreen()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final isHomepage(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isHomepage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    move-result p1

    return p1
.end method

.method public loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "tabBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/widget/TabBarView;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/TabBarView;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v2

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-virtual {v0, p1, v1, p2}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->setTabs(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hasVirtualNavBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hasVirtualNavBar:Z

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->onDestroy()V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->onDestroy()V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o()V

    const-class v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->releaseKeyBoardChange(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MiniAppBaseFragment"

    const-string v2, "onDestroyView failed"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(Z)V

    return-void
.end method

.method public onLoadMoreEvent()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshFooterDelayed:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(IZ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->setKeyBoardListener(Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "MiniAppBaseFragment"

    const-string v2, "onPause failed"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onRefreshEvent()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshHeaderDelayed:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0O0(IZ)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    new-instance v1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->setKeyBoardListener(Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "MiniAppBaseFragment"

    const-string v2, "onResume failed"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->initKeyBoardChange(Landroid/view/View;)V

    new-instance p1, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;-><init>(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onKeyboardListener:Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setParallaxOffset$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;FILjava/lang/Object;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;JLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public refreshApp()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refreshApp()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v2, Lcom/cloud/tmc/miniapp/base/i;

    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/base/i;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCallbacks()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacksAndMessages(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V

    :cond_0
    return-void
.end method

.method public removeTabBarBadge(I)Z
    .locals 6

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->removeTabBarBadge(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_1

    const-class v4, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getBadgeMessageHashMap()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->setShowBadge(Z)V

    invoke-virtual {p1, v3}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->setText(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public final sendAppOrPageReadyToRender(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendAppOrPageReadyToRender(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final sendEventOrLifecycleToWorker(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public final sendPageEnterToWorker(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-interface {v0, v3}, Lcom/cloud/tmc/integration/structure/App;->getRouteType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "navigateTo"

    invoke-static {v0, v3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "unknown"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v0

    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    if-nez v4, :cond_5

    move-object v4, v1

    :cond_5
    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v2

    :goto_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "delta"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "routeType"

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_8

    goto :goto_5

    :cond_8
    move v3, v5

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "isMixedPage"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getPrePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    :cond_9
    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    move-object v1, v2

    :goto_6
    const-string v0, "preRenderId"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_b

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_b
    const-string p1, "pageEnter"

    invoke-virtual {p0, p1, v5, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendEventOrLifecycleToWorker(Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public final setEdgeLevel(I)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(I)V

    return-void
.end method

.method public final setEdgeLevel(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V
    .locals 1

    const-string v0, "edgeLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V

    return-void
.end method

.method public final setFullScreen(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setHasVirtualNavBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hasVirtualNavBar:Z

    return-void
.end method

.method public final setNavigationBarProgressUpdating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->navigationBarProgressUpdating:Z

    return-void
.end method

.method public setPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 5

    const-string v0, "MiniAppBaseFragment"

    const-string v1, "page"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppLifecycleCallback()Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    const-string v1, "setMiniappLifecycleCallback"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v4, v3, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_1
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/structure/App;->setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setHostActivityStatusBackground(Lcom/cloud/tmc/integration/structure/Page;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setShowLoading(Lcom/cloud/tmc/integration/structure/Page;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    const-string v1, "setPage fail!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public final setSwipeBackEnable(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO0O0(Z)V

    return-void
.end method

.method public setTabBarBadge(ILjava/lang/String;)Z
    .locals 7

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setTabBarBadge(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_1

    const-class v5, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    invoke-interface {v2, v5, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v1}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->setShowRedDot(Z)V

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getBadgeMessageHashMap()Ljava/util/HashMap;

    move-result-object v4

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    invoke-direct {v2, p1, v3, p2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;-><init>(IZLjava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    :cond_5
    return v0
.end method

.method public setTabBarItem(ILcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;)Z
    .locals 2

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, v0}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->updateTabItem(ILcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set tab item for index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with tab "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiniAppBaseFragment"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setTabBarItems(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "tabs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->updateAllTabs(Ljava/util/List;Lcom/cloud/tmc/integration/structure/Page;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_1
    const-string p1, "MiniAppBaseFragment"

    const-string v0, "set tab items is failed"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/cloud/tmc/integration/model/TabBarStyle;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/TabBarStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->setTabBarStyle(Lcom/cloud/tmc/integration/model/TabBarStyle;)V

    :cond_3
    :goto_2
    return v0
.end method

.method public shouldInterceptOnKeyDown()Z
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->checkAlertBeforeUnload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final showLoadingDialog()V
    .locals 3

    const-string v0, "MiniAppBaseFragment"

    :try_start_0
    const-string v1, "showLoadingDialog"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/base/f;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/f;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public showTabBar(Z)Z
    .locals 1

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->showTabBar(Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public showTabBarRedDot(I)Z
    .locals 14

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v2}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setUnreadVisible(IZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_1

    const-class v5, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    invoke-interface {v3, v5, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v13, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    const/16 v11, 0xc

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v13

    move v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;-><init>(IZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getBadgeMessageHashMap()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->setShowBadge(Z)V

    invoke-virtual {p1, v4}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->setText(Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method public showTabBarUnreadIcon(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "iconPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->showTabBarUnreadIcon(ILjava/lang/String;Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final showVirtualNavBar()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "requireActivity().window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public startRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->startRefresh()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopLoadMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->stopLoadMore()V

    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    return v0
.end method

.method public stopRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->stopRefresh()V

    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    return v0
.end method
