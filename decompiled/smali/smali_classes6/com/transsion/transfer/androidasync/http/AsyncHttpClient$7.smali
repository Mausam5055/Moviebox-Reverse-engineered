.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->A(Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field final synthetic val$callback:Ldv/b;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$future:Lcom/transsion/transfer/androidasync/future/w;

.field final synthetic val$response:Lcom/transsion/transfer/androidasync/http/k;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$callback:Ldv/b;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$future:Lcom/transsion/transfer/androidasync/future/w;

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$response:Lcom/transsion/transfer/androidasync/http/k;

    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$e:Ljava/lang/Exception;

    iput-object p6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->this$0:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$callback:Ldv/b;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$future:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$response:Lcom/transsion/transfer/androidasync/http/k;

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$e:Ljava/lang/Exception;

    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;->val$result:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->j(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
