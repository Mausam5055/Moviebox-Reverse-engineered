.class public final synthetic Lcom/transsion/web/api/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/web/api/WebJavascriptInterface;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/web/api/WebJavascriptInterface;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/api/e;->a:Lcom/transsion/web/api/WebJavascriptInterface;

    iput-object p2, p0, Lcom/transsion/web/api/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/web/api/e;->a:Lcom/transsion/web/api/WebJavascriptInterface;

    iget-object v1, p0, Lcom/transsion/web/api/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/web/api/WebJavascriptInterface;->a(Lcom/transsion/web/api/WebJavascriptInterface;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
