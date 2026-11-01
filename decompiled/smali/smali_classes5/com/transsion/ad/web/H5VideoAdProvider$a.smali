.class public final Lcom/transsion/ad/web/H5VideoAdProvider$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/web/H5VideoAdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/transsion/ad/web/H5VideoAdProvider;->b()Lcom/transsion/ad/web/b;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/transsion/ad/web/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/ad/web/H5AdStateEnum;

    invoke-virtual {v1}, Lcom/transsion/ad/web/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/transsion/ad/web/b;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/transsion/ad/web/H5VideoAdProvider;->a:Lcom/transsion/ad/web/H5VideoAdProvider;

    invoke-static {p1}, Lcom/transsion/ad/web/H5VideoAdProvider;->a(Lcom/transsion/ad/web/H5VideoAdProvider;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/ad/web/H5VideoAdProvider;->d()Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-static {}, Lcom/transsion/ad/web/H5VideoAdProvider;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/ad/web/H5VideoAdProvider;->b()Lcom/transsion/ad/web/b;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/ad/web/H5AdStateEnum;->MB_H5_AD_STATE_ON_REWARDED:Lcom/transsion/ad/web/H5AdStateEnum;

    invoke-virtual {v0}, Lcom/transsion/ad/web/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5c55\u793a\u6210\u529f\u4e14\u6709\u5956\u52b1"

    invoke-interface {p1, v0, v1}, Lcom/transsion/ad/web/b;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/ad/web/H5VideoAdProvider;->b()Lcom/transsion/ad/web/b;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/ad/web/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/ad/web/H5AdStateEnum;

    invoke-virtual {v0}, Lcom/transsion/ad/web/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5c55\u793a\u6210\u529f\u65e0\u5956\u52b1"

    invoke-interface {p1, v0, v1}, Lcom/transsion/ad/web/b;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p1, Lcom/transsion/ad/web/H5VideoAdProvider;->a:Lcom/transsion/ad/web/H5VideoAdProvider;

    invoke-static {p1}, Lcom/transsion/ad/web/H5VideoAdProvider;->a(Lcom/transsion/ad/web/H5VideoAdProvider;)V

    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/transsion/ad/web/H5VideoAdProvider;->f(Z)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-static {}, Lcom/transsion/ad/web/H5VideoAdProvider;->b()Lcom/transsion/ad/web/b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/ad/web/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/ad/web/H5AdStateEnum;

    invoke-virtual {v0}, Lcom/transsion/ad/web/H5AdStateEnum;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5c55\u793a\u5931\u8d25"

    invoke-interface {p1, v0, v1}, Lcom/transsion/ad/web/b;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/transsion/ad/web/H5VideoAdProvider;->a:Lcom/transsion/ad/web/H5VideoAdProvider;

    invoke-static {p1}, Lcom/transsion/ad/web/H5VideoAdProvider;->a(Lcom/transsion/ad/web/H5VideoAdProvider;)V

    return-void
.end method
