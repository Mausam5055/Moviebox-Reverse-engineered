.class public final Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$e;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;


# direct methods
.method constructor <init>(Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$e;->a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$e;->a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    invoke-virtual {p2, p1}, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;->changeState(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$e;->a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;->changeState(Z)V

    :goto_0
    return-void
.end method
