.class public final synthetic Lcom/hisavana/mintegral/bidding/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/hisavana/mintegral/bidding/MintegralBidding$2;

.field public final synthetic b:Lcom/hisavana/common/bean/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/a;->a:Lcom/hisavana/mintegral/bidding/MintegralBidding$2;

    iput-object p2, p0, Lcom/hisavana/mintegral/bidding/a;->b:Lcom/hisavana/common/bean/Network;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/a;->a:Lcom/hisavana/mintegral/bidding/MintegralBidding$2;

    iget-object v1, p0, Lcom/hisavana/mintegral/bidding/a;->b:Lcom/hisavana/common/bean/Network;

    invoke-static {v0, v1}, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method
