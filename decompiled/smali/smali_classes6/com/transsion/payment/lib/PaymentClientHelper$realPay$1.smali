.class public final Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/tranpay/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/PaymentClientHelper;->d(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/PaymentService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/payment/lib/b;

.field final synthetic b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

.field final synthetic c:Lcom/transsion/payment/lib/PaymentService;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    iput-object p2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    iput-object p3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->c:Lcom/transsion/payment/lib/PaymentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V
    .locals 6

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPurchasesUpdated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/tn/tranpay/a;->a:Lcom/tn/tranpay/a;

    invoke-virtual {p1}, Lcom/tn/tranpay/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tn/tranpay/a;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    invoke-static {p1}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> realPay() --> paynicorn result --> \u8f6e\u8be2Paynicorn\u652f\u4ed8\u7ed3\u679c ...."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    invoke-interface {p1, v2}, Lcom/transsion/payment/lib/b;->b(Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;

    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    iget-object p2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->c:Lcom/transsion/payment/lib/PaymentService;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, v1, v2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;-><init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_1
    :goto_0
    sget-object p2, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    invoke-static {p2}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> realPay() --> paynicorn result is cancel"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/transsion/payment/lib/b;->b(Z)V

    invoke-virtual {p1}, Lcom/tn/tranpay/b;->b()I

    move-result v1

    if-eq v1, v2, :cond_3

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2

    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    const/16 p2, 0x3ec

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    invoke-virtual {v0}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "observe() --> \u652f\u4ed8\u5931\u8d25"

    invoke-interface {p1, p2, v1, v3, v0}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> processing--> paynicorn result --> \u8f6e\u8be2Paynicorn\u652f\u4ed8\u7ed3\u679c ...."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    const/16 p2, 0x3eb

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    invoke-virtual {v0}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "orderCheck4Paynicorn() --> code = 400 -- \u652f\u4ed8\u672a\u5b8c\u6210"

    invoke-interface {p1, p2, v1, v3, v0}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    const/16 v0, 0x3ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/tranpay/b;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    invoke-virtual {v1}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, p1, v3, v1}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    return-void
.end method
