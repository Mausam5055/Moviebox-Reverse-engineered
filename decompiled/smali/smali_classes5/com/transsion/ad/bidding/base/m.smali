.class public final synthetic Lcom/transsion/ad/bidding/base/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/m;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/m;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->U(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
