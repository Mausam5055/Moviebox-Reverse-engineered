.class public final Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;

.field public static final KEY_APPID:Ljava/lang/String; = "appId"

.field public static final KEY_BACK_TO_URL:Ljava/lang/String; = "extraMiniBackToUrl"

.field public static final KEY_CLEAR_ALL_PAGES:Ljava/lang/String; = "extraMiniClearAllPages"

.field public static final KEY_ENTRANCE_URL:Ljava/lang/String; = "entranceUrl"

.field public static final KEY_FIS_TYPE:Ljava/lang/String; = "fis_type"

.field public static final KEY_H5_PATH:Ljava/lang/String; = "h5Path"

.field public static final KEY_HYBRID_PATH:Ljava/lang/String; = "hybridPath"

.field public static final KEY_MASTS:Ljava/lang/String; = "massid"

.field public static final KEY_MFAH:Ljava/lang/String; = "mfah"

.field public static final KEY_MODE:Ljava/lang/String; = "mode"

.field public static final KEY_PAGE:Ljava/lang/String; = "page"

.field public static final KEY_QUERY:Ljava/lang/String; = "query"

.field public static final KEY_QUICK_MODE:Ljava/lang/String; = "quickMode"

.field public static final KEY_SCENE_ID:Ljava/lang/String; = "scene_id"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mFlBaseLayout$delegate:Lkotlin/Lazy;

.field private start:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "MiniSchemaFilterActivity"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$mFlBaseLayout$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity$mFlBaseLayout$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->mFlBaseLayout$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->onCreate$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->onResume$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V

    return-void
.end method

.method private final getMFlBaseLayout()Landroid/widget/FrameLayout;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->mFlBaseLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-mFlBaseLayout>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getStartParams(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 4

    instance-of v0, p1, Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "entranceUrl"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static final onCreate$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string p1, "mFlBaseLayout click"

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onResume$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSchemeInitStatus(Z)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v2, "MiniSchemaFilterActivity finish: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final getStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->start:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v1, "oncreat"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/Utils;->setAppIfNecessary(Landroid/app/Application;)V

    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->activity_layout_mini_scheme:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget v0, Lcom/cloud/tmc/miniapp/R$color;->mini_color_transparent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->getMFlBaseLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/f1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/f1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v0, "onNewIntent"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSchemeInitStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v1, "launchMiniAppForId: \u5df2\u62c9\u8d77"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSchemeInitStatus(Z)V

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->start:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v2, "launchMiniAppForId: start  \u5df2\u62c9\u8d77"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSchemeInitStatus(Z)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->start:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->getStartParams(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->getStartParams(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "appId"

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "scene_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "200008"

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "palmplay://thirdlauncher.com?entryType=miniapp&_source=miniapps&appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&from=10&scene_id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchMiniApp: start  psDeeplink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v2, "MiniSchemaFilterActivity: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    sget-object v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/g1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/g1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->runOnMain(Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->TAG:Ljava/lang/String;

    const-string v2, "MiniSchemaFilterActivity:  finish "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->finish()V

    :goto_3
    return-void
.end method

.method public final setStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniSchemaFilterActivity;->start:Z

    return-void
.end method
