.class Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;
.super Lcom/android/volley/RequestTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseErrorTask"
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
.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;

.field volleyError:Lcom/android/volley/VolleyError;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->volleyError:Lcom/android/volley/VolleyError;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->volleyError:Lcom/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    const/4 v0, 0x0

    throw v0
.end method
