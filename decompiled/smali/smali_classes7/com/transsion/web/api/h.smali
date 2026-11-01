.class public final synthetic Lcom/transsion/web/api/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/web/api/WebJavascriptInterface;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/web/api/WebJavascriptInterface;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/api/h;->a:Lcom/transsion/web/api/WebJavascriptInterface;

    iput-object p2, p0, Lcom/transsion/web/api/h;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/web/api/h;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/web/api/h;->a:Lcom/transsion/web/api/WebJavascriptInterface;

    iget-object v1, p0, Lcom/transsion/web/api/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/web/api/h;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/transsion/web/api/WebJavascriptInterface;->d(Lcom/transsion/web/api/WebJavascriptInterface;Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method
