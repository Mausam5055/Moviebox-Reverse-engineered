.class public final Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;


# direct methods
.method constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->l(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->g(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->k(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    return-void
.end method

.method public static synthetic d(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->i(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static synthetic e(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->h(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    return-void
.end method

.method public static synthetic f(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->j(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Ljava/lang/String;)V

    return-void
.end method

.method private static final g(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

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

.method private static final h(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    const-string v1, "data is null"

    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final i(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dataJsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getStore()Lcom/cloud/config/AbsConfigStore;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigListener()Lcom/cloud/config/r;

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getRequestUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/cloud/config/AbsConfigStore;->access$onLoadFromService(Lcom/cloud/config/AbsConfigStore;Lcom/google/gson/JsonObject;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final j(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    invoke-interface {p0, v0, p1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final k(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ea

    const-string v1, "gateway failure"

    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final l(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

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

    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    new-instance v0, Lcom/cloud/config/l;

    invoke-direct {v0, p2}, Lcom/cloud/config/l;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9

    const-string v0, "message"

    const-string v1, "data"

    const-string v2, "code"

    const-string v3, "config"

    const-string v4, "call"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    sget-object v4, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v4}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v5

    const-string v6, "response --> "

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "responseStr"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {p2, v2, v7, v6, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {p2, v1, v7, v6, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string v5, "parseString(responseStr).asJsonObject"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "jsonObject.get(\"data\").toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "{}"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/cloud/config/m;

    invoke-direct {v0, p1}, Lcom/cloud/config/m;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string v0, "parseString(dataStr).asJsonObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->io()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cloud/config/n;

    invoke-direct {v1, p1, p2}, Lcom/cloud/config/n;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "code isn\'t 0"

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, p2

    :goto_0
    invoke-virtual {v4}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object p2

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/cloud/config/o;

    invoke-direct {v0, p1, v1}, Lcom/cloud/config/o;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/cloud/config/p;

    invoke-direct {v0, p1}, Lcom/cloud/config/p;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {p2}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStackTraceString(e)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3, p1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    new-instance v0, Lcom/cloud/config/q;

    invoke-direct {v0, p2}, Lcom/cloud/config/q;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
