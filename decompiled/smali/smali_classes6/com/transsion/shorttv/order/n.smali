.class public final synthetic Lcom/transsion/shorttv/order/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/order/PurchaseDialog;

.field public final synthetic b:Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/order/n;->a:Lcom/transsion/shorttv/order/PurchaseDialog;

    iput-object p2, p0, Lcom/transsion/shorttv/order/n;->b:Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/order/n;->a:Lcom/transsion/shorttv/order/PurchaseDialog;

    iget-object v1, p0, Lcom/transsion/shorttv/order/n;->b:Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/order/PurchaseDialog;->u0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
