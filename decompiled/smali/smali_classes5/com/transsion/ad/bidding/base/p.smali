.class public final synthetic Lcom/transsion/ad/bidding/base/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/p;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    iput-object p2, p0, Lcom/transsion/ad/bidding/base/p;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput p3, p0, Lcom/transsion/ad/bidding/base/p;->c:I

    iput p4, p0, Lcom/transsion/ad/bidding/base/p;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/p;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/p;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iget v2, p0, Lcom/transsion/ad/bidding/base/p;->c:I

    iget v3, p0, Lcom/transsion/ad/bidding/base/p;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;->a(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V

    return-void
.end method
