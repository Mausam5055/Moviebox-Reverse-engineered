.class public final Lcom/vungle/ads/z$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/z$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final deInit(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/ads/z;->access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/VungleInitializer;->deInit$vungle_ads_release()V

    return-void
.end method

.method public final getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/ads/z;->access$getVungleInternal$cp()Lcom/vungle/ads/internal/VungleInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokens(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getBiddingToken(Landroid/content/Context;Lcom/vungle/ads/i;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/ads/z;->access$getVungleInternal$cp()Lcom/vungle/ads/internal/VungleInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vungle/ads/internal/VungleInternal;->getAvailableBidTokensAsync(Landroid/content/Context;Lcom/vungle/ads/i;)V

    return-void
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/vungle/ads/z;->access$getVungleInternal$cp()Lcom/vungle/ads/internal/VungleInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/VungleInternal;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/m;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-static {}, Lcom/vungle/ads/z;->access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;

    move-result-object v0

    const-string v1, "appContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1, p3}, Lcom/vungle/ads/internal/VungleInitializer;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/m;)V

    return-void
.end method

.method public final isInitialized()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/vungle/ads/z;->access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public final isInline(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ConfigManager;->getPlacement(Ljava/lang/String;)Lcom/vungle/ads/internal/model/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/g;->isInline()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final setIntegrationName(Lcom/vungle/ads/VungleWrapperFramework;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "wrapperFramework"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapperFrameworkVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/ads/z;->access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vungle/ads/internal/VungleInitializer;->setIntegrationName(Lcom/vungle/ads/VungleWrapperFramework;Ljava/lang/String;)V

    return-void
.end method
