.class public final Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0002J&\u0010\n\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007J\u001c\u0010\n\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007J\u0012\u0010\n\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007\u00a2\u0006\u0002\u0010\u0012J&\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\tH\u0007J\u001e\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0004H\u0007J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0004H\u0007J\u0018\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0002J\u0018\u0010!\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;",
        "",
        "()V",
        "forceCapsuleViewBgColor",
        "",
        "forceTabBarBean",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "getDefaultTabBarConfig",
        "getDefaultWindowConfig",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;",
        "getTabBar",
        "tabBar",
        "appLoadResult",
        "Lcom/cloud/tmc/integration/structure/AppLoadResult;",
        "force",
        "",
        "getTitleBarNodeMode",
        "",
        "()Ljava/lang/Integer;",
        "getWindowConfig",
        "appWindowConfig",
        "pageWindowConfig",
        "customPageWindowConfig",
        "getWindowOptimalConfiguration",
        "pagePath",
        "navigationBarAction",
        "action",
        "setCapsuleViewBgColor",
        "",
        "color",
        "setupTabBarConfig",
        "default",
        "target",
        "setupWindowConfig",
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
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;

.field private static forceCapsuleViewBgColor:Ljava/lang/String;

.field private static forceTabBarBean:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;

    const-string v0, ""

    sput-object v0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->forceCapsuleViewBgColor:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDefaultTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;-><init>()V

    const-string v1, "black"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->setBorderStyle(Ljava/lang/String;)V

    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->setPosition(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->setCustom(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private final getDefaultWindowConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    .locals 4

    new-instance v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnablePullDownRefresh(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnablePullUpRefresh(Ljava/lang/Boolean;)V

    const-string v2, "default"

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderStyle(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderCustomTextEnable(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderTranslationContent(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnableTransparentStatusBar(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnableNavigationBarLoading(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationStyle(Ljava/lang/String;)V

    const-string v2, "#ffffff"

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationBarBackgroundColor(Ljava/lang/String;)V

    const-string v2, "black"

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationBarTextStyle(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationBarIconStyle(Ljava/lang/String;)V

    const-string v2, "home"

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationBarHomeAction(Ljava/lang/String;)V

    const-string v2, "manual"

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setHandleWebviewPreload(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnablePageLoading(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnableTabBarAdjustPan(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setLimitTextZoom(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static final getTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/AppLoadResult;Z)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p2, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->forceTabBarBean:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getDefaultTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v1

    if-nez p2, :cond_1

    if-eqz p0, :cond_1

    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->setupTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V

    :cond_1
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryMiniappCustomTabBar(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {v0, v1, p1}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->setupTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p0, :cond_3

    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->setupTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V

    sput-object v1, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->forceTabBarBean:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    :cond_3
    return-object v1
.end method

.method public static final getTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Z)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->forceTabBarBean:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getDefaultTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->setupTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V

    :cond_1
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryMiniappCustomTabBar()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->setupTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->setupTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V

    sput-object v1, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->forceTabBarBean:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    :cond_3
    return-object v1
.end method

.method public static final getTabBar(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/AppLoadResult;Z)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getTabBar$default(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/AppLoadResult;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/AppLoadResult;Z)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getTabBar$default(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Z)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object p0

    return-object p0
.end method

.method public static final getTitleBarNodeMode()Ljava/lang/Integer;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->forceCapsuleViewBgColor:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "white"

    sget-object v1, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->forceCapsuleViewBgColor:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static final getWindowConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getDefaultWindowConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->setupWindowConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {v0, v1, p1}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->setupWindowConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {v0, v1, p2}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->setupWindowConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    :cond_2
    return-object v1
.end method

.method public static final getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->launchParams:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v3, p0}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryMiniappCustomLaunchParams(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;

    goto :goto_4

    :cond_4
    move-object p0, v0

    :goto_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object p0

    goto :goto_5

    :cond_5
    move-object p0, v0

    :goto_5
    invoke-static {v2, v1, p0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    return-object v0
.end method

.method public static final navigationBarAction(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "back"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "all"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final setCapsuleViewBgColor(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "color"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->forceCapsuleViewBgColor:Ljava/lang/String;

    return-void
.end method

.method private final setupTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V
    .locals 1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->setColor(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getSelectedColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->setSelectedColor(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->setBackgroundColor(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getBorderStyle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->setBorderStyle(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    if-eqz v0, :cond_4

    iput-object v0, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    :cond_4
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->setPosition(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getCustom()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getCustom()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->setCustom(Ljava/lang/Boolean;)V

    :cond_6
    return-void
.end method

.method private final setupWindowConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    .locals 1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullDownRefresh()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnablePullDownRefresh(Ljava/lang/Boolean;)V

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullUpRefresh()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnablePullUpRefresh(Ljava/lang/Boolean;)V

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableTransparentStatusBar()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnableTransparentStatusBar(Ljava/lang/Boolean;)V

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableNavigationBarLoading()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnableNavigationBarLoading(Ljava/lang/Boolean;)V

    :cond_3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarTitleText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationBarTitleText(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationStyle(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationBarBackgroundColor(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarTextStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationBarTextStyle(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarIconStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationBarIconStyle(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarHomeAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setNavigationBarHomeAction(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderStyle(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomTextEnable()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderCustomTextEnable(Ljava/lang/Boolean;)V

    :cond_b
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomLoading()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderCustomLoading(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomLoadingGif()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderCustomLoadingGif(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomSuccess()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderCustomSuccess(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomSuccessGif()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderCustomSuccessGif(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderTranslationContent()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderTranslationContent(Ljava/lang/Boolean;)V

    :cond_10
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderAccentColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderAccentColor(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderBackgroundColor(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderDelayed()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshHeaderDelayed(Ljava/lang/Integer;)V

    :cond_13
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshFooterAccentColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshFooterAccentColor(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshFooterBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshFooterBackgroundColor(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshFooterDelayed()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setRefreshFooterDelayed(Ljava/lang/Integer;)V

    :cond_16
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getContentBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setContentBackgroundColor(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getHandleWebviewPreload()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setHandleWebviewPreload(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePageLoading()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnablePageLoading(Ljava/lang/Boolean;)V

    :cond_19
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableTabBarAdjustPan()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setEnableTabBarAdjustPan(Ljava/lang/Boolean;)V

    :cond_1a
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getDarkModeNavigationBarBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setDarkModeNavigationBarBackgroundColor(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getDarkModeNavigationBarTextStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setDarkModeNavigationBarTextStyle(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getDarkModeNavigationBarIconStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setDarkModeNavigationBarIconStyle(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getDarkModeContentBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setDarkModeContentBackgroundColor(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getLimitTextZoom()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1f

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->setLimitTextZoom(Ljava/lang/Boolean;)V

    :cond_1f
    return-object p1
.end method
