.class public final Lcom/transsion/ad/bidding/base/AbsAdBidding$a;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;

# interfaces
.implements Lkotlinx/coroutines/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/base/AbsAdBidding;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/bidding/base/AbsAdBidding;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/j0$a;Lcom/transsion/ad/bidding/base/AbsAdBidding;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$a;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public o(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$a;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "biddingScope coroutine failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
