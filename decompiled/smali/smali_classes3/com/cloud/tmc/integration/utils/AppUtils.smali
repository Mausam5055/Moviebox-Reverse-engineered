.class public final Lcom/cloud/tmc/integration/utils/AppUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0007J\u0008\u0010\u001b\u001a\u00020\u0006H\u0002J&\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010 \u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000bJ\u0010\u0010!\u001a\u00020\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\u0008\u0008\u0002\u0010%\u001a\u00020\u0006J\u0015\u0010&\u001a\u00020\u00062\u0008\u0010\'\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010(J\u0008\u0010)\u001a\u00020\u0006H\u0007J\u0010\u0010*\u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010$J\u000e\u0010+\u001a\u00020\u00082\u0006\u0010,\u001a\u00020-J\u000e\u0010.\u001a\u00020\u00082\u0006\u0010,\u001a\u00020-J+\u0010/\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u0001032\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u00105J+\u00106\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u0001032\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u00105J\u0010\u00107\u001a\u00020\u000b2\u0008\u00100\u001a\u0004\u0018\u000101J+\u00108\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u0001032\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u00105J\u0012\u00109\u001a\u00020\u00172\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0012\u0010:\u001a\u00020\u00062\u0008\u0010;\u001a\u0004\u0018\u00010\u0019H\u0007J\u0010\u0010<\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$J\u001c\u0010=\u001a\u00020\u00062\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0007J\u0010\u0010B\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$J\u001c\u0010C\u001a\u00020\u00062\u0008\u0010;\u001a\u0004\u0018\u00010\u00192\u0008\u0010D\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010E\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$J\u0010\u0010F\u001a\u00020\u00062\u0008\u00100\u001a\u0004\u0018\u000101J\u0010\u0010G\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$J\u0010\u0010H\u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010$J\u001a\u0010H\u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010@\u001a\u0004\u0018\u00010AJ&\u0010I\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010J0\u0010I\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u00102\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u0008\u0010J\u001a\u0004\u0018\u00010\u0014J\u0012\u0010J\u001a\u0004\u0018\u00010\u00142\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u001a\u0010K\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010L\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ*\u0010M\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020O2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010P\u001a\u00020\u000bJJ\u0010Q\u001a\u00020\u00172\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0008\u0010R\u001a\u0004\u0018\u00010\u000b2\u0018\u0008\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010T2\u0008\u0008\u0002\u0010U\u001a\u00020\u00062\u0008\u0008\u0002\u0010V\u001a\u00020\u0006H\u0007J4\u0010W\u001a\u00020\u00172\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010R\u001a\u00020\u000b2\u0018\u0008\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010TH\u0007J>\u0010X\u001a\u00020\u00172\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0008\u0010R\u001a\u0004\u0018\u00010\u000b2\u0006\u0010Y\u001a\u00020\u00062\u0018\u0008\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010TH\u0007J4\u0010Z\u001a\u00020\u00172\u0006\u0010[\u001a\u00020\\2\u0008\u0010R\u001a\u0004\u0018\u00010\u000b2\u0018\u0008\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010TH\u0007J\u0008\u0010]\u001a\u00020\u0006H\u0007J\u000e\u0010^\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006`"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/AppUtils;",
        "",
        "()V",
        "DENSITY",
        "",
        "ISGET",
        "",
        "SCREEN_HEIGHT",
        "",
        "SCREEN_WIDTH",
        "TAG",
        "",
        "customDarkConfig",
        "customDarkLaunchParams",
        "Ljava/util/HashMap;",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
        "Lkotlin/collections/HashMap;",
        "customLightConfig",
        "customLightLaunchParams",
        "customTabBar",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "miniappCustomConfig",
        "checkAndRemoveExtraPage",
        "",
        "mStartParams",
        "Landroid/os/Bundle;",
        "mSceneParams",
        "checkAndroidVersionShowAddhomeDialog",
        "checkEnableSyncToPs",
        "enableCheckFromPs",
        "appId",
        "from",
        "checkGoHomeToHomePage",
        "checkMiniAppPrivacyAgreementDialogWhiteList",
        "checkShowCustomAddhomeDialog",
        "context",
        "Landroid/content/Context;",
        "showConfirmDialog",
        "checkUesCommonresApp",
        "miniappType",
        "(Ljava/lang/Integer;)Z",
        "enableWebViewDebugger",
        "getConfigKey",
        "getContainerHeight",
        "pageContext",
        "Lcom/cloud/tmc/integration/structure/PageContext;",
        "getContainerWidth",
        "getCurrentPackageEncryptionUrl",
        "appModel",
        "Lcom/cloud/tmc/integration/model/AppModel;",
        "subPackageInfo",
        "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
        "isFullPackage",
        "(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;",
        "getCurrentPackageUniqueName",
        "getPackageDownloadUrl",
        "getPackageUniqueSign",
        "initWidthAndHeight",
        "isExitPage",
        "bundle",
        "isHolaBrowser",
        "isHomepage",
        "page",
        "Lcom/cloud/tmc/integration/structure/Page;",
        "appLoadResult",
        "Lcom/cloud/tmc/integration/structure/AppLoadResult;",
        "isLauncher",
        "isLegalPath",
        "path",
        "isMovieBox",
        "isSubPackageApp",
        "isTspotBrowser",
        "queryMiniappCustomConfig",
        "queryMiniappCustomLaunchParams",
        "queryMiniappCustomTabBar",
        "queryShortcutExist",
        "queytShortcutBySystemApi",
        "reportStartTime",
        "startUsageTime",
        "",
        "startType",
        "sendApiCallbackToWorker",
        "eventName",
        "ext",
        "",
        "keepCallback",
        "closeKeepCallback",
        "sendAppOrPageReadyToRender",
        "sendEventOrLifecycleToWorker",
        "lifecycle",
        "sendToApp",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "subpackageIsEnable",
        "updateMiniappCustomConfig",
        "config",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static DENSITY:F = 0.0f

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

.field private static ISGET:Z = false

.field private static SCREEN_HEIGHT:I = 0x0

.field private static SCREEN_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppUtils"

.field private static customDarkConfig:Ljava/lang/String;

.field private static customDarkLaunchParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
            ">;"
        }
    .end annotation
.end field

.field private static customLightConfig:Ljava/lang/String;

.field private static customLightLaunchParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
            ">;"
        }
    .end annotation
.end field

.field private static customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

.field private static miniappCustomConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/AppUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    const-string v0, ""

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/AppUtils;->reportStartTime$lambda$11(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static final checkAndRemoveExtraPage(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "page"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v3, ""

    const-string v4, "pageCopy"

    const-string v5, "usedPage"

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {p0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, p0

    :goto_2
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    const-string p1, "AppUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private final checkAndroidVersionShowAddhomeDialog()Z
    .locals 3

    const/16 v0, 0x23

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v2, "showAddHomeCustomDialog"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic checkEnableSyncToPs$default(Lcom/cloud/tmc/integration/utils/AppUtils;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkEnableSyncToPs(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic checkShowCustomAddhomeDialog$default(Lcom/cloud/tmc/integration/utils/AppUtils;Landroid/content/Context;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkShowCustomAddhomeDialog(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static final enableWebViewDebugger()Z
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "AppUtils"

    :try_start_0
    const-string v1, "miniapp.webviewdebug"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableWebViewDebugger -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "enableWebViewDebugger"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic getCurrentPackageEncryptionUrl$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->getCurrentPackageEncryptionUrl(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCurrentPackageUniqueName$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->getCurrentPackageUniqueName(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPackageUniqueSign$default(Lcom/cloud/tmc/integration/utils/AppUtils;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->getPackageUniqueSign(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final initWidthAndHeight(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/cloud/tmc/integration/utils/AppUtils;->ISGET:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/cloud/tmc/integration/utils/AppUtils;->DENSITY:F

    if-ge v0, v1, :cond_1

    sput v0, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_WIDTH:I

    sput v1, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_HEIGHT:I

    goto :goto_0

    :cond_1
    sput v1, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_WIDTH:I

    sput v0, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_HEIGHT:I

    :goto_0
    const/4 p1, 0x1

    sput-boolean p1, Lcom/cloud/tmc/integration/utils/AppUtils;->ISGET:Z

    :cond_2
    return-void
.end method

.method public static final isExitPage(Landroid/os/Bundle;)Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "extraExitPageData"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static final isHomepage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const/4 v4, 0x2

    invoke-static {v3, p1, v0, v4, v1}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result p0

    if-ne p0, v2, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method public static final isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appLoadResult"

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->subpackageIsEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->subPackages:Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/Subpackage;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/Subpackage;->getPages()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/Subpackage;->getPages()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/Subpackage;->getRoot()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_3
    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz p0, :cond_7

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_5
    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz p0, :cond_7

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_7
    const/4 p0, 0x0

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    const-string v3, "http://"

    invoke-static {p1, v3, v2, v0, p0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_8

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    const-string v3, "https://"

    invoke-static {p1, v3, v2, v0, p0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_9

    :goto_1
    return v1

    :cond_9
    return v2
.end method

.method public static synthetic reportStartTime$default(Lcom/cloud/tmc/integration/utils/AppUtils;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-string p5, ""

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->reportStartTime(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final reportStartTime$lambda$11(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    const-string v0, "$appId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$startType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkEnableSyncToPs(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;

    invoke-interface {p1, p0, p2, p3, p4}, Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;->reportMiniAppStartTime(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static final sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v5, 0x1c

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendApiCallbackToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static final sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendApiCallbackToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static final sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendApiCallbackToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static final sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    const-class v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/WorkerStore;->workerId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "url"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "renderId"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p0

    const-string v1, "create()\n            .ad\u2026Y_RENDER_ID, page.pageId)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    goto :goto_0

    :cond_2
    const-string p2, "action"

    if-eqz p3, :cond_3

    const-string p3, "keepalive_active"

    invoke-virtual {p0, p2, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    const-string p3, "keepalive_close"

    invoke-virtual {p0, p2, p3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchApiCallbackToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic sendApiCallbackToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendApiCallbackToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ZZ)V

    return-void
.end method

.method public static final sendAppOrPageReadyToRender(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public static final sendAppOrPageReadyToRender(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendAppOrPageReadyToRender"

    const-string v1, "subPkg"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v3, "sendAppOrPageReadyToRender 01"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_d

    const-class v4, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    if-nez v3, :cond_2

    goto/16 :goto_8

    :cond_2
    const-string v4, "sendAppOrPageReadyToRender 02"

    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v4, :cond_d

    invoke-static {v4}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    const-string v5, "sendAppOrPageReadyToRender 03"

    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v0

    :goto_1
    iget-object v5, v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    const-string v6, ""

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz v5, :cond_6

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v7, 0x1

    xor-int/2addr v5, v7

    if-ne v5, v7, :cond_6

    iget-object v3, v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz v3, :cond_5

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v3, v0

    goto :goto_2

    :cond_6
    move-object v3, v6

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendAppOrPageReadyToRender firstPage:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v5

    const-string v7, "url"

    invoke-virtual {v5, v7, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    const-string v5, "renderId"

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    const-string v5, "appPath"

    invoke-virtual {v3, v5, v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    const-string v5, "pagePath"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    const-string v5, "appJson"

    invoke-virtual {v3, v5, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    const-string v4, "create()\n            .ad\u2026EY_APP_JSON, appConfigJo)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v4, "miniappId"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_7
    move-object v5, v0

    :goto_3
    invoke-virtual {v3, v4, v5}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    sget-object v4, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_8
    move-object v5, v0

    :goto_4
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "commonresId"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {v3, v4, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    const-string v0, "AppUtils"

    invoke-static {v0, v6, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, v0, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    goto :goto_7

    :cond_b
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p0

    if-eqz p0, :cond_c

    const-string p2, "__appReady"

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->setGlobalObject(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendAppOrPageReadyToRender dispatchEventToRender eventName:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchEventToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_d
    :goto_8
    return-void
.end method

.method public static synthetic sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendAppOrPageReadyToRender(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Z)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public static final sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    const-class v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/WorkerStore;->workerId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    invoke-static {p3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v1

    :goto_0
    invoke-static {p3}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p3

    const-string v1, "url"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p3

    const-string v1, "renderId"

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v1, p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p0

    const-string p3, "create(extParams)\n      \u2026Y_RENDER_ID, page.pageId)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchLifecycleToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchEventToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public static final sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendToApp$default(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public static final sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public static synthetic sendToApp$default(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final subpackageIsEnable()Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "enableMiniSubPackage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final checkEnableSyncToPs(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final checkGoHomeToHomePage(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "miniGoHomeAllowId"

    const-string v2, "[\"1000616124851466240\"]"

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
    const-string v0, "AppUtils"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public final checkMiniAppPrivacyAgreementDialogWhiteList(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "AppUtils"

    const-string v1, "[]"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-class v2, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v3, "privacyAgreementDialogWhiteListV4"

    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_0
    :try_start_1
    const-string v3, "privacyAgreementDialogWhiteListStr"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/cloud/tmc/integration/utils/AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$1;

    invoke-direct {v3}, Lcom/cloud/tmc/integration/utils/AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "object :\n               \u2026ayList<String>>() {}.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_2
    new-instance v2, Lcom/cloud/tmc/integration/utils/AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$2;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$2;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "object : TypeToken<ArrayList<String>>() {}.type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v1

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    :goto_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final checkShowCustomAddhomeDialog(Landroid/content/Context;Z)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "showAddHomeCustomDialog"

    invoke-virtual {v0, v1, p2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLauncher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkAndroidVersionShowAddhomeDialog()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :catchall_0
    :goto_0
    return p2
.end method

.method public final checkUesCommonresApp(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getConfigKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "com.community.oneroom"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "com.yomobigroup.chat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "com.vskit.lite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "com.community.moviebox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "com.community.mbox.sa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :sswitch_5
    const-string v0, "com.community.mbox.ru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :sswitch_6
    const-string v0, "com.community.mbox.ph"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :sswitch_7
    const-string v0, "com.community.mbox.ng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :sswitch_8
    const-string v0, "com.community.mbox.mb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :sswitch_9
    const-string v0, "com.community.mbox.ke"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :sswitch_a
    const-string v0, "com.community.mbox.in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :sswitch_b
    const-string v0, "com.community.mbox.id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :sswitch_c
    const-string v0, "com.community.mbox.ar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :sswitch_d
    const-string v0, "com.community.mbox.affr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :sswitch_e
    const-string v0, "com.community.mbox.afen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object p1, v1

    :cond_3
    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e4bc674 -> :sswitch_e
        -0x7e4bc651 -> :sswitch_d
        -0x5a6ff651 -> :sswitch_c
        -0x5a6ff567 -> :sswitch_b
        -0x5a6ff55d -> :sswitch_a
        -0x5a6ff528 -> :sswitch_9
        -0x5a6ff4ed -> :sswitch_8
        -0x5a6ff4c9 -> :sswitch_7
        -0x5a6ff48a -> :sswitch_6
        -0x5a6ff43f -> :sswitch_5
        -0x5a6ff434 -> :sswitch_4
        -0x38a64173 -> :sswitch_3
        -0x19de8af0 -> :sswitch_2
        0x2347f80f -> :sswitch_1
        0x68f2bcf3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getContainerHeight(Lcom/cloud/tmc/integration/structure/PageContext;)I
    .locals 1

    const-string v0, "pageContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->initWidthAndHeight(Landroid/content/Context;)V

    :cond_1
    sget p1, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_HEIGHT:I

    return p1
.end method

.method public final getContainerWidth(Lcom/cloud/tmc/integration/structure/PageContext;)I
    .locals 1

    const-string v0, "pageContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->initWidthAndHeight(Landroid/content/Context;)V

    :cond_1
    sget p1, Lcom/cloud/tmc/integration/utils/AppUtils;->SCREEN_WIDTH:I

    return p1
.end method

.method public final getCurrentPackageEncryptionUrl(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    const-string v0, "appModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getCurrentPackageUniqueName(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    const-string v0, "appModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "mainPkg"

    :goto_0
    return-object p1
.end method

.method public final getPackageDownloadUrl(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v0

    const-string v1, "AppUtils"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getCompatiblePackageUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageDownloadUrl: commonPackageUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getCompatiblePackageUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageDownloadUrl: packageUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    :cond_1
    const-string p1, ""

    :cond_2
    return-object p1
.end method

.method public final getPackageUniqueSign(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, ""

    const-string v4, "appModel"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v3, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p3, "format(format, *args)"

    const-string v4, "%s|%s"

    if-eqz p2, :cond_3

    :try_start_1
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v3

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p2, v3

    :cond_2
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v0

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, v3

    :cond_4
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "mainPkg"

    aput-object p1, p2, v0

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v3
.end method

.method public final isHolaBrowser(Landroid/content/Context;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "com.talpa.hibrowser"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final isLauncher(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final isMovieBox(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "com.community.oneroom"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.community.moviebox"

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.community.mbox.afen"

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.community.mbox.affr"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3, v0}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.community.mbox.ar"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.community.mbox.id"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.community.mbox.in"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.community.mbox.ke"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.community.mbox.mb"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.community.mbox.ng"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.community.mbox.ph"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.community.mbox.ru"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.community.mbox.sa"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.yomobigroup.chat"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.vskit.lite"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :cond_2
    :goto_1
    return v2
.end method

.method public final isSubPackageApp(Lcom/cloud/tmc/integration/model/AppModel;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->subpackageIsEnable()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackageUrls()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method public final isTspotBrowser(Landroid/content/Context;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "com.transsion.tecnospot"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final queryMiniappCustomConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "dark"

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "jsonObject.getAsJsonObject(\"dark\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    :cond_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    return-object p1

    :cond_1
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "light"

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "jsonObject.getAsJsonObject(\"light\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    :cond_2
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string p1, ""

    return-object p1
.end method

.method public final queryMiniappCustomConfig(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p2, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getDark()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "toJson(it.dark)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkConfig:Ljava/lang/String;

    return-object p1

    :cond_3
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz p2, :cond_6

    iget-object p1, p2, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getLight()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "toJson(it.light)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightConfig:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string p1, ""

    return-object p1
.end method

.method public final queryMiniappCustomLaunchParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "launchParams"

    const-class v2, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    const-string v3, "dark"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomLaunchParams$type$1;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomLaunchParams$type$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    return-object v0

    :cond_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    const-string v3, "light"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomLaunchParams$type$2;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomLaunchParams$type$2;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;

    :cond_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final queryMiniappCustomLaunchParams(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/AppLoadResult;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getDark()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;->getLaunchParams()Ljava/util/HashMap;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    sput-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customDarkLaunchParams:Ljava/util/HashMap;

    return-object p1

    :cond_3
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;

    if-nez v1, :cond_6

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getLight()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;->getLaunchParams()Ljava/util/HashMap;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    sput-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customLightLaunchParams:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v0
.end method

.method public final queryMiniappCustomTabBar()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    const-string v2, "tabBar"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomTabBar$type$1;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/AppUtils$queryMiniappCustomTabBar$type$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    sput-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final queryMiniappCustomTabBar(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->getTarBar()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v1

    sput-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->customTabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "miniKeyStorageAddHome"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addHomeStatus_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, v2, p2, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queytShortcutBySystemApi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string p2, "apputils"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return v0
.end method

.method public final queytShortcutBySystemApi(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/init/b;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/init/c;->a(Landroid/content/pm/ShortcutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5;->a(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object p1

    const-string v0, "sm.pinnedShortcuts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t5;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/u5;->a(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    return v2
.end method

.method public final reportStartTime(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v7, Lcom/cloud/tmc/integration/utils/f;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/integration/utils/f;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0, v7}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateMiniappCustomConfig(Ljava/lang/String;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->miniappCustomConfig:Ljava/lang/String;

    return-void
.end method
