.class Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;
.super Lcom/android/volley/RequestTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field networkResponse:Lcom/android/volley/g;

.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->networkResponse:Lcom/android/volley/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->networkResponse:Lcom/android/volley/g;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/g;)Lcom/android/volley/i;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    const-string v2, "network-parse-complete"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/volley/i;->b:Lcom/android/volley/c$a;

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->k(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v4, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-direct {v3, v2, v4, v0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/i;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->m(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v4, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-direct {v3, v2, v4, v0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/i;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/volley/AsyncRequestQueue;->o(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/i;Z)V

    :goto_0
    return-void
.end method
