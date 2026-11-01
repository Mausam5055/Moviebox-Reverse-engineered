.class public final Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
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


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateManager()Lt6/c;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->access$onCheckError(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V

    const-string p1, "TmcOfflineDownload: UpdateChecker"

    const-string v0, "LoadConfig onFailure"

    invoke-static {p1, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cloud/h5update/TH5Update$a;->p(Z)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateManager()Lt6/c;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->onCheckSuccess(Ljava/lang/String;Lt6/c;)V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateManager()Lt6/c;

    move-result-object p1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "\u67e5\u8be2\u6570\u636e\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, p1, v1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->access$onCheckError(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p2, "TmcOfflineDownload: UpdateChecker"

    const-string v0, "LoadConfig onResponse"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cloud/h5update/TH5Update$a;->p(Z)V

    :cond_2
    :goto_2
    return-void
.end method
