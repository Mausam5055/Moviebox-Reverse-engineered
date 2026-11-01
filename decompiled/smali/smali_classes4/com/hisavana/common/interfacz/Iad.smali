.class public interface abstract Lcom/hisavana/common/interfacz/Iad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/interfacz/ICacheAd;


# virtual methods
.method public abstract addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V
.end method

.method public abstract getAdUnit()Ljava/lang/String;
.end method

.method public abstract getLoadStatus()I
.end method

.method public abstract getRequestTime()J
.end method

.method public abstract getTAdAllianceListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;
.end method

.method public abstract isSupportRtBidding()Z
.end method

.method public abstract loadAd()V
.end method

.method public abstract setAdUnit(Ljava/lang/String;)V
.end method

.method public abstract setLoadStatus(I)V
.end method

.method public abstract setOfflineAd(Z)V
.end method

.method public abstract setRequestRound(I)V
.end method

.method public abstract setRequestTime(J)V
.end method

.method public abstract setSupportFlag(I)V
.end method

.method public abstract setTrackingBundle(Landroid/os/Bundle;)V
.end method

.method public abstract stopLoader()V
.end method
