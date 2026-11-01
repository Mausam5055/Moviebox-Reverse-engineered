.class public final synthetic Lcom/transsion/shorttv/order/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/order/PurchaseDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/order/PurchaseDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/order/i;->a:Lcom/transsion/shorttv/order/PurchaseDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/i;->a:Lcom/transsion/shorttv/order/PurchaseDialog;

    check-cast p1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->s0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
