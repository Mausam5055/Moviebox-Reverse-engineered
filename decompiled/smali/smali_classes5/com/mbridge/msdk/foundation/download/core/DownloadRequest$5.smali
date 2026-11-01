.class Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerSuccessEvent(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

.field final synthetic val$downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "responseHeaders"

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$500(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$500(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$500(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v2, v0, v1}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;->onDownloadComplete(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$100(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadRequest"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
