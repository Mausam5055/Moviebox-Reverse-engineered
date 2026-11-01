.class public final Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$myReceiver$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$myReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "lib_ad_gpRelease"
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
.field final synthetic a:Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$myReceiver$1;->a:Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini$myReceiver$1;->a:Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    invoke-static {v0, p1, p2}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->a(Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
