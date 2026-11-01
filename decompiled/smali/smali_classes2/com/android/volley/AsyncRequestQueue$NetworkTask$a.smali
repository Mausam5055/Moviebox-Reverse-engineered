.class Lcom/android/volley/AsyncRequestQueue$NetworkTask$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$NetworkTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$NetworkTask;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$a;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iput-wide p2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$a;->a:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$a;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->m(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$a;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$a;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v3, v3, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-direct {v2, v0, v3, p1}, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
