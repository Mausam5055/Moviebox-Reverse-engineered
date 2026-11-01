.class public final Lcom/transsion/ad/web/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/ad/web/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/web/e;->openMbAd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/web/e;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/ad/web/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/web/e$b;->a:Lcom/transsion/ad/web/e;

    iput-object p2, p0, Lcom/transsion/ad/web/e$b;->b:Ljava/lang/String;

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

    iget-object p1, p0, Lcom/transsion/ad/web/e$b;->a:Lcom/transsion/ad/web/e;

    invoke-static {p1}, Lcom/transsion/ad/web/e;->a(Lcom/transsion/ad/web/e;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/ad/web/e$b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
