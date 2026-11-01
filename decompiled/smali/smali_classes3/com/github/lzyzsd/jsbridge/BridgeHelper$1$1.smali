.class Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;->onCallBack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;->this$1:Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;

    iput-object p2, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/github/lzyzsd/jsbridge/Message;

    invoke-direct {v0}, Lcom/github/lzyzsd/jsbridge/Message;-><init>()V

    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;->this$1:Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;

    iget-object p1, p1, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeHelper;

    invoke-static {p1, v0}, Lcom/github/lzyzsd/jsbridge/BridgeHelper;->d(Lcom/github/lzyzsd/jsbridge/BridgeHelper;Lcom/github/lzyzsd/jsbridge/Message;)V

    return-void
.end method
