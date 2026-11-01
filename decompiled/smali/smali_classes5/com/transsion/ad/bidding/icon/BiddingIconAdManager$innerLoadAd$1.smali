.class final Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->P(Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x1d3
    }
    m = "innerLoadAd"
.end annotation


# instance fields
.field I$0:I

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
            "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v0, p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->C(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
