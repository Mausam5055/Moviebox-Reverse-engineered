.class public final Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;
.super Ljava/lang/Object;

# interfaces
.implements Lt6/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$Companion;,
        Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\r\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\n\u0010\u000c\u001a\u00060\nj\u0002`\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ+\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\n\u0010\u000c\u001a\u00060\nj\u0002`\u000bH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJK\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00112\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00112\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0018R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;",
        "Lt6/a;",
        "Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;",
        "callback",
        "<init>",
        "(Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;)V",
        "",
        "url",
        "Lt6/c;",
        "updateManager",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "exception",
        "",
        "onCheckError",
        "(Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V",
        "onNoNetWork",
        "",
        "headers",
        "params",
        "checkVersion",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lt6/c;)V",
        "result",
        "onCheckSuccess",
        "(Ljava/lang/String;Lt6/c;)V",
        "noNetWork",
        "processCheckResult",
        "Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;",
        "Companion",
        "RequestRunnable",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$Companion;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: UpdateChecker"


# instance fields
.field private final callback:Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->Companion:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;-><init>(Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->callback:Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;-><init>(Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;)V

    return-void
.end method

.method public static final synthetic access$onCheckError(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->onCheckError(Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V

    return-void
.end method

.method private final onCheckError(Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V
    .locals 1

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->callback:Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x70

    invoke-interface {p2, p1, v0, p3}, Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;->onFailure(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final onNoNetWork(Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V
    .locals 1

    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->callback:Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x6b

    invoke-interface {p2, p1, v0, p3}, Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;->onFailure(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "TmcOfflineDownload: UpdateChecker"

    const-string p3, "LoadConfig RequestRunnable"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public checkVersion(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lt6/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lt6/c;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/cloud/h5update/utils/ExecutorUtils;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;-><init>(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lt6/c;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lgg/b;->a:Lgg/b;

    invoke-virtual {p2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public noNetWork(Ljava/lang/String;Lt6/c;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->onNoNetWork(Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V

    return-void
.end method

.method public onCheckError(Ljava/lang/String;Lt6/c;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\u67e5\u8be2\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->onCheckError(Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V

    return-void
.end method

.method public onCheckSuccess(Ljava/lang/String;Lt6/c;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->callback:Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;->onSuccess(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->processCheckResult(Ljava/lang/String;Lt6/c;)V

    :cond_1
    return-void
.end method

.method public processCheckResult(Ljava/lang/String;Lt6/c;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    invoke-interface {p2, p1}, Lt6/c;->a(Ljava/lang/String;)Lcom/cloud/h5update/bean/UpdateEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/h5update/utils/l;->p(Lcom/cloud/h5update/bean/UpdateEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
