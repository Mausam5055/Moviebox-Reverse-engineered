.class public final synthetic Lcom/transsion/web/api/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/web/api/WebJavascriptInterface;

.field public final synthetic b:Lcom/transsion/web/bean/JsCallbackData;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/web/api/WebJavascriptInterface;Lcom/transsion/web/bean/JsCallbackData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/api/g;->a:Lcom/transsion/web/api/WebJavascriptInterface;

    iput-object p2, p0, Lcom/transsion/web/api/g;->b:Lcom/transsion/web/bean/JsCallbackData;

    iput-object p3, p0, Lcom/transsion/web/api/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/web/api/g;->a:Lcom/transsion/web/api/WebJavascriptInterface;

    iget-object v1, p0, Lcom/transsion/web/api/g;->b:Lcom/transsion/web/bean/JsCallbackData;

    iget-object v2, p0, Lcom/transsion/web/api/g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/web/api/WebJavascriptInterface;->i(Lcom/transsion/web/api/WebJavascriptInterface;Lcom/transsion/web/bean/JsCallbackData;Ljava/lang/String;)V

    return-void
.end method
