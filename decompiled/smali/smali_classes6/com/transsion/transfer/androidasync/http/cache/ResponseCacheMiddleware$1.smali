.class Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware;

.field final synthetic val$data:Lcom/transsion/transfer/androidasync/http/g$a;

.field final synthetic val$socket:Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware;Lcom/transsion/transfer/androidasync/http/g$a;Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$1;->val$data:Lcom/transsion/transfer/androidasync/http/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$1;->val$data:Lcom/transsion/transfer/androidasync/http/g$a;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/g$a;->c:Lbv/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lbv/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    throw v1
.end method
