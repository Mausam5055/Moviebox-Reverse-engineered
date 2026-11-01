.class public final Lcom/transsion/payment/lib/PaymentClientHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/payment/lib/PaymentClientHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/payment/lib/PaymentClientHelper;

    invoke-direct {v0}, Lcom/transsion/payment/lib/PaymentClientHelper;-><init>()V

    sput-object v0, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentClientHelper;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/payment/lib/PaymentClientHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 14

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "toUpperCase(...)"

    if-eqz v0, :cond_0

    const-string v3, "custom_local_iso"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lih/b;->a:Lih/b;

    invoke-virtual {v0}, Lih/b;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v10, v1

    goto :goto_1

    :cond_2
    move-object v10, v0

    :goto_1
    sget-object v0, Lyg/b;->a:Lyg/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lyg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "gp"

    :cond_3
    move-object v6, v0

    sget-object v0, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/payment/lib/c;->a:Lcom/transsion/payment/lib/c;

    invoke-virtual {v1}, Lcom/transsion/payment/lib/c;->b()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/tn/tranpay/logger/LogLevel;->DEBUG:Lcom/tn/tranpay/logger/LogLevel;

    const/16 v12, 0x140

    const/4 v13, 0x0

    const-string v4, "3100484"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v13}, Lcom/tn/tranpay/TranPay;->c(Lcom/tn/tranpay/TranPay;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tn/tranpay/logger/LogLevel;ZZLjava/lang/String;Lcom/tn/tranpay/e;ILjava/lang/Object;)V

    new-instance v1, Lcom/transsion/payment/lib/PayLoggerPlugin;

    invoke-direct {v1}, Lcom/transsion/payment/lib/PayLoggerPlugin;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tn/tranpay/TranPay;->a(Lcom/tn/tranpay/logger/LoggerPlugin;)V

    return-void
.end method

.method public final d(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/PaymentService;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "activity"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "orderRequest"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "payCallback"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "paymentService"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/payment/lib/PaymentClientHelper;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> requestPay() --> \u8bf7\u6c42\u5230\u6570\u636e --> realPay() --> \u6253\u5f00\u7aef\u5185WebView --> \u5c55\u793a\u6536\u94f6\u53f0"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getPrePayInfo()Lcom/transsion/payment/lib/bean/PrePayInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getOrderId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/transsion/payment/lib/b;->b(Z)V

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getPrice()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "0"

    :cond_2
    move-object v9, v6

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getOrderId()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-nez v6, :cond_3

    move-object v10, v7

    goto :goto_1

    :cond_3
    move-object v10, v6

    :goto_1
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v11, v7

    goto :goto_2

    :cond_4
    move-object v11, v6

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTxnId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getCurrency()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getReferenceNo()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    move-object v13, v7

    goto :goto_3

    :cond_5
    move-object v13, v6

    :goto_3
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getMemo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getPayByLocalCurrency()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_6
    move/from16 v18, v5

    new-instance v4, Lcom/tn/tranpay/BillingParams;

    const/16 v19, 0x180

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v20}, Lcom/tn/tranpay/BillingParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    new-instance v6, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;

    invoke-direct {v6, v2, v1, v3}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;-><init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;)V

    invoke-virtual {v5, v0, v4, v6}, Lcom/tn/tranpay/TranPayClient;->c(Landroidx/appcompat/app/AppCompatActivity;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    return-void

    :cond_7
    :goto_4
    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v3, "\u8ba2\u5355\u4fe1\u606f\u5f02\u5e38"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move-object v2, v3

    move v3, v4

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "payFail"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "orderCheck4Paynicorn"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/payment/lib/PaymentClientHelper;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> requestPay() --> \u8bf7\u6c42\u5230\u6570\u636e --> realPay() --> \u6253\u5f00\u7aef\u5185WebView --> \u5c55\u793a\u6536\u94f6\u53f0"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getPrePayInfo()Lcom/transsion/payment/lib/bean/PrePayInfo;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_8

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "0"

    :cond_3
    move-object v7, v3

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    if-nez v3, :cond_4

    move-object v8, v5

    goto :goto_1

    :cond_4
    move-object v8, v3

    :goto_1
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v9, v5

    goto :goto_2

    :cond_5
    move-object v9, v3

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTxnId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getCurrency()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getReferenceNo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getMemo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getPayByLocalCurrency()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_3
    move/from16 v16, v3

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :goto_4
    new-instance v3, Lcom/tn/tranpay/BillingParams;

    const/16 v17, 0x180

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v18}, Lcom/tn/tranpay/BillingParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v0, :cond_7

    sget-object v4, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    new-instance v5, Lcom/transsion/payment/lib/PaymentClientHelper$a;

    invoke-direct {v5, v1, v2}, Lcom/transsion/payment/lib/PaymentClientHelper$a;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v4, v0, v3, v5}, Lcom/tn/tranpay/TranPayClient;->c(Landroidx/appcompat/app/AppCompatActivity;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    :cond_7
    return-void

    :cond_8
    :goto_5
    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "realPay() --> \u6253\u5f00\u7aef\u5185WebView --> \u5c55\u793a\u6536\u94f6\u53f0 -- > activity == null"

    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
