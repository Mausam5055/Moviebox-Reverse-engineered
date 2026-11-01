.class Lcom/transsion/transfer/androidasync/future/HandlerFuture$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/transsion/transfer/androidasync/future/m;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/future/m;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/future/HandlerFuture$1$1;->val$e:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/future/HandlerFuture$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
