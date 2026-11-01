.class public final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

.field final synthetic b:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method constructor <init>(JLcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iput-object p4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->b:Lkotlin/jvm/internal/Ref$LongRef;

    const-wide/16 p3, 0x3e8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r0()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n1(I)V

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->t0()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "VideoInterpolateBidScene"

    invoke-static {v0, v2, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F1(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/AdInterceptTimerView;->getBind()Lso/f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lso/f;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v3, -0x1

    add-long/2addr v3, v1

    iput-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {p2, v1, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
