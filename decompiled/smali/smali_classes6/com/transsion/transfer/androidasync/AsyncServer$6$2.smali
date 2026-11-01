.class Lcom/transsion/transfer/androidasync/AsyncServer$6$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/transfer/androidasync/AsyncServer$6;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer$6;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6$2;->this$1:Lcom/transsion/transfer/androidasync/AsyncServer$6;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6$2;->this$1:Lcom/transsion/transfer/androidasync/AsyncServer$6;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->val$ret:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6$2;->val$e:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/future/w;->H(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
