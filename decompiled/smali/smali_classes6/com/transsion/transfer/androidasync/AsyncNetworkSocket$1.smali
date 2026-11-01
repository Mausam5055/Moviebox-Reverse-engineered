.class Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

.field final synthetic val$list:Lcom/transsion/transfer/androidasync/ByteBufferList;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;->this$0:Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;->val$list:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;->this$0:Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;->val$list:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    return-void
.end method
