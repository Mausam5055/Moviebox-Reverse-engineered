.class Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

.field final synthetic val$response:Lcom/github/lzyzsd/jsbridge/JSResponse;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Lcom/github/lzyzsd/jsbridge/JSResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iput-object p2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->val$response:Lcom/github/lzyzsd/jsbridge/JSResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->val$response:Lcom/github/lzyzsd/jsbridge/JSResponse;

    invoke-static {v0, v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->a(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/Object;)V

    return-void
.end method
