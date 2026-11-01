.class public Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;
.super Lcom/cloud/tmc/miniapp/base/MiniAppBaseActivity;

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/StatusAction;
.implements Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;
.implements Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;
.implements Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;
.implements Lcom/cloud/tmc/integration/proxy/UpdateLoadingStepListener;
.implements Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;
.implements Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;
.implements Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;
.implements Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniAppActivity"


# instance fields
.field private final addHomeDialogView$delegate:Lkotlin/Lazy;

.field private final appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

.field private appId:Ljava/lang/String;

.field private final capsule$delegate:Lkotlin/Lazy;

.field private controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field private currentDelayTime:J

.field private delayShowError:Z

.field private devToken:Ljava/lang/String;

.field private final dialog$delegate:Lkotlin/Lazy;

.field private enableQuickMode:Z

.field private errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

.field private eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private isFirstLaunch:Z

.field private isResendH5PageStack:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isValidOnResume:Z

.field private final mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

.field private final mMFAHInterceptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mShowCompleteTaskQueue$delegate:Lkotlin/Lazy;

.field private final mStatusLayout$delegate:Lkotlin/Lazy;

.field private final miniAppPopWindowToken$delegate:Lkotlin/Lazy;

.field private miniappForegroundTime:J

.field private miniappResumeTimestamp:J

.field private miniappStartTime:J

.field private mode:Ljava/lang/String;

.field private msgAppName:Ljava/lang/String;

.field private onPauseStopTimeStamp:J

.field private prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

.field private final pvAddHomeBottomTip$delegate:Lkotlin/Lazy;

.field private final pvAddHomeCustom1$delegate:Lkotlin/Lazy;

.field private final pvAddHomeCustom2$delegate:Lkotlin/Lazy;

.field private final pvAddHomeTopTip$delegate:Lkotlin/Lazy;

.field private final pvMsgBubble$delegate:Lkotlin/Lazy;

.field private quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field private quickModeStartStatus:Z

.field private rootTaskId:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field private final showMsgBubbleController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

.field private showOpenAppDialog:Z

.field private showPopUpWindowRunnable:Ljava/lang/Runnable;

.field private tempAppLogo:Ljava/lang/String;

.field private tempAppName:Ljava/lang/String;

.field private uniqueChainId:Ljava/lang/Long;

.field private version:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseActivity;-><init>()V

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mStatusLayout$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mStatusLayout$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mStatusLayout$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    new-instance v1, Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/integration/ActivityHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$capsule$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$capsule$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsule$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeCustom1$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeCustom1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeCustom1$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeCustom2$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeCustom2$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeCustom2$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeTopTip$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeTopTip$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeTopTip$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeBottomTip$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeBottomTip$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeBottomTip$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvMsgBubble$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvMsgBubble$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvMsgBubble$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$addHomeDialogView$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$addHomeDialogView$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addHomeDialogView$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isValidOnResume:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isResendH5PageStack:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->msgAppName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$miniAppPopWindowToken$2;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$miniAppPopWindowToken$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniAppPopWindowToken$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mShowCompleteTaskQueue$delegate:Lkotlin/Lazy;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mMFAHInterceptList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppLogo:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppName:Ljava/lang/String;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dialog$delegate:Lkotlin/Lazy;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    return-void
.end method

.method public static synthetic W(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->backgroundDownloadZipAsync$lambda$35(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V

    return-void
.end method

.method public static synthetic X(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->updateStepProgress$lambda$26(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    return-void
.end method

.method public static synthetic Y(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->reload$lambda$25(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic Z(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refreshAppInfo$lambda$34(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method public static synthetic a0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showAddHomeTips$lambda$11(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V

    return-void
.end method

.method public static final synthetic access$capsuleSetOnLeftClick(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsuleSetOnLeftClick()V

    return-void
.end method

.method public static final synthetic access$getAppBrandBundle(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/model/AppModel;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppBrandBundle(Lcom/cloud/tmc/integration/model/AppModel;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/dialog/OooOOO0;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEventCenter$p(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    return-object p0
.end method

.method public static final synthetic access$getPvAddHomeCustom1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPvAddHomeCustom2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setShowOpenAppDialog$p(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showOpenAppDialog:Z

    return-void
.end method

.method public static final synthetic access$showLoadingPage(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingPage()V

    return-void
.end method

.method public static final synthetic access$showOpenAppDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showOpenAppDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic addScreen$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "0"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addScreen(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addScreen"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b0()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading$lambda$10$lambda$9$lambda$8()V

    return-void
.end method

.method private static final backgroundDownloadZipAsync$lambda$35(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dispatchOnUpdateApp(Z)V

    return-void
.end method

.method public static synthetic c0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable$lambda$72(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method private final capsuleSetOnLeftClick()V
    .locals 11

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isLoadStatusLoadingOrError()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_MORE_ENTER:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "appModel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloper()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloper()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0oO:Ljava/lang/String;

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_7

    const-class v2, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v6, v3

    goto :goto_3

    :cond_6
    move-object v6, v0

    :goto_3
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v8

    sget v10, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    move v9, v10

    invoke-interface/range {v4 .. v10}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V

    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "activity"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;

    invoke-static {v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;

    invoke-interface {v1, p0, v0}, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;->buildBottomDialog(Landroid/app/Activity;Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    :cond_8
    return-void
.end method

.method public static synthetic capsuleSetOnRightClick$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsuleSetOnRightClick(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: capsuleSetOnRightClick"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final checkAddHomeForbidShowPopWindow(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "miniAddHomeBubbleForbidId"

    const-string v2, "[\"1000886706715795456\",\"1000391591855976448\",\"1000497027976413184\"]"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "MiniAppActivity"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method private final checkAddHomeTipStatus()V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0oo:Z

    if-eqz v3, :cond_0

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0oo:Z

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iget-wide v4, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string v4, "checkAddHomeBottomTipStatus"

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0:Z

    if-eqz v3, :cond_1

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0:Z

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iget-wide v4, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0O:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0O:Z

    if-eqz v3, :cond_2

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0O:Z

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iget-wide v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0o:J

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private final checkAndExecuteAddHomeAutoTips(Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkAndExecuteAddHomeAutoTips miniAppAutoExecuteConfig is null ->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiniAppActivity"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showAddHomeTips(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic checkAndShowAddHomeCustomToast$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;IJJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    if-nez p9, :cond_2

    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->checkAndShowAddHomeCustomToast(IJJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: checkAndShowAddHomeCustomToast"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic d0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->initView$lambda$50(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;I)V

    return-void
.end method

.method private final dispatchOnCheckForUpdateListener()V
    .locals 4

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, p0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->isNeedUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v2, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->getOnCheckForUpdate()Ljava/util/WeakHashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "hasUpdate"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_2
    return-void
.end method

.method private final dispatchOnUpdateApp(Z)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->getOnUpdateReady()Ljava/util/WeakHashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->getOnUpdateFailed()Ljava/util/WeakHashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic e0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showStatusLoading$lambda$0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method public static synthetic f0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleToast$lambda$70(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method public static synthetic finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: finishMiniActivity"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g0(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->loadError$lambda$16(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method private final getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addHomeDialogView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    return-object v0
.end method

.method private final getAppBrandBundle(Lcom/cloud/tmc/integration/model/AppModel;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "miniAppName"

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appinfoDesc"

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appinfoLogo"

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appinfoRegisterType"

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getRegisterType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appinfoDeveloper"

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appinfoReleaseTime"

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getReleaseTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private final getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    return-object v0
.end method

.method private final getMShowCompleteTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mShowCompleteTaskQueue$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/task/OooO0O0;

    return-object v0
.end method

.method private final getMStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mStatusLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    return-object v0
.end method

.method private final getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeBottomTip$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    return-object v0
.end method

.method private final getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeCustom1$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    return-object v0
.end method

.method private final getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeCustom2$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    return-object v0
.end method

.method private final getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeTopTip$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    return-object v0
.end method

.method private final getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvMsgBubble$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    return-object v0
.end method

.method public static synthetic h0()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onDestroy$lambda$78()V

    return-void
.end method

.method private static final hideStatusLoading$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 6

    const-string v0, "MiniAppActivity"

    const-string v1, "MessageBubbleUtils"

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showComplete()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    sget-object v3, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v4, v5}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->notifyHideLoading$default(Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/integration/structure/App;->setAppStartTime(J)V

    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p0}, Lcom/cloud/tmc/integration/structure/App;->setAddhomeShowCallback(Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;)V

    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    if-nez v3, :cond_3

    instance-of v3, v2, Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/cloud/tmc/integration/structure/node/AppNode;

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setAsyncLaunchStatus(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMShowCompleteTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o()V

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO0O0()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v4, "msgBubbleEnable"

    invoke-virtual {v2, v4, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v3, :cond_9

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    new-instance v4, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;

    invoke-direct {v4, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    if-eqz v3, :cond_5

    :try_start_1
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_3

    :cond_5
    :goto_2
    if-nez v5, :cond_6

    const-string v5, ""

    :cond_6
    invoke-virtual {v2, v5}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "refreshMsgBubble -> requestMsgInfo"

    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO0O0(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :goto_3
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;

    const-string v2, "appId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v3, "removePreAppinfo"

    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    :try_start_3
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IDLE:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v2, Lcom/cloud/tmc/miniapp/ui/s;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/s;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz p0, :cond_b

    :try_start_4
    sget-object p0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/t;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/t;-><init>()V

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    return-void
.end method

.method private static final hideStatusLoading$lambda$10$lambda$7(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v1, "this.application"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "MiniAppActivity"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static final hideStatusLoading$lambda$10$lambda$9$lambda$8()V
    .locals 0

    return-void
.end method

.method private static final hideStatusLoadingDelay$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading()V

    return-void
.end method

.method public static synthetic i0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingPage$lambda$83(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method private final initMiniActivityData()V
    .locals 20

    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    move-result-object v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v1, "MiniAppActivity"

    const/4 v15, 0x0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "miniAppId"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "mode"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v15

    :goto_0
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v15

    :goto_1
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "sign"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v15

    :goto_2
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    goto :goto_6

    :cond_4
    :goto_3
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v2, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->reportMiniAppLauncherFailedTrack(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "savedInstance is not null,appId is null"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x2

    invoke-static {v12, v0, v14, v1, v15}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    return-void

    :cond_5
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v2, "miniEnableNewMiniappInit"

    invoke-virtual {v0, v2, v13}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->newDataInitialize()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->oldDataInitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->oldDataInitialize()V

    :goto_5
    const-string v0, "enableQuickMode"

    invoke-virtual {v12, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    :goto_6
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_12

    :cond_7
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    iget-object v2, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->updateTaskIdByAppId(Ljava/lang/String;I)V

    sget-object v2, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3, v12}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->addMFAHListener(Ljava/lang/String;Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)V

    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cloud/tmc/integration/ActivityHelper;->setAppId(Ljava/lang/String;)V

    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;->init(Ljava/lang/String;)V

    const-class v3, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v11, ""

    if-nez v4, :cond_8

    move-object v4, v11

    :cond_8
    invoke-interface {v3, v4, v12}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->addUpdateLoadingListener(Ljava/lang/String;Lcom/cloud/tmc/integration/proxy/UpdateLoadingStepListener;)V

    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/offline/download/OfflineManager;->addOfflineLifecycleObserver(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v3

    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getTaskRootAppId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v3, v11

    :cond_9
    iput-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tootTaskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initMiniActivityData:checkTaskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkTaskId(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "startBundle"

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    if-eqz v3, :cond_b

    :try_start_1
    iget-object v0, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_b
    move-object v0, v15

    :goto_7
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkForceAddHome(Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :goto_8
    invoke-static {v1, v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    const-class v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v2, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    if-nez v2, :cond_d

    :cond_c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_d
    if-eqz v3, :cond_e

    iget-object v4, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    if-nez v4, :cond_f

    :cond_e
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_f
    invoke-interface {v0, v1, v2, v4}, Lcom/cloud/tmc/integration/structure/AppManager;->startApp(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/App;

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    sget-object v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->uniqueChainId:Ljava/lang/Long;

    iget-boolean v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    if-eqz v0, :cond_10

    iput-boolean v14, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    :cond_10
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-nez v0, :cond_11

    move-object v0, v11

    :cond_11
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->uniqueChainId:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "uniqueChainID"

    invoke-virtual {v4, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_12

    iget-object v1, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    if-eqz v1, :cond_12

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_12
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v3, :cond_13

    iget-object v1, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    if-eqz v1, :cond_13

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_13
    iget-object v7, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    new-instance v9, Lcom/cloud/tmc/integration/model/PrepareContext;

    const/16 v16, 0x90

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v8, p0

    move-object v0, v9

    move-object/from16 v9, v18

    move-object v15, v10

    move/from16 v10, v16

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Lcom/cloud/tmc/integration/model/PrepareContext;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppType(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-nez v0, :cond_14

    goto :goto_a

    :cond_14
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppVersion(Ljava/lang/String;)V

    :goto_a
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-nez v0, :cond_15

    goto :goto_b

    :cond_15
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppToken(Ljava/lang/String;)V

    :goto_b
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-nez v0, :cond_16

    goto :goto_c

    :cond_16
    iget-boolean v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setQuickMode(Z)V

    :goto_c
    iget-boolean v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    if-eqz v0, :cond_17

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v2, "quickStart"

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-class v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v14, v13}, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;->updateSession(Ljava/lang/String;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getInitDataChannel()I

    move-result v0

    const-string v1, "miniapp_id"

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-nez v0, :cond_1b

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LAUNCH_MINIAPP_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    iget-object v7, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v6, v12, v7}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "queryShortcutExist"

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    const-string v7, "100000"

    const-string v8, "scene_id"

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    :goto_d
    const-string v9, "scene"

    invoke-virtual {v5, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    :goto_e
    iput-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->sceneId:Ljava/lang/String;

    iget-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    const-string v7, "fis_type"

    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_1a

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    :cond_1a
    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v19

    invoke-interface {v0, v3, v4, v6, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_10

    :cond_1b
    move-object/from16 v6, v19

    :goto_10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v4, "app"

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1c

    const-string v5, "-1"

    invoke-virtual {v4, v15, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_11

    :cond_1c
    const/4 v15, 0x0

    :goto_11
    invoke-virtual {v0, v3, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v7, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_PV:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3, v6, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/k;

    invoke-direct {v1, v12}, Lcom/cloud/tmc/miniapp/ui/k;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->recordStart1s()V

    const-class v0, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;->requestBottomAbilityConfig()V

    :cond_1d
    :goto_12
    return-void
.end method

.method private static final initMiniActivityData$lambda$62(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    const-class v1, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-direct {v2, v3, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createQuickModePrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setVirtualStart(Z)V

    :goto_0
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-direct {v2, v3, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createPrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final initView$lambda$50(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p0

    const-string v0, "MiniAppActivity"

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p0, "setHostActivityStatusBackground: \u8bbe\u7f6e activity \u7684\u72b6\u6001\u5e03\u5c40\u80cc\u666f\u8272\u6210\u529f"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "setHostActivityStatusBackground: \u6267\u884c\u5b8c\u6bd5"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startApp$lambda$29(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic k0(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingView$lambda$44(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method public static synthetic l0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->initMiniActivityData$lambda$62(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method private static final loadError$lambda$16(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string v4, "3"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "appOpenFail"

    const-class v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v7, "0"

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v0

    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-static {v7}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v3, v4, v6, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v3, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v3, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showNoNetwork(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    goto/16 :goto_d

    :cond_4
    :goto_2
    const-string v4, "4"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_9

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, v0

    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-static {v7}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v1, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$1;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    iget-object v5, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    goto/16 :goto_d

    :cond_8
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$2;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    iget-object v5, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    goto/16 :goto_d

    :cond_9
    :goto_4
    const/4 v4, 0x2

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_f

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v0

    :cond_b
    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move-object v7, v0

    :goto_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-static {v7}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v1, v3, v6, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_e

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_closed_normal_mode:I

    goto :goto_7

    :cond_e
    :goto_6
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_closed:I

    :goto_7
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_closed:I

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, v0

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    goto/16 :goto_d

    :cond_f
    :goto_8
    if-nez v3, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v8, 0x7534

    if-ne v3, v8, :cond_15

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_12

    goto :goto_9

    :cond_12
    move-object v7, v0

    :goto_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-static {v7}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v1, v3, v6, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_14

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_no_available_normal_mode:I

    goto :goto_b

    :cond_14
    :goto_a
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_no_available:I

    :goto_b
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_no_longer_available:I

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, v0

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    goto :goto_d

    :cond_15
    :goto_c
    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showErrorLayout(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    const-string v3, "MiniAppActivity"

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showErrorLayout(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    :goto_d
    return-void
.end method

.method public static synthetic m0(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->notifyShowAddHome$lambda$96(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method public static synthetic n0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onPinForLaterClick$lambda$94$lambda$93(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V

    return-void
.end method

.method private final nativeComponentIntercept()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->shouldInterceptBackPressed(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "MiniAppActivity"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method private final newDataInitialize()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "miniAppId"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->reportMiniAppLauncherFailedTrack(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiniAppActivity"

    const-string v1, "newDataInitialize appId is null"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    return-void

    :cond_1
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "mode"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "sign"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method private static final notifyShowAddHome$lambda$96(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x51

    if-le p0, v0, :cond_3

    :try_start_0
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_0
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_1
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_2
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_3
    const/16 v0, 0x52

    if-le p0, v0, :cond_4

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_4
    const/16 v0, 0x53

    if-le p0, v0, :cond_5

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public static synthetic o0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method private final oldDataInitialize()V
    .locals 4

    const-string v0, "miniAppId"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->reportMiniAppLauncherFailedTrack(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiniAppActivity"

    const-string v1, "oldDataInitialize appId is null"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v0, "mode"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    const-string v0, "sign"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    return-void
.end method

.method private static final onDestroy$lambda$78()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeAppIdList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeAppIdList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeAppIdList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "MiniAppActivity"

    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private static final onPinForLaterClick$lambda$94$lambda$93(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "100009"

    invoke-virtual {v0, p0, p1, v1}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->recordStart1s$lambda$64(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method public static synthetic q0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoadingDelay$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method public static synthetic r0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleToast$lambda$70$lambda$69(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method private final recordStart1s()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/x;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/x;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MiniAppActivity"

    const-string v2, "report error"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static final recordStart1s$lambda$64(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 6

    const-string v0, "MiniAppActivity"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOo:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v3, "miniapp_start_suc"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "miniappid"

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    const-string p0, "not report miniapp_start_suc ,resume is false"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string v1, "report error"

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static final refreshAppInfo$lambda$34(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dispatchOnCheckForUpdateListener()V

    return-void
.end method

.method public static synthetic reload$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;ZLandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->reload(ZLandroid/os/Bundle;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: reload"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final reload$lambda$25(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch:Z

    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "launchMode"

    const-string v2, "launchModeCold"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-super {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "miniAppReload"

    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showStatusLoading()V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->setInitDataChannel(I)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->initData()V

    return-void
.end method

.method public static synthetic s0(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startAsyncApp$lambda$33$lambda$32$lambda$31(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    return-void
.end method

.method private final showAddHomeTips(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V
    .locals 2

    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterectMFAH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showAddHomeTips checkInterectMFAH is true ->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiniAppActivity"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/v;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static final showAddHomeTips$lambda$11(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V
    .locals 6

    const-string v0, "MiniAppActivity"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$miniappId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$miniAppAutoExecuteConfig"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "addhomeStatus is false"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->getTopPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object v4

    sget v5, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooOO0o:I

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->getBottomPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object v4

    sget v5, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOOO0:I

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->getExitReminder()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object p2

    sget v1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOOo:I

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private final showErrorLayout(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "0"

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v6, "appOpenFail"

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v3, v2}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "type"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v4, "uncon_page_ex"

    invoke-interface {v1, v2, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v6, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showErrorLayout$2;

    invoke-direct {v6, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showErrorLayout$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    sget v7, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v8, v0

    iget-object v9, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    move-object v5, p0

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method private final showLoadingPage()V
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/w;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/w;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final showLoadingPage$lambda$83(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v1, "MiniAppActivity"

    if-eqz v0, :cond_0

    const-string v0, "showAsyncStatusLoading loadError"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->loadError(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    goto :goto_1

    :cond_0
    const-string v0, "showAsyncStatusLoading showLoading"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoading()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_START_LOADING:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final showLoadingView$lambda$44(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p0, :cond_1

    :try_start_0
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v1, "Loading..."

    :goto_0
    const-string v2, "try {\n                  \u2026ing...\"\n                }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/EntryInfo;->title:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/EntryInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/EntryInfo;->appId:Ljava/lang/String;

    new-instance v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showLoadingView$1$1$2;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showLoadingView$1$1$2;-><init>(Lcom/cloud/tmc/integration/model/EntryInfo;)V

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addMFAHInterceptAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_2

    :try_start_1
    sget p0, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(R.string.dialog_loading_tv)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    const-string p1, "MiniAppActivity"

    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method private static final showMsgBubbleToast$lambda$70(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 10

    const-string v0, ""

    const-string v1, "showMsgBubbleToast"

    const-string v2, "MiniAppActivity"

    const-string v3, "this$0"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "pvMsgBubble is null"

    invoke-static {v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    const-class v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v5, "Bubble_ex"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "jump_confi"

    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO0OO:Z

    if-eqz v3, :cond_1

    const-string v3, "0"

    goto :goto_0

    :cond_1
    const-string v3, "1"

    :goto_0
    invoke-virtual {v6, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v3, 0x0

    invoke-interface {v4, v3, v5, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->msgAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO00o(Ljava/lang/String;)V

    :cond_3
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v9, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    if-eqz v5, :cond_4

    :try_start_1
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v6, "showMsgBubbleTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v4, p0

    invoke-interface/range {v3 .. v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    sget-object v3, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v4, "miniPopWindowTime"

    const/16 v5, 0x1388

    invoke-virtual {v3, v4, v5}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-long v3, v3

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v3, 0x1388

    :goto_1
    new-instance v5, Lcom/cloud/tmc/miniapp/ui/r;

    invoke-direct {v5, p0}, Lcom/cloud/tmc/miniapp/ui/r;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {p0, v5, v3, v4}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "context"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "msgStr"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v4, "miniMsgProvider"

    const-string v5, "miniLatestUnreadMsg"

    invoke-interface {v3, p0, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v4, "miniMsgKvId"

    const-string v5, "miniNewMsgStatus"

    invoke-static {v0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v3, p0, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_5
    const-string v0, "MiniappMsgDataProvider"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v2, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static final showMsgBubbleToast$lambda$70$lambda$69(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final showNoNetwork(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "startBundle"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    if-eqz v0, :cond_a

    const-string v2, "extraData"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->mapFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "logo"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v0, :cond_3

    const-string v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    if-eqz v0, :cond_4

    const-string v4, "desc"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, v1

    :goto_4
    const-string v0, ""

    if-nez v2, :cond_5

    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, v2

    :goto_5
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppLogo:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    move-object v0, v3

    :goto_6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppName:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    const-string v1, "0"

    goto :goto_7

    :cond_8
    const-string v0, "exception?.code ?: \"0\""

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v7, "appOpenFail"

    invoke-interface {v1, v5, v6, v7, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v5, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$1$1;

    invoke-direct {v5, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v7

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showCustomErrorLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    goto :goto_8

    :cond_9
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$1$2;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :goto_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_a
    if-nez v1, :cond_b

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$2$1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$2$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private final showOpenAppDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showOpenAppDialog:Z

    if-nez p2, :cond_2

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;

    invoke-direct {p2, p0, p3}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object p3, p2, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    const-class p3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    iget-object v1, p2, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v4

    sget v5, Lcom/cloud/tmc/miniapp/R$drawable;->mini_icon_placeholder:I

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showOpenAppDialog$1;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showOpenAppDialog$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;

    new-instance p2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showOpenAppDialog$2;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showOpenAppDialog$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    :cond_2
    return-void
.end method

.method private static final showPopUpWindowRunnable$lambda$72(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->showPopWindow(Ljava/lang/String;J)V

    return-void
.end method

.method private static final showStatusLoading$lambda$0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoading()V

    return-void
.end method

.method private static final startApp$lambda$29(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "MiniAppActivity"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "startApp success"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "launchMode"

    const-string v2, "launchModeReopen"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startMiniApp(Landroid/content/Intent;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isValidOnResume:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onResume()V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    const-string p1, "quickModeStart complete"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setVirtualStart(Z)V

    :goto_1
    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/o;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/o;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method private static final startApp$lambda$29$lambda$28(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-direct {v2, v3, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createPrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V

    :cond_0
    return-void
.end method

.method private static final startAsyncApp$lambda$33$lambda$32$lambda$31(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 5

    const-string v0, "$appNode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getBackToPagePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncApp backToPagePath -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getBackToPagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "navigationType"

    const-string v4, "startAsyncApp"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setBackToPagePath(Ljava/lang/String;)V

    return-void
.end method

.method private final startMiniApp(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "launchMode"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "launchModeHot"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMiniApp:checkTaskId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkTaskId(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/ActivityHelper;->onNewIntent(Landroid/content/Intent;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resendH5PageStack_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_3
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/App;->setAsyncStartLoadingCallback(Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$3;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$3;-><init>()V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/App;->setAppCallback(Lcom/cloud/tmc/integration/callback/IAppCallback;)V

    :cond_6
    return-void
.end method

.method public static synthetic t0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startApp$lambda$29$lambda$28(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method public static synthetic u0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading$lambda$10$lambda$7(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method private static final updateStepProgress$lambda$26(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->updateStepAnimation(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    return-void
.end method


# virtual methods
.method public addMFAHInterceptAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;->addMFAHInterceptAction(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final addScreen(Ljava/lang/String;)V
    .locals 10

    const-string v0, "MiniAppActivity"

    const-string v1, "location"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isLoadStatusLoadingOrError()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v2, "upper_pop_click"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "10"

    :cond_1
    move-object v4, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o()V

    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    :try_start_1
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cloud/tmc/miniapp/R$anim;->mini_view_toast_exit:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toInvisible(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_2
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    const-string v2, "toAddCustomBottomVisible error"

    invoke-static {p1, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Z)V

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string p1, "context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->getLauncherShortCutActivity()Ljava/lang/Class;

    move-result-object v2

    const-string p1, "get(StartActivityProxy::\u2026.launcherShortCutActivity"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x70

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :goto_3
    :try_start_4
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :goto_4
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    .locals 4

    const-string v0, "appModelNew"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backgroundDownloadZipAsync: miniappStartTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " isSuccess: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " appModelNew: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiniAppActivity"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dispatchOnUpdateApp(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMShowCompleteTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/miniapp/task/OooO00o;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/j;

    invoke-direct {v1, p0, p2}, Lcom/cloud/tmc/miniapp/ui/j;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V

    const-string p2, "onUpdateApp"

    invoke-direct {v0, p2, v1}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V

    :goto_0
    return-void
.end method

.method public final capsuleSetOnRightClick(Z)V
    .locals 11

    const-string v0, "MiniAppActivity"

    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_EXIT_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v4, ""

    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v1, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    invoke-virtual {v1, p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->clearCache(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;Z)V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    move-result-object v3

    new-instance v10, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    instance-of v4, p1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    move-object v7, p1

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)V

    invoke-interface {v3, v10}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->startBackPressedInterceptorChain(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;Z)V

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_4

    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v3, 0x2

    invoke-static {p0, p1, v1, v3, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :goto_3
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method

.method public final checkAndShowAddHomeCustomToast(IJJLjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v9, p0

    sget-object v7, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;

    iget-object v8, v9, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v9, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    new-instance v13, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;

    move-object v0, v13

    move v1, p1

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;-><init>(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, v7

    move-object v1, p0

    move-object v2, v8

    move-object v3, v10

    move-wide v4, v11

    move-wide/from16 v6, p2

    move-object v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public checkIsForeground()Z
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    move-result v0

    return v0
.end method

.method public clearMFAHIntercept()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;->clearMFAHIntercept(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)V

    return-void
.end method

.method public createSuccess(Ljava/lang/String;)V
    .locals 5

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v1, "1000886706715795456_web"

    const-string v2, "csmk"

    invoke-interface {v0, p0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    :try_start_1
    const-class v2, Lcom/cloud/tmc/integration/model/CSMKBean;

    invoke-static {v0, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/CSMKBean;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/CSMKBean;->getContinueShow()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_TOAST_ADD_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "miniappid"

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1, v2, v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$createSuccess$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$createSuccess$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    return-void
.end method

.method public final finishMiniActivity(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;Z)V
    .locals 5

    const-string v0, "exitType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->getFragments()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_12

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    goto/16 :goto_c

    :cond_3
    sget-object p2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v0, "enableMoveToBack"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "MiniAppActivity"

    if-nez v0, :cond_4

    :try_start_1
    const-string p2, "finishMiniActivity enableMoveToBack -> false"

    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    return-void

    :cond_4
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v1

    :goto_3
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string p2, "finishMiniActivity checkOpenMutipleTask -> false"

    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v1

    :goto_4
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string p2, "finishMiniActivity feedback -> finish"

    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    return-void

    :cond_8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    move-object v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkMiniAppServerApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p2, "finishMiniActivity setting -> finish"

    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getMiniAppLoadStatus()Z

    move-result v0

    if-nez v0, :cond_b

    const-string p2, "finishMiniActivity miniAppLoadStatus -> false"

    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_b
    :try_start_2
    const-string v0, "forceFinishMiniApp"

    const-string v3, "[]"

    invoke-virtual {p2, v0, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Ljava/util/List;

    invoke-static {p2, v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_c

    check-cast p2, Ljava/util/List;

    goto :goto_6

    :catchall_1
    move-exception p2

    goto :goto_7

    :cond_c
    move-object p2, v1

    :goto_6
    if-nez p2, :cond_d

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :goto_7
    :try_start_3
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_e
    move-object v0, v1

    :goto_9
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p2, "finishMiniActivity forceFinishList -> finish"

    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    :cond_f
    :try_start_4
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/AppContext;->moveToBackground()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivityHelper not null, moveToBackground status ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_10

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    :cond_10
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_11
    if-nez v1, :cond_16

    const-string p2, "app or appContext is null,exit app"

    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    goto :goto_c

    :cond_12
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_15

    :try_start_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_13

    goto :goto_a

    :cond_13
    const-class p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->removeMiniAppTask(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_c

    :cond_14
    :goto_a
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_c

    :catchall_3
    :try_start_6
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_c

    :cond_15
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_c

    :goto_b
    const-string p2, "miniappactivity"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_c
    return-void
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsule$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    return-object v0
.end method

.method public final getController()Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    return-object v0
.end method

.method public getCurrentApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentDelayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->currentDelayTime:J

    return-wide v0
.end method

.method public final getDelayShowError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->delayShowError:Z

    return v0
.end method

.method public final getDevToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableQuickMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    return v0
.end method

.method public final getErrorException()Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_mini_main:I

    return v0
.end method

.method public final getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    return-object v0
.end method

.method public getMFAHIntercept()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;->getMFAHIntercept(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMFAHInterceptList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mMFAHInterceptList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMiniAppPopWindowToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniAppPopWindowToken$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMiniappForegroundTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    return-wide v0
.end method

.method public final getMiniappResumeTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappResumeTimestamp:J

    return-wide v0
.end method

.method public final getMiniappStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    return-wide v0
.end method

.method public final getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public final getMsgAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->msgAppName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnPauseStopTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onPauseStopTimeStamp:J

    return-wide v0
.end method

.method public final getPrepareContext()Lcom/cloud/tmc/integration/model/PrepareContext;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    return-object v0
.end method

.method public final getQuickModeController()Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    return-object v0
.end method

.method public final getQuickModeStartStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    return v0
.end method

.method public getResumed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getMResumed()Z

    move-result v0

    return v0
.end method

.method public final getRootTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowMsgBubbleController()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    return-object v0
.end method

.method public getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getTempAppLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppLogo:Ljava/lang/String;

    return-object v0
.end method

.method public final getTempAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppName:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v2

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL_GAME:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v0

    if-ne v1, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public final goBack()V
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isLoadStatusLoadingOrError()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method public final goHome()V
    .locals 4

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isAsyncLaunchStatus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getHomePagePath()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setBackToPagePath(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingPage()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isLoadStatusLoadingOrError()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_NAV_HOME_PRESSED:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->exitToHomePage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final hideAddHomeTips()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public hideStatusLoading()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/ad/IAdManagerProxy;->onCreate(Lcom/cloud/tmc/integration/structure/App;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->updateHideMiniappLoadingStatus(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/a0;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/a0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hideStatusLoadingDelay(J)V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/m;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/m;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public initData()V
    .locals 3

    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MiniAppActivity"

    const-string v1, "ByteAppManager is not init"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "this.application"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->byteAppInit$com_cloud_tmc_miniapp_sdk(Landroid/app/Application;)V

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->initMiniActivityData()V

    return-void
.end method

.method public initView()V
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_m_8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$initView$1$1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$initView$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->setOnLeftClickListener(Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$initView$1$2;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$initView$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->setOnRightClickListener(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/b0;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/b0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/ActivityHelper;->setOnSetHostActivityStatusBackgroundCallback(Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;)V

    return-void
.end method

.method public final isAsyncLaunchStatus()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isAsyncLaunchStatus()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final isFirstLaunch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch:Z

    return v0
.end method

.method public isLoadStatusLoadingOrError()Z
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    move-result v0

    return v0
.end method

.method public killActivity()V
    .locals 4

    const-string v0, "NewTaskManager"

    const-string v1, "kill activity"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "launch step error,finish activity"

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    return-void
.end method

.method public loadError(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 4

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadError errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " errorMessage: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Just print: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiniAppActivity"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/App;->setMiniAppLoadStatus(Z)V

    :goto_1
    new-instance p1, Lcom/cloud/tmc/integration/chain/errorState/AppErrorState;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/errorState/AppErrorState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/errorState/AppErrorState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/n;

    invoke-direct {v0, p2, p0}, Lcom/cloud/tmc/miniapp/ui/n;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public mfahAllow(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;->mfahAllow(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;Ljava/lang/String;)V

    return-void
.end method

.method public notifyShowAddHome(I)V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/h;

    invoke-direct {v0, p1, p0}, Lcom/cloud/tmc/miniapp/ui/h;-><init>(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/16 v1, 0x400

    const/16 v2, 0x800

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->assistActivity(Landroid/app/Activity;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    invoke-interface {p1, p0}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;->register(Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 12

    const-string v0, ""

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy invoke..appId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isDarkMode:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniAppBasePage"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ondestory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniAppActivity"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

    :try_start_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object v1

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v3, "NormalTaskQueueUtils"

    invoke-static {v3, v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeActivityStack(Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;->destroy(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resendH5PageStack_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;)V

    :cond_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    invoke-interface {v1, p0}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;->unRegister(Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v4, Lcom/cloud/tmc/worker/WorkerManager;->Companion:Lcom/cloud/tmc/worker/WorkerManager$Companion;

    invoke-virtual {v4}, Lcom/cloud/tmc/worker/WorkerManager$Companion;->getEVENT_RESEND_PAGE_ENTER()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;)V

    :cond_2
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v9, "app"

    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v9, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->uniqueChainId:Ljava/lang/Long;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v9, "miniapp_id"

    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    iget-object v10, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v8, p0, v10}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    const-string v10, "queryShortcutExist"

    invoke-virtual {v7, v10, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v8, "clear"

    invoke-interface {v4, v5, v6, v8, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v10, "openMiniAppFailedReason"

    const-string v11, "\u5173\u95ed"

    invoke-virtual {v7, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6, v8, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    const-class v4, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->appDestroy(Lcom/cloud/tmc/integration/structure/App;)V

    const-class v4, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    invoke-interface {v4}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->clearDownloadCall()V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->finish()V

    :cond_3
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->finish()V

    :cond_4
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_5

    const-class v7, Lcom/cloud/tmc/integration/model/StartTime;

    invoke-interface {v4, v7}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/model/StartTime;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/StartTime;->getStartTime()J

    move-result-wide v7

    goto :goto_2

    :cond_5
    move-wide v7, v5

    :goto_2
    cmp-long v4, v7, v5

    if-lez v4, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v7

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[MiniAppActivity]: app usageTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms, appId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_EXIT_MINIAPP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "usageTime"

    invoke-virtual {v7, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v3

    :goto_4
    const-string v7, "miniappId"

    invoke-virtual {v4, v7, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v4, v9, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v7, "scene_id"

    const-string v8, "100000"

    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_8
    move-object v5, v3

    :goto_5
    const-string v7, "scene"

    invoke-virtual {v4, v7, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    const-string v7, "fis_type"

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v8, "0"

    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_9
    move-object v5, v3

    :goto_6
    invoke-virtual {v4, v7, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v4

    invoke-interface {v1, v6, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-class v4, Lcom/cloud/tmc/ad/IAdManagerProxy;

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/ad/IAdManagerProxy;

    invoke-interface {v4, v1}, Lcom/cloud/tmc/ad/IAdManagerProxy;->onDestroy(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->onDestroy()V

    sget-object v1, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->clearPopWindow(Ljava/lang/String;)V

    :try_start_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-nez v4, :cond_c

    goto :goto_7

    :cond_c
    move-object v0, v4

    :goto_7
    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->removeUpdateLoadingListener(Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->clearDownloadAppMap()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, v3}, Lcom/cloud/tmc/integration/structure/App;->setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, v3}, Lcom/cloud/tmc/integration/structure/App;->setAddhomeShowCallback(Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;)V

    :cond_e
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/p;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/p;-><init>()V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_a

    :goto_9
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->clearPerformanceImproves(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-virtual {v0, v1, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->destroy(Landroid/os/Bundle;)V

    const-class v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;->removeSession(Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/structure/AppManager;->exitApp(Lcom/cloud/tmc/integration/structure/App;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->removeForAppId(Ljava/lang/String;)V

    :cond_f
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->removeInterectMFAH(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->removeAllMfahListener(Ljava/lang/String;)V

    :try_start_2
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacyDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePrivacyDialog appId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacyDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_11

    :cond_10
    :goto_b
    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacySimpleDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePrivacySimpleDialog appId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacySimpleDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-static {}, Lcom/cloud/tmc/miniapp/TmcInitializer;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;

    goto :goto_c

    :cond_12
    move-object v0, v3

    :goto_c
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getNodeExtensionMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_d

    :cond_13
    move-object v0, v3

    :goto_d
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/node/Node;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v5, :cond_14

    instance-of v6, v4, Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v6, :cond_15

    move-object v6, v4

    check-cast v6, Lcom/cloud/tmc/integration/structure/node/AppNode;

    goto :goto_f

    :cond_15
    move-object v6, v3

    :goto_f
    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_16
    move-object v6, v3

    :goto_10
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nodeExtensionMap remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_17
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nodeExtensionMap size ->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_12

    :goto_11
    const-string v1, "privacyDialogMap"

    invoke-static {v2, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_12
    return-void
.end method

.method public onGetCurrentAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const-string v0, "[MiniActivity]\uff1aonKeyUp()"

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->nativeComponentIntercept()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    instance-of v4, v1, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    if-eqz v4, :cond_3

    check-cast v1, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    invoke-interface {v1, v4}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v3

    :goto_4
    instance-of v4, v1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    if-eqz v4, :cond_6

    move-object v3, v1

    check-cast v3, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->shouldInterceptOnKeyDown()Z

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v0

    :goto_5
    if-eqz v1, :cond_8

    move v0, v2

    goto :goto_6

    :cond_8
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    const-string p2, "MiniAppActivity"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startMiniApp(Landroid/content/Intent;)V

    return-void
.end method

.method public onPackageLoadFailed(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    return-void
.end method

.method public onPackageLoadSuccess()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 6

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->onPause()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onPauseStopTimeStamp:J

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappResumeTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    :goto_0
    return-void
.end method

.method public onPinForLaterClick(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V
    .locals 2

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->pinForLater(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/c0;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/ui/c0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "miniappId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is Destroy by onRenderProcessGone"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRenderProcessGone"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->reportMiniAppLauncherFailedTrack(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v2, ""

    if-eqz v0, :cond_2

    const-class v3, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isValidOnResume:Z

    const/4 v5, 0x0

    invoke-interface {v3, v0, v4, v5}, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;->updateSession(Ljava/lang/String;ZZ)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isValidOnResume:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume:checkTaskId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkTaskId(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v2

    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->moveToForeground(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->addActivityStack(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->onResume()V

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "NormalTaskQueueUtils"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->checkPinForLaterStatus(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappResumeTimestamp:J

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->checkAddHomeTipStatus()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->statusLayoutOnResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    const-string v1, "miniAppId"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    const-string v1, "mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    const-string v1, "sign"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onStart()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    invoke-interface {v0, p0}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;->addShortCutListener(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/integration/model/ForegroundTime;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/ForegroundTime;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->setStartTime()V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->addStartCount()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 8

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onStop()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->onStop()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_2

    const-class v1, Lcom/cloud/tmc/integration/model/ForegroundTime;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/ForegroundTime;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->setEndTime()Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    move-result-object v0

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_MINIAPP_FOREGROUND_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "foregroundRandomId"

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getForegroundRandomId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "foregroundStartTime"

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getStartTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "foregroundEndTime"

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getEndTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "foregroundTime"

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getCostTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "foregroundStartCount"

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getForegroundStartCount()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "page_path"

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getHomePagePath()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, ""

    if-nez v5, :cond_1

    move-object v5, v6

    :cond_1
    :try_start_1
    invoke-virtual {v4, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, v2, v3, v6, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "MiniAppActivity"

    const-string v2, "Failed to report foreground time"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const-string v1, "openMCScene"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    const-class v0, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    invoke-interface {v0, p0}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;->removeShortCutListener(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;)V

    return-void
.end method

.method public onUpdateStep(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 1

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    return-void
.end method

.method public final reSendDelayPageEnterToWorker()V
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isResendH5PageStack:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    instance-of v3, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->getFragments()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    check-cast v5, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-ne v4, v7, :cond_4

    return-void

    :cond_4
    if-eqz v5, :cond_6

    const-string v4, "tmcFragment"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v5, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    if-eqz v4, :cond_6

    move-object v4, v5

    check-cast v4, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->isSendPageEnter()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4, v1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->setSendPageEnter(Z)V

    instance-of v4, v5, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    if-eqz v4, :cond_5

    check-cast v5, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    goto :goto_3

    :cond_5
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_6

    invoke-static {v5, v2, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_6
    move v4, v6

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final refresh()V
    .locals 4

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_REFRESH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refreshApp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh fail!!,msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final refreshApp()V
    .locals 7

    const-string v0, "Refresh app..."

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "appLoadResult"

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v2

    :cond_3
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_6

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const-string v5, "reLaunch"

    invoke-interface {v0, v3, v5}, Lcom/cloud/tmc/integration/structure/App;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "navigationType"

    const-string v6, "refreshApp"

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4, v2}, Lcom/cloud/tmc/integration/structure/App;->relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_6
    :goto_3
    const-string v0, "refreshApp null"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    const-string v2, "Refresh fail!"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public refreshAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 4

    const-string v0, "appModelNew"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshAppInfo: miniappStartTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " appModelNew: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiniAppActivity"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dispatchOnCheckForUpdateListener()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMShowCompleteTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/miniapp/task/OooO00o;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/q;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/q;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    const-string v2, "onCheckForUpdate"

    invoke-direct {v0, v2, v1}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V

    :goto_0
    return-void
.end method

.method public final reload(ZLandroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->reportFailureClickReloadButton()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->updateHideMiniappLoadingStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->getFragments()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    sget-object v2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->REFRESH:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/u;

    invoke-direct {v0, p0, p2, p1}, Lcom/cloud/tmc/miniapp/ui/u;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeBottomDialogMenu(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO00o(Ljava/lang/String;)V

    return-void
.end method

.method public final restoreBottomDialogMenu(Ljava/lang/String;)V
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "it.key"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "it.value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->addItem(ILjava/lang/Object;)V

    iget-object p1, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO:Landroid/util/ArrayMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setController(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    return-void
.end method

.method public final setCurrentDelayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->currentDelayTime:J

    return-void
.end method

.method public final setDelayShowError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->delayShowError:Z

    return-void
.end method

.method public final setDevToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    return-void
.end method

.method public final setEnableQuickMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    return-void
.end method

.method public final setErrorException(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    return-void
.end method

.method public final setFirstLaunch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch:Z

    return-void
.end method

.method public setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    return-void
.end method

.method public final setMiniappForegroundTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    return-void
.end method

.method public final setMiniappResumeTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappResumeTimestamp:J

    return-void
.end method

.method public final setMiniappStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    return-void
.end method

.method public final setMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    return-void
.end method

.method public final setMsgAppName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->msgAppName:Ljava/lang/String;

    return-void
.end method

.method public final setOnPauseStopTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onPauseStopTimeStamp:J

    return-void
.end method

.method public final setPrepareContext(Lcom/cloud/tmc/integration/model/PrepareContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    return-void
.end method

.method public final setQuickModeController(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    return-void
.end method

.method public final setQuickModeStartStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    return-void
.end method

.method public final setRootTaskId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public final setTempAppLogo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppLogo:Ljava/lang/String;

    return-void
.end method

.method public final setTempAppName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppName:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    return-void
.end method

.method public final showAddHomeTipsDialog(I)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "appId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO0:I

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/cloud/tmc/miniapp/R$anim;->mini_view_toast_enter:I

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "quit_pop_ex"

    invoke-interface {p1, v0, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showComplete()Z
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showComplete(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    move-result v0

    return v0
.end method

.method public showCustomErrorLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showError(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showLoading()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoading(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    return-void
.end method

.method public showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoadingLogo(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showLoadingView(Lcom/cloud/tmc/integration/model/EntryInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/y;

    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/ui/y;-><init>(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showMainLayoutAlpha(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V

    return-void
.end method

.method public final showMsgBubbleToast()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/d0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/d0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showNoNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showPhotoEmpty(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    return-void
.end method

.method public final showPopUpWindowRunnable(J)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/g;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/g;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showStatusLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/z;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/z;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showTaskDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showUnstableNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showUpgradeHintPrompt(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showUpgradeHintView(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public showUpgradeHintView(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/VersionUpdateAction$DefaultImpls;->showUpgradeHintView(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public startApp(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MiniAppActivity"

    const-string v1, "startApp"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/l;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/ui/l;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAsyncApp(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "MiniAppActivity"

    const-string v1, "startAsyncApp"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v5, "startBundle"

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    const-string v5, "startAppModel"

    invoke-static {p1, v5}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz p1, :cond_2

    invoke-interface {v2, p1}, Lcom/cloud/tmc/integration/structure/App;->updateAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    :cond_2
    instance-of p1, v2, Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz p1, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/cloud/tmc/integration/structure/node/AppNode;

    :cond_3
    if-eqz v3, :cond_4

    const-string p1, "startAsyncApp success"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setAsyncLaunchStatus(Z)V

    iget-object p1, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setmStartParams(Landroid/os/Bundle;)V

    iget-object p1, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setmSceneParams(Landroid/os/Bundle;)V

    iget-object p1, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    const-string v4, "appLoadResult"

    invoke-static {p1, v4}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setmAppLoadResult(Lcom/cloud/tmc/integration/structure/AppLoadResult;)V

    const-class v4, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-interface {v2, v4, p1}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getBackToPagePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "appNode.backToPagePath"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/cloud/tmc/miniapp/ui/i;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/miniapp/ui/i;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public statusLayoutOnResume()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    return-void
.end method

.method public final swipeBack(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 1

    const-string v0, "mFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_1

    const-class v0, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->goBack()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateBottomDialogMenu(Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v3, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_3

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->setIcon(I)V

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->setName(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    return-void
.end method

.method public updateStepAnimation(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    return-void
.end method

.method public updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 2

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/e0;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/ui/e0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
