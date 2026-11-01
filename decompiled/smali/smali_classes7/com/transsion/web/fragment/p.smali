.class public final synthetic Lcom/transsion/web/fragment/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/fragment/p;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iput-object p2, p0, Lcom/transsion/web/fragment/p;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/web/fragment/p;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iget-object v1, p0, Lcom/transsion/web/fragment/p;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1;->v(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/String;)V

    return-void
.end method
