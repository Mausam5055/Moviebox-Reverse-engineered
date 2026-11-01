.class public final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

.field final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->c:Ljava/lang/String;

    const-wide/16 p1, 0x3e8

    invoke-direct {p0, p4, p5, p1, p2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->c:Ljava/lang/String;

    const-string v1, "VideoStartBidScene"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f2()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y1(I)V

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q()V

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y1(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W()Lcom/transsion/postdetail/ui/view/AdCountDownView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x0()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->refreshCountDown(I)V

    :cond_0
    return-void
.end method
