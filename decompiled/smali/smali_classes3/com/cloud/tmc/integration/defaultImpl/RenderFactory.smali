.class public final Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/render/IRenderFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002JX\u0010\u0011\u001a\u00020\u00122\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016Jp\u0010\u001c\u001a\u00020\u00122\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;",
        "Lcom/cloud/tmc/render/IRenderFactory;",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "createRender",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "activity",
        "Landroid/app/Activity;",
        "engineProxy",
        "Lcom/cloud/tmc/kernel/engine/IEngine;",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "createParams",
        "Lcom/cloud/tmc/kernel/model/CreateParams;",
        "getRender",
        "",
        "pageId",
        "context",
        "",
        "data",
        "Landroid/os/Bundle;",
        "isFirstLaunch",
        "",
        "listener",
        "Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;",
        "initRenderEnv",
        "mRender",
        "createRenderEndTime",
        "",
        "loadRenderFrameworkStartTime",
        "loadRenderFrameworkEndTime",
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


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RenderFactory"

    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    invoke-static/range {p0 .. p12}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->getRender$lambda$4(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$createRender(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->createRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRenderEnv(Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->initRenderEnv(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    return-void
.end method

.method private final createRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 9

    if-eqz p1, :cond_0

    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    const-class v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->getRender(Landroid/app/Activity;Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/tmc/render/SystemRender;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    return-object v0
.end method

.method private static final getRender$lambda$4(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p7

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v4, p11

    const-string v5, "this$0"

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$pageId"

    move-object/from16 v7, p5

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$context"

    move-object/from16 v8, p6

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$mRender"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$listener"

    move-object/from16 v9, p8

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$createRenderEndTime"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$loadRenderFrameworkStartTime"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$loadRenderFrameworkEndTime"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$data"

    move-object/from16 v15, p12

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    const/4 v10, 0x0

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_0

    :cond_0
    move-object v5, v10

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v10

    :cond_1
    if-nez v10, :cond_2

    const-string v0, "InnerWarmup"

    const-string v1, "app\u5df2\u6467\u6bc1\uff0c\u4e0d\u518d\u7ee7\u7eed\u6267\u884cRender"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/cloud/tmc/kernel/render/IRender;

    iget-wide v11, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v13, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v4, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-wide/from16 v16, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    move-object/from16 v8, p8

    move-wide v9, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    move-object/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->initRenderEnv(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V

    return-void
.end method

.method private final initRenderEnv(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;JJJLandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move-object/from16 v11, p15

    const-class v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    instance-of v14, v1, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v14, :cond_0

    move-object/from16 v16, v1

    check-cast v16, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "render fromWarmup : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v15, v9, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    instance-of v7, v3, Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    if-eqz v7, :cond_2

    check-cast v3, Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    invoke-interface {v4, v3}, Lcom/cloud/tmc/kernel/render/IRender;->registerPageEventCallback(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V

    :cond_2
    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v4, v3}, Lcom/cloud/tmc/kernel/render/IRender;->setMiniAppId(Ljava/lang/String;)V

    invoke-interface {v4, v2}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupRenderId(Ljava/lang/String;)V

    invoke-interface {v4, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupEngine(Lcom/cloud/tmc/kernel/engine/IEngine;)V

    invoke-interface {v4, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupCreateParams(Lcom/cloud/tmc/kernel/model/CreateParams;)V

    goto :goto_3

    :cond_4
    invoke-interface {v4, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V

    invoke-interface {v4, v2}, Lcom/cloud/tmc/kernel/render/IRender;->init(Ljava/lang/String;)V

    :goto_3
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    if-eqz v14, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v14, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v0

    invoke-interface {v4, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setMiniAppType(I)V

    :cond_8
    const-class v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->registerRender(Lcom/cloud/tmc/kernel/render/IRender;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v7, v5, v2

    if-eqz v7, :cond_9

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_7

    :cond_9
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_7
    if-eqz v11, :cond_a

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_a
    if-eqz v1, :cond_b

    const-class v5, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1, v5}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/structure/App;

    :cond_b
    instance-of v5, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v5, :cond_c

    move-object v5, v1

    check-cast v5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_8
    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_d

    move-object v7, v1

    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_e

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :goto_a
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_f

    move-object v7, v1

    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_10

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    :cond_10
    const/4 v7, 0x0

    :goto_c
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    invoke-interface {v6, v7, v9, v10, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v6, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;

    invoke-direct {v6, v0}, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;-><init>(Landroid/os/Bundle;)V

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v0

    goto :goto_d

    :cond_11
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v6, v0}, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    move-wide/from16 v6, p11

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1e

    move-object/from16 p2, v5

    move-wide/from16 v4, p13

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v11, :cond_12

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v11, :cond_13

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_13
    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_14

    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_e

    :cond_14
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_15

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_15
    const/4 v4, 0x0

    :goto_f
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_16

    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_10

    :cond_16
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_17

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_17
    const/4 v4, 0x0

    :goto_11
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_18

    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_12

    :cond_18
    const/4 v4, 0x0

    :goto_12
    if-eqz v4, :cond_19

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_19
    const/4 v4, 0x0

    :goto_13
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {v3, v4, v8, v5, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v12}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v14, :cond_1a

    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_14

    :cond_1a
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_1b
    const/4 v1, 0x0

    :goto_15
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {v3, v1, v9, v4, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v0

    goto :goto_16

    :cond_1c
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v0, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;

    invoke-direct {v0, v2}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v15

    goto :goto_17

    :cond_1d
    const/4 v15, 0x0

    :goto_17
    invoke-virtual {v0, v15}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    :cond_1e
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;->createSuccess(Lcom/cloud/tmc/kernel/render/IRender;)V

    return-void
.end method


# virtual methods
.method public getRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;ZLcom/cloud/tmc/render/IRenderFactory$IRenderListener;)V
    .locals 18

    move-object/from16 v7, p1

    move-object/from16 v6, p3

    const-string v0, "pageId"

    move-object/from16 v9, p5

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v11, p9

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    instance-of v1, v6, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_0

    move-object v3, v6

    check-cast v3, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    const-class v3, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    if-eqz v0, :cond_11

    if-eqz v1, :cond_2

    move-object v0, v6

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ExtendModel;->getH5Url()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4

    move-object v4, v6

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    if-eqz v7, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v5, "h5Path"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string v2, "h5PathCopy"

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v2, "query"

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "queryCopy"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_6
    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->getOffScreenRender(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_9
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_b

    if-eqz v7, :cond_a

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    invoke-interface {v0, v7}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->getWebview(Landroid/app/Activity;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_b
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_e

    new-instance v5, Lcom/cloud/tmc/render/SystemRender;

    if-eqz v1, :cond_c

    move-object v2, v6

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_d

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v0

    :goto_9
    move/from16 v16, v0

    goto :goto_a

    :cond_d
    sget-object v0, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_9

    :goto_a
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V

    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_16

    :cond_e
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v1, :cond_f

    move-object v2, v6

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_b

    :cond_f
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_10

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v1

    goto :goto_c

    :cond_10
    sget-object v1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_c
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setMiniAppType(I)V

    goto/16 :goto_16

    :cond_11
    if-eqz v1, :cond_12

    move-object v0, v6

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_d

    :cond_12
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_14

    goto/16 :goto_16

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    if-eqz v1, :cond_15

    move-object v0, v6

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_f

    :cond_15
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    if-eqz v1, :cond_17

    move-object v1, v6

    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_11

    :cond_17
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_18

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_12

    :cond_18
    const/4 v1, 0x0

    :goto_12
    if-eqz v0, :cond_19

    const-string v4, "pageCopy"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_19
    const/4 v0, 0x0

    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    if-eqz v0, :cond_1a

    const-string v4, "http"

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v4, v5, v2, v9}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    invoke-static {v1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->getOffScreenRender(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_14

    :cond_1a
    const/4 v9, 0x0

    :cond_1b
    :goto_14
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_1d

    if-eqz v7, :cond_1c

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    invoke-interface {v0, v7}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->getWebview(Landroid/app/Activity;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v2

    goto :goto_15

    :cond_1c
    move-object v2, v9

    :goto_15
    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_1d
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_1e

    new-instance v9, Lcom/cloud/tmc/render/SystemRender;

    sget-object v0, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V

    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_16

    :cond_1e
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    sget-object v1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setMiniAppType(I)V

    :cond_1f
    :goto_16
    instance-of v0, v6, Lcom/cloud/tmc/integration/structure/node/PageNode;

    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_20

    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    new-instance v8, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;

    move-object v0, v8

    move-object v1, v12

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v14, v8

    move-object/from16 v8, p4

    move-object v15, v9

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p9

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory$getRender$3;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/kernel/engine/IEngine;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Landroid/os/Bundle;)V

    const-class v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p8

    invoke-interface {v15, v14, v1, v0}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->registerListener(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;ZLjava/lang/String;)V

    goto :goto_17

    :cond_20
    const-wide/16 v0, 0x0

    iput-wide v0, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v16, Lcom/cloud/tmc/integration/defaultImpl/d;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p9

    move-object v10, v12

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/cloud/tmc/integration/defaultImpl/d;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    invoke-static/range {v16 .. v16}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    :goto_17
    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method
