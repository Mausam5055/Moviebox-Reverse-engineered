.class public final Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/treasure/TreasureAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$isLoading$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getAdCallback$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$stopRefreshAnimation(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {v0, p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$setMaxEcpmObject$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {v0}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getBinding$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lkk/k;

    move-result-object v0

    iget-object v0, v0, Lkk/k;->d:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    iget-object v1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {v1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getNativeManager$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {v2}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getViewBinder$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lcom/transsion/commercialization/task/treasure/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$isLoading$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$stopRefreshAnimation(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getAdCallback$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lkotlin/jvm/functions/Function1;

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

    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureAdView$a;->d:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureAdView;->access$getListener$p(Lcom/transsion/commercialization/task/treasure/TreasureAdView;)Lcom/transsion/commercialization/task/treasure/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/commercialization/task/treasure/c;->a()V

    :cond_0
    return-void
.end method
