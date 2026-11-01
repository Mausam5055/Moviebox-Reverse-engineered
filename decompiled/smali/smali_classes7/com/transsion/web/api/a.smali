.class public final synthetic Lcom/transsion/web/api/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/web/api/WebJavascriptInterface;

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/web/api/WebJavascriptInterface;FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/api/a;->a:Lcom/transsion/web/api/WebJavascriptInterface;

    iput p2, p0, Lcom/transsion/web/api/a;->b:F

    iput-object p3, p0, Lcom/transsion/web/api/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/web/api/a;->a:Lcom/transsion/web/api/WebJavascriptInterface;

    iget v1, p0, Lcom/transsion/web/api/a;->b:F

    iget-object v2, p0, Lcom/transsion/web/api/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/web/api/WebJavascriptInterface;->b(Lcom/transsion/web/api/WebJavascriptInterface;FLjava/lang/String;)V

    return-void
.end method
