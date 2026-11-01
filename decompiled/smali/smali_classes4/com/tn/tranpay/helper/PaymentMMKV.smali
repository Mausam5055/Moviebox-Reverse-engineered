.class public final Lcom/tn/tranpay/helper/PaymentMMKV;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/tranpay/helper/PaymentMMKV;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lcom/google/gson/Gson;

.field private static final d:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-direct {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;-><init>()V

    sput-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    sget-object v0, Lcom/tn/tranpay/helper/PaymentMMKV$mmkv$2;->INSTANCE:Lcom/tn/tranpay/helper/PaymentMMKV$mmkv$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;

    iget v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;

    invoke-direct {v0, p0, p2}, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;-><init>(Lcom/tn/tranpay/helper/PaymentMMKV;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    iget-object v0, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/tn/tranpay/helper/IPHelper;->a:Lcom/tn/tranpay/helper/IPHelper;

    iput-object p0, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->label:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v3, v4}, Lcom/tn/tranpay/helper/IPHelper;->j(Lcom/tn/tranpay/helper/IPHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/lang/String;

    const-string v1, "\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f\u5931\u8d25: "

    const-string v2, "_"

    const/4 v3, 0x2

    if-eqz p2, :cond_5

    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "k_currency_info_ip_cache_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    sget-object v5, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    invoke-virtual {v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lai/a;->a:Lai/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f7f\u7528IP\u5730\u5740\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4, v3, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v4, v3, v4}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_5
    :goto_3
    sget-object p2, Lai/a;->a:Lai/a;

    const-string v5, "\u65e0\u6cd5\u83b7\u53d6IP\u5730\u5740\uff0c\u4f7f\u7528\u8bbe\u5907ID\u4f5c\u4e3afallback"

    invoke-static {p2, v5, v4, v3, v4}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v5, Lcom/tn/tranpay/device/TNDeviceHelper;->a:Lcom/tn/tranpay/device/TNDeviceHelper;

    invoke-virtual {v5}, Lcom/tn/tranpay/device/TNDeviceHelper;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "k_currency_info_ip_cache_device_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_1
    sget-object v6, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    invoke-virtual {v6, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4f7f\u7528\u8bbe\u5907ID\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v4, v3, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v4, v3, v4}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lcom/tn/tranpay/bean/CurrencyInfoBean;)V
    .locals 3

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "k_currency_info_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "k_currency_info_cache_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    sget-object v1, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f13\u5b58region\u8d27\u5e01\u4fe1\u606f\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->d()V

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->e()V

    return-void
.end method

.method public final d()V
    .locals 14

    sget-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v11, v1, v4

    const-string v5, "key"

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "k_currency_info_ip_cache_"

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v11, v5, v3, v12, v13}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "_"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v11

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "substring(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-virtual {v5}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    sget-object v5, Lai/a;->a:Lai/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6e05\u9664\u8fc7\u671fIP\u7f13\u5b58: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v13, v12, v13}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    const-string v7, "key"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, "k_currency_info_cache_time_"

    invoke-static {v6, v9, v4, v7, v8}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-virtual {v7}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v6, v10, v11}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v8, v12, v10

    if-lez v8, :cond_0

    sub-long v10, v0, v12

    const-wide v12, 0x9a7ec800L

    cmp-long v8, v10, v12

    if-lez v8, :cond_0

    invoke-static {v6, v9}, Lkotlin/text/StringsKt;->I0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "k_currency_info_cache_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;

    iget v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;

    invoke-direct {v0, p0, p1}, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;-><init>(Lcom/tn/tranpay/helper/PaymentMMKV;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/tn/tranpay/helper/IPHelper;->a:Lcom/tn/tranpay/helper/IPHelper;

    iput-object p0, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v0, v3, v4}, Lcom/tn/tranpay/helper/IPHelper;->j(Lcom/tn/tranpay/helper/IPHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/String;

    const-class v2, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    const-string v3, ""

    const-string v5, "_"

    const/4 v6, 0x2

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "k_currency_info_ip_cache_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v8

    invoke-virtual {v8, v7, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    :try_start_0
    sget-object v1, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    invoke-virtual {v1, v8, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    sget-object v2, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4f7f\u7528IP\u5730\u5740\u7f13\u5b58: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v4, v6, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object v1, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790IP\u7f13\u5b58\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v4, v6, v4}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    :goto_2
    return-object v4

    :cond_6
    :goto_3
    sget-object p1, Lcom/tn/tranpay/device/TNDeviceHelper;->a:Lcom/tn/tranpay/device/TNDeviceHelper;

    invoke-virtual {p1}, Lcom/tn/tranpay/device/TNDeviceHelper;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "k_currency_info_ip_cache_device_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    :try_start_1
    sget-object v5, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    invoke-virtual {v5, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    sget-object v3, Lai/a;->a:Lai/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4f7f\u7528\u8bbe\u5907ID fallback\u7f13\u5b58: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v4, v6, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v2

    goto :goto_4

    :catch_1
    move-exception p1

    sget-object v2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e3\u6790\u8bbe\u5907ID\u7f13\u5b58\u5931\u8d25: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v4, v6, v4}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-object v4
.end method

.method public final g(Ljava/lang/String;)Lcom/tn/tranpay/bean/CurrencyInfoBean;
    .locals 8

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "k_currency_info_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "k_currency_info_cache_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    sub-long/2addr v6, v4

    const-wide v3, 0x9a7ec800L

    cmp-long v1, v6, v3

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v3, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    const-class v4, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tn/tranpay/bean/CurrencyInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lai/a;->a:Lai/a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e3\u6790region\u7f13\u5b58\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v3, v1, v2, v4, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    return-object v2
.end method

.method public final h()Lcom/tencent/mmkv/MMKV;
    .locals 2

    sget-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-mmkv>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method
