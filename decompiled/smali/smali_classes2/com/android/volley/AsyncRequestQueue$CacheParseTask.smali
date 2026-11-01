.class Lcom/android/volley/AsyncRequestQueue$CacheParseTask;
.super Lcom/android/volley/RequestTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheParseTask"
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
.field entry:Lcom/android/volley/c$a;

.field startTimeMillis:J

.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/c$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/c$a;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/c$a;

    iput-wide p4, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->startTimeMillis:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    const-string v1, "cache-hit"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    new-instance v8, Lcom/android/volley/g;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/c$a;

    iget-object v3, v1, Lcom/android/volley/c$a;->a:[B

    const-wide/16 v5, 0x0

    iget-object v7, v1, Lcom/android/volley/c$a;->h:Ljava/util/List;

    const/16 v2, 0xc8

    const/4 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/volley/g;-><init>(I[BZJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/g;)Lcom/android/volley/i;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    const-string v2, "cache-hit-parsed"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/c$a;

    iget-wide v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->startTimeMillis:J

    invoke-virtual {v1, v2, v3}, Lcom/android/volley/c$a;->c(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/c$a;

    invoke-virtual {v1, v3}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/c$a;)Lcom/android/volley/Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/i;->d:Z

    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->l(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0, v1}, Lcom/android/volley/m;->c(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_0

    throw v2

    :cond_0
    throw v2

    :cond_1
    throw v2
.end method
