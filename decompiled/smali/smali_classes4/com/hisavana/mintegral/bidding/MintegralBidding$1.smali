.class Lcom/hisavana/mintegral/bidding/MintegralBidding$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/bidding/MintegralBidding;->queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/hisavana/common/bean/Network;

.field final synthetic c:Lcom/hisavana/mintegral/bidding/MintegralBidding;


# direct methods
.method constructor <init>(Lcom/hisavana/mintegral/bidding/MintegralBidding;JLcom/hisavana/common/bean/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    iput-wide p2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->a:J

    iput-object p4, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->b:Lcom/hisavana/common/bean/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeFailure(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init onError message\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mintegral_log"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitializeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->a:J

    sub-long/2addr p1, v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitializeSuccess\uff0cinit time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mintegral_log"

    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    iget-object p2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->b:Lcom/hisavana/common/bean/Network;

    invoke-virtual {p1, p2}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->startQueryPrice(Lcom/hisavana/common/bean/Network;)V

    return-void
.end method
