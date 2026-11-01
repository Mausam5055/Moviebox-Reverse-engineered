.class public final Lcom/transsion/shorttv/order/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/shorttv/order/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/order/d;

    invoke-direct {v0}, Lcom/transsion/shorttv/order/d;-><init>()V

    sput-object v0, Lcom/transsion/shorttv/order/d;->a:Lcom/transsion/shorttv/order/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv/order/d;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/order/d;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/shorttv/order/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "payFail"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "orderCheck4Paynicorn"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;->getPrePayInfo()Lcom/transsion/shorttv/order/bean/PrePayInfoBean;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getPrice()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v8, v5

    goto :goto_3

    :cond_2
    :goto_2
    const-string v5, "0"

    goto :goto_1

    :goto_3
    const-string v5, ""

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getOrderId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    move-object v9, v6

    goto :goto_5

    :cond_4
    :goto_4
    move-object v9, v5

    :goto_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getDescription()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_6

    :cond_5
    move-object v10, v6

    goto :goto_7

    :cond_6
    :goto_6
    move-object v10, v5

    :goto_7
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;->getTxnId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_8

    :cond_7
    move-object v7, v6

    goto :goto_9

    :cond_8
    :goto_8
    move-object v7, v5

    :goto_9
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getCurrency()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto :goto_a

    :cond_9
    move-object v11, v3

    :goto_a
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getReferenceNo()Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto :goto_b

    :cond_a
    move-object v12, v3

    :goto_b
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getMemo()Ljava/lang/String;

    move-result-object v3

    :cond_b
    move-object v13, v3

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getPayByLocalCurrency()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_c
    move/from16 v17, v3

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    goto :goto_c

    :goto_d
    new-instance v3, Lcom/tn/tranpay/BillingParams;

    const/16 v18, 0x180

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v19}, Lcom/tn/tranpay/BillingParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v0, :cond_d

    sget-object v4, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    new-instance v5, Lcom/transsion/shorttv/order/d$a;

    invoke-direct {v5, v1, v2}, Lcom/transsion/shorttv/order/d$a;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v4, v0, v3, v5}, Lcom/tn/tranpay/TranPayClient;->b(Landroid/content/Context;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    :cond_d
    return-void
.end method

.method public final d(Landroid/content/Context;Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/b;)V
    .locals 3

    sget-object v0, Lcom/transsion/shorttv/order/c;->a:Lcom/transsion/shorttv/order/c;

    invoke-direct {p0}, Lcom/transsion/shorttv/order/d;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -->  --> purchase() --> \u5f00\u59cb\u8d2d\u4e70\u6d41\u7a0b"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/c;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/shorttv/order/PurchaseDialog;

    invoke-direct {v0}, Lcom/transsion/shorttv/order/PurchaseDialog;-><init>()V

    invoke-virtual {v0, p2}, Lcom/transsion/shorttv/order/PurchaseDialog;->F0(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)Lcom/transsion/shorttv/order/PurchaseDialog;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->p0(Lcom/transsion/shorttv/order/b;)Lcom/transsion/shorttv/order/BasePayLoadingDialog;

    move-result-object p2

    const-string p3, "PurchaseDialog"

    invoke-virtual {p2, p1, p3}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->i0(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const-string p1, "-1"

    const-string p2, "context == null || orderReq == null"

    invoke-interface {p3, p1, p2}, Lcom/transsion/shorttv/order/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
