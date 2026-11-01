.class public abstract Lcom/cloud/config/AbsConfigStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;,
        Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;,
        Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private storageKV:Lcom/tencent/mmkv/MMKV;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/config/AbsConfigStore;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/config/AbsConfigStore;->g(Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/cloud/config/AbsConfigStore;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cloud/config/AbsConfigStore;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getStorageKV(Lcom/cloud/config/AbsConfigStore;)Lcom/tencent/mmkv/MMKV;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/config/AbsConfigStore;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onLoadFromService(Lcom/cloud/config/AbsConfigStore;Lcom/google/gson/JsonObject;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cloud/config/AbsConfigStore;->f(Lcom/google/gson/JsonObject;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$prepareRequestConfigData(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/bean/ShuntInfo;Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/cloud/config/AbsConfigStore;->h(Ljava/lang/String;Lcom/cloud/config/bean/ShuntInfo;Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/config/AbsConfigStore;->i(Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/config/s;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore;->j(Lcom/cloud/config/s;)V

    return-void
.end method

.method private final d(Lcom/cloud/config/bean/ShuntInfo;Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/config/bean/ShuntInfo;->getConditionParamKeys()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    invoke-virtual {v3, v2}, Lcom/cloud/config/utils/CommonUtils;->getShuntValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v1, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lcom/cloud/config/utils/CommonUtils;->getShuntValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cloudConfigKey"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cloud/config/bean/ShuntInfo;->getShuntType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "shuntType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/config/bean/ShuntInfo;->getConditionParamKeys()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Gson().toJson(info.conditionParamKeys)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "conditionParamKeys"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method private final e()Lcom/tencent/mmkv/MMKV;
    .locals 2

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore;->storageKV:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/config"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/config/AbsConfigStore;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/mmkv/MMKV;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->o()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/config/AbsConfigStore;->storageKV:Lcom/tencent/mmkv/MMKV;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private final f(Lcom/google/gson/JsonObject;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore;->getContentArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/cloud/config/AbsConfigStore;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/cloud/config/AbsConfigStore;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/cloud/config/AbsConfigStore;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/cloud/config/AbsConfigStore;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    if-nez p4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p4}, Lcom/cloud/config/utils/ConstantsKt;->toStoreConfigUrlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p1, v2, p5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p4, Lcom/cloud/config/c;

    invoke-direct {p4, p2, p3}, Lcom/cloud/config/c;-><init>(Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private static final g(Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/cloud/config/r;->onLoadDataSuccess()V

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/cloud/config/s;->onLoadDataSuccess()V

    :goto_1
    return-void
.end method

.method private final h(Ljava/lang/String;Lcom/cloud/config/bean/ShuntInfo;Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v2, p3

    move-object/from16 v9, p6

    const-string v10, "config"

    :try_start_0
    invoke-direct/range {p4 .. p4}, Lcom/cloud/config/AbsConfigStore;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/cloud/config/utils/ConstantsKt;->toStoreConfigUrlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v4

    const-string v5, "storeConfigUrl --> "

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v10, v5}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v3

    const-string v4, "matchCacheUrl --> "

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cloud/config/a;

    move-object/from16 v7, p5

    invoke-direct {v1, v7, v9}, Lcom/cloud/config/a;-><init>(Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v11, p0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v11, p0

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v7, p5

    const-string v1, "shuntopen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    move-object v11, p0

    move-object/from16 v1, p2

    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/cloud/config/AbsConfigStore;->d(Lcom/cloud/config/bean/ShuntInfo;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->io()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v12, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore;->getApiHeaders()Ljava/util/Map;

    move-result-object v3

    sget-object v0, Lcom/cloud/config/utils/Constants;->Companion:Lcom/cloud/config/utils/Constants$Companion;

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/config/AbsConfigStore;->setDebugMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/config/utils/Constants$Companion;->getShuntOpenUrl(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;-><init>(Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    invoke-interface {v8, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v11, p0

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->io()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    new-instance v13, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;-><init>(Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getStackTraceString(e)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v0}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cloud/config/b;

    invoke-direct {v1, v9}, Lcom/cloud/config/b;-><init>(Lcom/cloud/config/s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method private static final i(Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/cloud/config/r;->onLoadDataSuccess()V

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/cloud/config/s;->onLoadDataSuccess()V

    :goto_1
    return-void
.end method

.method private static final j(Lcom/cloud/config/s;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3eb

    const-string v1, "try catch exception"

    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic loadForService$default(Lcom/cloud/config/AbsConfigStore;Lcom/cloud/config/r;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/config/AbsConfigStore;->loadForService(Lcom/cloud/config/r;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadForService"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic loadForService$default(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/s;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/config/AbsConfigStore;->loadForService(Ljava/lang/String;Lcom/cloud/config/s;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadForService"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getApiHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getContentArray()Ljava/util/List;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public final loadForService()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, v1, v0}, Lcom/cloud/config/AbsConfigStore;->loadForService$default(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/s;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadForService(Lcom/cloud/config/r;)V
    .locals 9
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/core/utils/f;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    iget-object v1, p0, Lcom/cloud/config/AbsConfigStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/config/utils/CommonUtils;->setContext(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cloud/config/utils/CommonUtils;->getGaid()Ljava/lang/String;

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->io()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;-><init>(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final loadForService(Ljava/lang/String;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/config/AbsConfigStore;->loadForService$default(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/s;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadForService(Ljava/lang/String;Lcom/cloud/config/s;)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/core/utils/f;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    iget-object v1, p0, Lcom/cloud/config/AbsConfigStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/config/utils/CommonUtils;->setContext(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cloud/config/utils/CommonUtils;->getGaid()Ljava/lang/String;

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->io()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;-><init>(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract setDebugMode()Z
.end method

.method public final setMMKV(Lcom/tencent/mmkv/MMKV;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/config/AbsConfigStore;->storageKV:Lcom/tencent/mmkv/MMKV;

    return-void
.end method
