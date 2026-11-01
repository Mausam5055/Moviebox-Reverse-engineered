.class final Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->R(Ljava/lang/String;ZILdi/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.bidding.icon.BiddingIconAdManager"
    f = "BiddingIconAdManager.kt"
    l = {
        0x154,
        0x16e
    }
    m = "loadIconAd"
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->R(Ljava/lang/String;ZILdi/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
