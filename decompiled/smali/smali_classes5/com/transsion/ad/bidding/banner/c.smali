.class public final synthetic Lcom/transsion/ad/bidding/banner/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/c;->a:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    iput-object p2, p0, Lcom/transsion/ad/bidding/banner/c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/c;->a:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1, p1}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->j(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V

    return-void
.end method
