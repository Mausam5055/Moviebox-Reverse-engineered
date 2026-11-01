.class public final Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;


# direct methods
.method constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->c(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->d(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    return-void
.end method

.method private static final c(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getConfigResultListener()Lcom/cloud/config/s;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ec

    const-string v1, "request failure"

    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final d(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getConfigResultListener()Lcom/cloud/config/s;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3eb

    const-string v1, "try catch exception"

    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {p1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object p1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getStackTraceString(e)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-virtual {p1, v0, p2}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    new-instance v0, Lcom/cloud/config/e;

    invoke-direct {v0, p2}, Lcom/cloud/config/e;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 11

    const-string v0, "config"

    const-string v1, "call"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/config/AbsConfigStore;->access$getStorageKV(Lcom/cloud/config/AbsConfigStore;)Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-static {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->access$getPackageName$p(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/cloud/config/utils/ConstantsKt;->toStoreConfigName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/config/AbsConfigStore;->access$getStorageKV(Lcom/cloud/config/AbsConfigStore;)Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-static {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->access$getPackageName$p(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/cloud/config/utils/ConstantsKt;->toStoreMd5Name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getContentMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v1

    const-string v2, "response --> "

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1$onResponse$1$responseResult$1;

    invoke-direct {v2}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1$onResponse$1$responseResult$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/config/bean/CloudConfigResponse;

    if-nez p2, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Lcom/cloud/config/bean/CloudConfigResponse;->getConditionInfo()Lcom/cloud/config/bean/ConditionInfo;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/cloud/config/bean/ConditionInfo;->getMatchCacheUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object v4

    invoke-virtual {p2}, Lcom/cloud/config/bean/CloudConfigResponse;->getConditionInfo()Lcom/cloud/config/bean/ConditionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/config/bean/ConditionInfo;->get_conditionParam()Lcom/cloud/config/bean/ConditionParam;

    move-result-object p2

    if-nez p2, :cond_6

    :goto_2
    move-object v6, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/cloud/config/bean/ConditionParam;->getShuntInfo()Lcom/cloud/config/bean/ShuntInfo;

    move-result-object v3

    goto :goto_2

    :goto_3
    invoke-static {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->access$getPackageName$p(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object v8

    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getConfigListener()Lcom/cloud/config/r;

    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getConfigResultListener()Lcom/cloud/config/s;

    move-result-object v10

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Lcom/cloud/config/AbsConfigStore;->access$prepareRequestConfigData(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/bean/ShuntInfo;Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {p2}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getStackTraceString(e)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    new-instance v0, Lcom/cloud/config/f;

    invoke-direct {v0, p2}, Lcom/cloud/config/f;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_4
    return-void
.end method
