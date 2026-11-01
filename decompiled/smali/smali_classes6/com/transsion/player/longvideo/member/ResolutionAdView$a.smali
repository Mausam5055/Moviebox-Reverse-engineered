.class public final Lcom/transsion/player/longvideo/member/ResolutionAdView$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/ResolutionAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/player/longvideo/member/ResolutionAdView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/ResolutionAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$isLoading$p(Lcom/transsion/player/longvideo/member/ResolutionAdView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$stopRefreshAnimation(Lcom/transsion/player/longvideo/member/ResolutionAdView;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$setMaxEcpmObject$p(Lcom/transsion/player/longvideo/member/ResolutionAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$getBinding$p(Lcom/transsion/player/longvideo/member/ResolutionAdView;)Lho/s;

    move-result-object v0

    iget-object v0, v0, Lho/s;->h:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$getNativeManager$p(Lcom/transsion/player/longvideo/member/ResolutionAdView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {v2}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$getViewBinder$p(Lcom/transsion/player/longvideo/member/ResolutionAdView;)Lcom/transsion/player/longvideo/member/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$isLoading$p(Lcom/transsion/player/longvideo/member/ResolutionAdView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$stopRefreshAnimation(Lcom/transsion/player/longvideo/member/ResolutionAdView;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$getAdCallback$p(Lcom/transsion/player/longvideo/member/ResolutionAdView;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionAdView$a;->d:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    invoke-static {p1}, Lcom/transsion/player/longvideo/member/ResolutionAdView;->access$getListener$p(Lcom/transsion/player/longvideo/member/ResolutionAdView;)Lok/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lok/b;->onSuccess()V

    :cond_0
    return-void
.end method
