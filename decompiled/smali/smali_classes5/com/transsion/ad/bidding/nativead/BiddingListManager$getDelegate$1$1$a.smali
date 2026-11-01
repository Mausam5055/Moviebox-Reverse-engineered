.class public final Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->b(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->V()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->l(Lcom/transsion/ad/bidding/nativead/BiddingListManager;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->j(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingListManager$getDelegate$1$1$a;->d:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->h(Lcom/transsion/ad/bidding/nativead/BiddingListManager;)V

    :cond_0
    return-void
.end method
