.class public final Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    iput-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->d(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->c(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V

    return-void
.end method

.method private static final c(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getConfigResultListener()Lcom/cloud/config/s;

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

.method private static final d(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getConfigResultListener()Lcom/cloud/config/s;

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

    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    new-instance v0, Lcom/cloud/config/j;

    invoke-direct {v0, p2}, Lcom/cloud/config/j;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 10

    const-string v0, ""

    const-string v1, "config"

    const-string v2, "call"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string p1, "content-md5"

    invoke-virtual {p2, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/config/AbsConfigStore;->access$getStorageKV(Lcom/cloud/config/AbsConfigStore;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object p2, v2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/cloud/config/utils/ConstantsKt;->toStoreMd5Name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    invoke-virtual {p2}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/config/AbsConfigStore;->access$getStorageKV(Lcom/cloud/config/AbsConfigStore;)Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    iget-object v3, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/cloud/config/utils/ConstantsKt;->toStoreConfigName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v0}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v3

    const-string v4, "contentMd5 --> "

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v0

    const-string v3, "storeMd5 --> "

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    if-nez v7, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_9

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2$onResponse$responseResult$1;

    invoke-direct {v0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2$onResponse$responseResult$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/config/bean/CloudConfigResponse;

    if-nez p1, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {p1}, Lcom/cloud/config/bean/CloudConfigResponse;->getConditionInfo()Lcom/cloud/config/bean/ConditionInfo;

    move-result-object p2

    if-nez p2, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/cloud/config/bean/ConditionInfo;->getMatchCacheUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {p2}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cloud/config/bean/CloudConfigResponse;->getConditionInfo()Lcom/cloud/config/bean/ConditionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/config/bean/ConditionInfo;->get_conditionParam()Lcom/cloud/config/bean/ConditionParam;

    move-result-object p1

    if-nez p1, :cond_8

    :goto_2
    move-object v5, v2

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/cloud/config/bean/ConditionParam;->getShuntInfo()Lcom/cloud/config/bean/ShuntInfo;

    move-result-object v2

    goto :goto_2

    :goto_3
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object v7

    invoke-virtual {p2}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getConfigListener()Lcom/cloud/config/r;

    invoke-virtual {p2}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getConfigResultListener()Lcom/cloud/config/s;

    move-result-object v9

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/cloud/config/AbsConfigStore;->access$prepareRequestConfigData(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/bean/ShuntInfo;Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_9
    :goto_4
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->io()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    invoke-virtual {v0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object v3

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    invoke-virtual {v0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getConfigListener()Lcom/cloud/config/r;

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    invoke-virtual {v0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;->getConfigResultListener()Lcom/cloud/config/s;

    move-result-object v6

    iget-object v8, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->c:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;-><init>(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p2, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {p2}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    new-instance v0, Lcom/cloud/config/i;

    invoke-direct {v0, p2}, Lcom/cloud/config/i;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_6
    return-void
.end method
