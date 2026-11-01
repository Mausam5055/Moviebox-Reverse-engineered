.class Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/lzyzsd/jsbridge/BridgeHelper;->flushMessageQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/lzyzsd/jsbridge/BridgeHelper;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/github/lzyzsd/jsbridge/Message;->toArrayList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/lzyzsd/jsbridge/Message;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/Message;->getResponseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeHelper;

    invoke-static {v3}, Lcom/github/lzyzsd/jsbridge/BridgeHelper;->c(Lcom/github/lzyzsd/jsbridge/BridgeHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/Message;->getResponseData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;->onCallBack(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeHelper;

    invoke-static {v1}, Lcom/github/lzyzsd/jsbridge/BridgeHelper;->c(Lcom/github/lzyzsd/jsbridge/BridgeHelper;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/Message;->getCallbackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;

    invoke-direct {v3, p0, v2}, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$2;

    invoke-direct {v3, p0}, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$2;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;)V

    :goto_1
    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/Message;->getHandlerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeHelper;

    invoke-static {v2}, Lcom/github/lzyzsd/jsbridge/BridgeHelper;->b(Lcom/github/lzyzsd/jsbridge/BridgeHelper;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/Message;->getHandlerName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeHelper;

    invoke-static {v2}, Lcom/github/lzyzsd/jsbridge/BridgeHelper;->a(Lcom/github/lzyzsd/jsbridge/BridgeHelper;)Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/github/lzyzsd/jsbridge/Message;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Lcom/github/lzyzsd/jsbridge/BridgeHandler;->handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void

    :catch_0
    move-exception p1

    const-string v0, "BridgeHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
