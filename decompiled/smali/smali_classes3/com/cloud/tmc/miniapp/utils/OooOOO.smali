.class public final Lcom/cloud/tmc/miniapp/utils/OooOOO;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

.field public static final OooO0O0:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO0O0;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO0O0:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    const/4 v13, 0x1

    const/4 v3, 0x2

    const-string v12, ""

    const-string v4, "$path"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$appModel"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$root"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$startParams"

    move-object/from16 v6, p3

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$sceneParams"

    move-object/from16 v7, p4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$context"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$loadCheckCallback"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v8, "%s_%s"

    new-array v9, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    aput-object v2, v9, v13

    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "format(format, *args)"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-interface {v3, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/cloud/tmc/integration/model/PrepareContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v16, 0xf0

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v3, v10

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v20, v10

    move-object/from16 v10, v18

    move-object/from16 v21, v11

    move-object/from16 v11, v19

    move-object/from16 v22, v12

    move/from16 v12, v16

    move-object/from16 v13, v17

    :try_start_1
    invoke-direct/range {v3 .. v13}, Lcom/cloud/tmc/integration/model/PrepareContext;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v20

    invoke-virtual {v3, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "context.getString(R.string.dialog_loading_tv)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    const/16 v12, 0x7c

    const/4 v13, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v13}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-class v1, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    new-instance v4, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    new-instance v5, Lcom/cloud/tmc/miniapp/utils/OooOOOO;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v6, v21

    :try_start_3
    invoke-direct {v5, v6, v15, v0}, Lcom/cloud/tmc/miniapp/utils/OooOOOO;-><init>(Ljava/lang/String;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;Ljava/lang/String;)V

    invoke-direct {v4, v3, v5}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    const/4 v0, 0x1

    invoke-interface {v1, v3, v4, v0, v2}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createSubpackagePrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;ILjava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v6, v21

    :goto_0
    :try_start_4
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v1, v22

    :try_start_5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v1, v22

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v1, v12

    :goto_1
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public static final OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;)V
    .locals 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v2, p4

    move-object/from16 v13, p5

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v14, ""

    const-string v5, "appId"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "openSubpackageRoot"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "startParams"

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "sceneParams"

    move-object/from16 v7, p3

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "preloadCallback"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v5, "%s_%s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v3

    aput-object v12, v8, v1

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "format(format, *args)"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "Preloading,please try later: MAU10009"

    move-object v1, v13

    check-cast v1, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO00o(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v14

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-interface {v5, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v5, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v5, v0}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v14

    goto/16 :goto_4

    :cond_1
    move-object v11, v8

    :goto_0
    const-string v5, "Preload failed: 100013"

    if-eqz v11, :cond_9

    :try_start_2
    invoke-virtual {v11}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {v2, v11}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v0, v13

    check-cast v0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;

    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO00o(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v11}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/model/SubPackageInfo;

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v5, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    invoke-virtual {v5, v2, v0, v3}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->checkTarUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v8

    :goto_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v13

    check-cast v0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO00o()V

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    if-nez v3, :cond_8

    const-string v0, "This root was not found: 100014"

    move-object v1, v13

    check-cast v1, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO00o(Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    new-instance v10, Lcom/cloud/tmc/integration/model/PrepareContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v16, 0xf0

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v10

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v6, v8

    move-object v7, v9

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object v0, v10

    move/from16 v10, v16

    move-object/from16 v16, v14

    move-object v14, v11

    move-object/from16 v11, v17

    :try_start_3
    invoke-direct/range {v1 .. v11}, Lcom/cloud/tmc/integration/model/PrepareContext;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v14}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    const-class v1, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    new-instance v3, Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO00o;

    invoke-direct {v3, v13, v15}, Lcom/cloud/tmc/miniapp/utils/OooOOO$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/prepare/callback/OooO0O0;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    const/4 v3, 0x3

    invoke-interface {v1, v0, v2, v3, v12}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createSubpackagePrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;ILjava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_9
    :goto_3
    move-object/from16 v16, v14

    move-object v0, v13

    check-cast v0, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;

    invoke-virtual {v0, v5}, Lcom/cloud/tmc/miniapp/bridge/MiniAppUpdateBridge$OooOO0;->OooO00o(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :goto_4
    :try_start_4
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v1, v16

    :try_start_5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v1, v16

    :goto_5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public static final OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->subpackageIsEnable()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Subpackage::"

    if-nez v0, :cond_0

    const-string p0, "\u68c0\u67e5\u662f\u5426\u4e3a\u5168\u91cf\u5305\uff1atrue\uff08\u4e91\u63a7\u5f00\u5173\u672a\u5f00\uff09"

    invoke-static {v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->checkZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u68c0\u67e5\u662f\u5426\u4e3a\u5168\u91cf\u5305\uff1atrue\uff08\u672c\u5730\u5df2\u6709\u6574\u5305\u8d44\u6e90\u4e0b\u8f7d\uff09\uff0cappVersion\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u68c0\u67e5\u662f\u5426\u4e3a\u5168\u91cf\u5305\uff1atrue\uff08appInfo\u4e3b\u5305\u5730\u5740\u4e3a\u7a7a\uff09\uff0cappVersion\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->subpackageIsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)Z
    .locals 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    const-string v1, "path"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appModel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "startParams"

    move-object v5, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sceneParams"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loadCheckCallback"

    move-object/from16 v8, p5

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p2, p1}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v9

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v9

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/SubPackageInfo;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getRoot()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {p0, v4, v9, v10, v11}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, p2, v10, v2}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->checkTarUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v10, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v11, Lcom/cloud/tmc/miniapp/utils/m;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, p2

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/m;-><init>(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)V

    invoke-static {v10, v11}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    :goto_0
    return v9

    :goto_1
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return v9
.end method


# virtual methods
.method public final OooO00o()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
