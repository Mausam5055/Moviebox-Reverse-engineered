.class public final synthetic Lcom/transsion/ad/bidding/video/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic b:Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/video/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/transsion/ad/bidding/video/e;->b:Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/video/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/transsion/ad/bidding/video/e;->b:Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;

    invoke-static {v0, v1}, Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;->c1(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;)V

    return-void
.end method
