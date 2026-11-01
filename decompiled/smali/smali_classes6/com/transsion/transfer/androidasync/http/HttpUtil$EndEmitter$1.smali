.class Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$ret:Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter$1;->val$ret:Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter$1;->val$ret:Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter$1;->val$e:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->O(Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V

    return-void
.end method
