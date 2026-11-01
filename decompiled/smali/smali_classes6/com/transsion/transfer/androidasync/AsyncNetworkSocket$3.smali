.class Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$3;->this$0:Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$3;->this$0:Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->resume()V

    return-void
.end method
