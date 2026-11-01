.class public final synthetic Lcom/transsion/ad/bidding/base/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

.field public final synthetic b:Lcom/hisavana/common/bean/TAdErrorCode;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/e;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iput-object p2, p0, Lcom/transsion/ad/bidding/base/e;->b:Lcom/hisavana/common/bean/TAdErrorCode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/e;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/e;->b:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->G(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
