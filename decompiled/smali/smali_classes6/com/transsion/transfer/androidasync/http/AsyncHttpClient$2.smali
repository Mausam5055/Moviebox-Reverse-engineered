.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->s(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ldv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field final synthetic val$callback:Ldv/a;

.field final synthetic val$cancel:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

.field final synthetic val$data:Lcom/transsion/transfer/androidasync/http/g$g;

.field final synthetic val$request:Lcom/transsion/transfer/androidasync/http/j;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/g$g;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->val$data:Lcom/transsion/transfer/androidasync/http/g$g;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->val$cancel:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->val$request:Lcom/transsion/transfer/androidasync/http/j;

    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->val$callback:Ldv/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->val$data:Lcom/transsion/transfer/androidasync/http/g$g;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/g$a;->d:Lcom/transsion/transfer/androidasync/future/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->val$data:Lcom/transsion/transfer/androidasync/http/g$g;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->val$cancel:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->val$request:Lcom/transsion/transfer/androidasync/http/j;

    iget-object v6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;->val$callback:Ldv/a;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->k(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Ldv/a;)V

    return-void
.end method
