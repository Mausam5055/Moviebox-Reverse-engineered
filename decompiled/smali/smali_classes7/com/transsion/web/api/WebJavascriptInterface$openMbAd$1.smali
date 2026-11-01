.class public final Lcom/transsion/web/api/WebJavascriptInterface$openMbAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljy/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/web/api/WebJavascriptInterface;->openMbAd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/web/api/WebJavascriptInterface$openMbAd$1",
        "Ljy/a;",
        "",
        "stateEnum",
        "message",
        "",
        "onAdStateCallback",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Web_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callbackId:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/web/api/WebJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/transsion/web/api/WebJavascriptInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/web/api/WebJavascriptInterface$openMbAd$1;->this$0:Lcom/transsion/web/api/WebJavascriptInterface;

    iput-object p2, p0, Lcom/transsion/web/api/WebJavascriptInterface$openMbAd$1;->$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "stateEnum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/transsion/web/api/WebJavascriptInterface$openMbAd$1;->this$0:Lcom/transsion/web/api/WebJavascriptInterface;

    invoke-static {p1}, Lcom/transsion/web/api/WebJavascriptInterface;->access$getCustomWebView$p(Lcom/transsion/web/api/WebJavascriptInterface;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/web/api/WebJavascriptInterface$openMbAd$1;->$callbackId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
