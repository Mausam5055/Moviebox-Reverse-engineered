.class public Lcom/github/lzyzsd/jsbridge/Message;
.super Ljava/lang/Object;


# instance fields
.field public callbackId:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public handlerName:Ljava/lang/String;

.field public responseData:Ljava/lang/String;

.field public responseId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toArrayList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/lzyzsd/jsbridge/Message;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/github/lzyzsd/jsbridge/Message$1;

    invoke-direct {v1}, Lcom/github/lzyzsd/jsbridge/Message$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->handlerName:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseData:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->data:Ljava/lang/String;

    return-void
.end method

.method public setHandlerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->handlerName:Ljava/lang/String;

    return-void
.end method

.method public setResponseData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseData:Ljava/lang/String;

    return-void
.end method

.method public setResponseId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseId:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
