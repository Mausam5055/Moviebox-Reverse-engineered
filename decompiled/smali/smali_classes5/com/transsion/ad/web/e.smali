.class public Lcom/transsion/ad/web/e;
.super Lcom/github/lzyzsd/jsbridge/BridgeWebView$BaseJavascriptInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/web/e$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/ad/web/e$a;


# instance fields
.field private final a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

.field private b:Lcom/transsion/ad/web/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/web/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/web/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/web/e;->c:Lcom/transsion/ad/web/e$a;

    return-void
.end method

.method public constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 1

    const-string v0, "customWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getCallbacks()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView$BaseJavascriptInterface;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/transsion/ad/web/e;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/web/e;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/web/e;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/transsion/ad/web/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/web/e;->b:Lcom/transsion/ad/web/d;

    return-void
.end method

.method public onAdClick()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/transsion/ad/web/e;->b:Lcom/transsion/ad/web/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/ad/web/d;->h()V

    :cond_0
    return-void
.end method

.method public onAdError()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/transsion/ad/web/e;->b:Lcom/transsion/ad/web/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/ad/web/d;->n()V

    :cond_0
    return-void
.end method

.method public onAdShown(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/ad/web/e;->b:Lcom/transsion/ad/web/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/ad/web/d;->f()V

    :cond_0
    return-void
.end method

.method public openMbAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callbackId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/ad/web/c;->a:Lcom/transsion/ad/web/c;

    new-instance v1, Lcom/transsion/ad/web/e$b;

    invoke-direct {v1, p0, p2}, Lcom/transsion/ad/web/e$b;-><init>(Lcom/transsion/ad/web/e;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/ad/web/c;->a(Ljava/lang/String;Lcom/transsion/ad/web/b;)V

    return-void
.end method

.method public send(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "send"

    return-object p1
.end method
