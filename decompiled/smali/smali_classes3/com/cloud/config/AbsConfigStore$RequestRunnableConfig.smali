.class public final Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/config/AbsConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestRunnableConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0008\u0000\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0014R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0019\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u000b\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;",
        "Ljava/lang/Runnable;",
        "Lcom/cloud/config/AbsConfigStore;",
        "store",
        "",
        "packageName",
        "Lcom/cloud/config/r;",
        "configListener",
        "Lcom/cloud/config/s;",
        "configResultListener",
        "contentMd5",
        "requestUrl",
        "<init>",
        "(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "run",
        "()V",
        "Lcom/cloud/config/AbsConfigStore;",
        "getStore",
        "()Lcom/cloud/config/AbsConfigStore;",
        "Ljava/lang/String;",
        "Lcom/cloud/config/r;",
        "getConfigListener",
        "()Lcom/cloud/config/r;",
        "Lcom/cloud/config/s;",
        "getConfigResultListener",
        "()Lcom/cloud/config/s;",
        "getContentMd5",
        "()Ljava/lang/String;",
        "getRequestUrl",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final configListener:Lcom/cloud/config/r;

.field private final configResultListener:Lcom/cloud/config/s;

.field private final contentMd5:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final requestUrl:Ljava/lang/String;

.field private final store:Lcom/cloud/config/AbsConfigStore;


# direct methods
.method public constructor <init>(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p3, "store"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "requestUrl"

    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->store:Lcom/cloud/config/AbsConfigStore;

    iput-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->configResultListener:Lcom/cloud/config/s;

    iput-object p5, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->contentMd5:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, p4

    :goto_2
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, p5

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;-><init>(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->run$lambda-0(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    return-void
.end method

.method public static final synthetic access$getPackageName$p(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method private static final run$lambda-0(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->configResultListener:Lcom/cloud/config/s;

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
.method public final getConfigListener()Lcom/cloud/config/r;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConfigResultListener()Lcom/cloud/config/s;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->configResultListener:Lcom/cloud/config/s;

    return-object v0
.end method

.method public final getContentMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->contentMd5:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStore()Lcom/cloud/config/AbsConfigStore;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->store:Lcom/cloud/config/AbsConfigStore;

    return-object v0
.end method

.method public run()V
    .locals 6

    const-string v0, "config"

    :try_start_0
    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v1

    const-string v2, "requestUrl --> "

    iget-object v3, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->requestUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v1}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->requestUrl:Ljava/lang/String;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;

    invoke-direct {v4, p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/tmc/network/HttpRequestor;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v2}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getStackTraceString(e)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cloud/config/d;

    invoke-direct {v1, p0}, Lcom/cloud/config/d;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
