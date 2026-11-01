.class Lcom/android/volley/AsyncRequestQueue$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/a;

    move-result-object v0

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$1$a;

    invoke-direct {v1, p0}, Lcom/android/volley/AsyncRequestQueue$1$a;-><init>(Lcom/android/volley/AsyncRequestQueue$1;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/a;->b(Lcom/android/volley/a$b;)V

    return-void
.end method
