.class public final Lcom/tn/tranpay/helper/PayUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/helper/PayUtils$a;,
        Lcom/tn/tranpay/helper/PayUtils$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/tn/tranpay/helper/PayUtils;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    new-instance v0, Lcom/tn/tranpay/helper/PayUtils;

    invoke-direct {v0}, Lcom/tn/tranpay/helper/PayUtils;-><init>()V

    sput-object v0, Lcom/tn/tranpay/helper/PayUtils;->a:Lcom/tn/tranpay/helper/PayUtils;

    new-instance v0, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v1, "gojek"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v1, "https://gojek.link"

    const-string v2, "https://gopay.co.id/app"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "com.gojek.app"

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v1, "com.gojek.app"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v8, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v1, "linkaja"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v6, 0xc

    const-string v2, "com.telkom.mwallet"

    const/4 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v1, "com.telkom.mwallet"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    new-instance v9, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v2, "dana"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "id.dana.app"

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "id.dana.app"

    invoke-static {v2, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v10, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v3, "ovo"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v4, "com.ovo.app"

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, "com.ovo.app"

    invoke-static {v3, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-instance v11, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v4, "shopeepay"

    const-string v5, "shopeeid"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const-string v5, "com.shopee.payment"

    const/4 v8, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v4, "com.shopee.payment"

    invoke-static {v4, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-instance v12, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v5, "tng"

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v10, 0xc

    const/4 v11, 0x0

    const-string v6, "com.tngdigital.tngo"

    const/4 v9, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "com.tngdigital.tngo"

    invoke-static {v5, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-instance v13, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v6, "boost"

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v11, 0xc

    const/4 v12, 0x0

    const-string v7, "my.com.asiainsurance.boost"

    const/4 v10, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v6, "my.com.asiainsurance.boost"

    invoke-static {v6, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-instance v14, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v7, "grabpay"

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v12, 0xc

    const/4 v13, 0x0

    const-string v8, "com.grabtaxi.passenger"

    const/4 v11, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v7, "com.grabtaxi.passenger"

    invoke-static {v7, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v8, "paynow"

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/16 v13, 0xc

    const/4 v14, 0x0

    const-string v9, "sg.gov.tech.paynow"

    const/4 v12, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v8, "sg.gov.tech.paynow"

    invoke-static {v8, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "truemoney"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v9, "https://tmn.app.link"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v14, 0x8

    const/16 v16, 0x0

    const-string v10, "th.co.truemoney.wallet"

    const/4 v13, 0x0

    move-object v9, v15

    move-object/from16 v17, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "th.co.truemoney.wallet"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "promptpay"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/16 v14, 0xc

    const-string v10, "th.co.promptpay"

    const/4 v12, 0x0

    move-object v9, v15

    move-object/from16 v18, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "th.co.promptpay"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "rabbitlinepay"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.linecorp.rabbitlinepay"

    move-object v9, v15

    move-object/from16 v19, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.linecorp.rabbitlinepay"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "gcash"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.globe.gcash.android"

    move-object v9, v15

    move-object/from16 v20, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.globe.gcash.android"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "paymaya"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.paymaya"

    move-object v9, v15

    move-object/from16 v21, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.paymaya"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "coins"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "ph.coins.btc"

    move-object v9, v15

    move-object/from16 v22, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "ph.coins.btc"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "momo"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.mservice.momotransfer"

    move-object v9, v15

    move-object/from16 v23, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.mservice.momotransfer"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "zalopay"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.vng.zalopay"

    move-object v9, v15

    move-object/from16 v24, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.vng.zalopay"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "viettelpay"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.viettel.viettelpay"

    move-object v9, v15

    move-object/from16 v25, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.viettel.viettelpay"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "ascendmoney"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.ascendmoney.mobile"

    move-object v9, v15

    move-object/from16 v26, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.ascendmoney.mobile"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "alipay"

    const-string v10, "alipays"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.eg.android.AlipayGphone"

    move-object v9, v15

    move-object/from16 v27, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.eg.android.AlipayGphone"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "weixin"

    const-string v10, "wechat"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.tencent.mm"

    move-object v9, v15

    move-object/from16 v28, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.tencent.mm"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "paypal"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.paypal.android.p2pmobile"

    move-object v9, v15

    move-object/from16 v29, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.paypal.android.p2pmobile"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "paytmmp"

    const-string v10, "paytmgn"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "net.one97.paytm"

    move-object v9, v15

    move-object/from16 v30, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "net.one97.paytm"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "phonepe"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v10, "com.phonepe.app"

    move-object v9, v15

    move-object/from16 v31, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.phonepe.app"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    const-string v9, "jazzcash"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x4

    const-string v10, "com.techlogix.mobilinkcustomer"

    const-string v13, "intent://deeplink#Intent;scheme=jazzcash;package=com.techlogix.mobilinkcustomer;end"

    move-object v9, v15

    move-object/from16 v32, v8

    move-object v8, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "com.techlogix.mobilinkcustomer"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v9, 0x19

    new-array v9, v9, [Lkotlin/Pair;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v17, v9, v0

    const/16 v0, 0x9

    aput-object v18, v9, v0

    const/16 v0, 0xa

    aput-object v19, v9, v0

    const/16 v0, 0xb

    aput-object v20, v9, v0

    const/16 v0, 0xc

    aput-object v21, v9, v0

    const/16 v0, 0xd

    aput-object v22, v9, v0

    const/16 v0, 0xe

    aput-object v23, v9, v0

    const/16 v0, 0xf

    aput-object v24, v9, v0

    const/16 v0, 0x10

    aput-object v25, v9, v0

    const/16 v0, 0x11

    aput-object v26, v9, v0

    const/16 v0, 0x12

    aput-object v27, v9, v0

    const/16 v0, 0x13

    aput-object v28, v9, v0

    const/16 v0, 0x14

    aput-object v29, v9, v0

    const/16 v0, 0x15

    aput-object v30, v9, v0

    const/16 v0, 0x16

    aput-object v31, v9, v0

    const/16 v0, 0x17

    aput-object v32, v9, v0

    const/16 v0, 0x18

    aput-object v8, v9, v0

    invoke-static {v9}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/helper/PayUtils;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->p(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->o(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic c()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/helper/PayUtils;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic e(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "tran_pay"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gopay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.gojek.app"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final h(Landroid/net/Uri;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    sget-object v3, Lai/a;->a:Lai/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayUtils --> handleDeepLinkGeneric() --> scheme = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", host = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v5}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v4, Lcom/tn/tranpay/helper/PayUtils$b;->a:Lcom/tn/tranpay/helper/PayUtils$b;

    invoke-virtual {v4, v0, v2}, Lcom/tn/tranpay/helper/PayUtils$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tn/tranpay/helper/PayUtils$a;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/tn/tranpay/helper/PayUtils;->k(Landroid/net/Uri;Lcom/tn/tranpay/helper/PayUtils$a;)Z

    move-result p1

    return p1

    :cond_2
    const-string v2, "intent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->i(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_3
    const-string v2, "https"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "uri.toString()"

    const/4 v8, 0x1

    if-nez v4, :cond_6

    const-string v4, "http"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v8}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_5
    return v1

    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->l(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v8

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayUtils --> handleDeepLinkGeneric() --> \u672a\u77e5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u94fe\u63a5\uff0c\u5c1d\u8bd5\u901a\u7528\u5904\u7406: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5, v6, v5}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v8}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final i(Landroid/net/Uri;)Z
    .locals 7

    sget-object v0, Lai/a;->a:Lai/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayUtils --> handleIntentScheme() --> \u5904\u7406 intent:// \u534f\u8bae: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v5, 0x10000000

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v5, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {v5}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "PayUtils --> handleIntentScheme() --> \u6210\u529f\u542f\u52a8 intent:// \u534f\u8bae"

    invoke-static {v0, p1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v4

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v4, "PayUtils --> handleIntentScheme() --> \u6ca1\u6709\u5e94\u7528\u53ef\u4ee5\u5904\u7406\u6b64 intent"

    invoke-static {v0, v4, v2, v3, v2}, Lai/a;->k(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayUtils --> handleIntentScheme() --> \u5c1d\u8bd5\u8df3\u8f6c\u5e94\u7528\u5e02\u573a: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {p0, p1, v1, v3, v2}, Lcom/tn/tranpay/helper/PayUtils;->r(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_2
    :goto_0
    return v1

    :goto_1
    sget-object v0, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayUtils --> handleIntentScheme() --> \u542f\u52a8\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2, v3, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v1
.end method

.method private final j(Ljava/lang/String;)Z
    .locals 10

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayUtils --> handleNoAppFound() --> \u5c1d\u8bd5\u5904\u7406\u672a\u5339\u914d\u7684 DeepLink: scheme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v3, Lcom/tn/tranpay/helper/PayUtils$b;->a:Lcom/tn/tranpay/helper/PayUtils$b;

    invoke-virtual {v3, v0}, Lcom/tn/tranpay/helper/PayUtils$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/tn/tranpay/helper/PayUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/high16 v6, 0x10000000

    const-string v7, "android.intent.action.VIEW"

    const/4 v8, 0x1

    if-eqz v3, :cond_5

    invoke-static {p0, v3, v4, v5, v4}, Lcom/tn/tranpay/helper/PayUtils;->e(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PayUtils --> handleNoAppFound() --> \u5e94\u7528\u5df2\u5b89\u88c5\u4f46\u65e0\u6cd5\u76f4\u63a5\u5904\u7406\u6b64 DeepLink: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4, v5, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PayUtils --> handleNoAppFound() --> DeepLink: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4, v5, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p1, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {p1}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "PayUtils --> handleNoAppFound() --> \u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f\u6210\u529f\u6253\u5f00"

    invoke-static {v2, p1, v4, v5, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v8

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PayUtils --> handleNoAppFound() --> \u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f\u5931\u8d25: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u5c1d\u8bd5\u5176\u4ed6\u65b9\u5f0f"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4, v5, v4}, Lai/a;->k(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    if-nez v1, :cond_3

    sget-object p1, Lcom/tn/tranpay/helper/PayUtils$b;->a:Lcom/tn/tranpay/helper/PayUtils$b;

    invoke-virtual {p1, v3}, Lcom/tn/tranpay/helper/PayUtils$b;->b(Ljava/lang/String;)Lcom/tn/tranpay/helper/PayUtils$a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_3

    sget-object v0, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PayUtils --> handleNoAppFound() --> \u5c1d\u8bd5\u4f7f\u7528\u914d\u7f6e\u7684 intentScheme: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4, v5, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "parse(config.intentScheme)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->i(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v8

    :cond_3
    return v1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PayUtils --> handleNoAppFound() --> \u5e94\u7528\u672a\u5b89\u88c5\uff0c\u8df3\u8f6c\u5e94\u7528\u5e02\u573a: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v4, v5, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {p0, v3, v1, v5, v4}, Lcom/tn/tranpay/helper/PayUtils;->r(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PayUtils --> handleNoAppFound() --> \u672a\u77e5\u534f\u8bae: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u5c1d\u8bd5\u901a\u7528\u65b9\u5f0f\u6253\u5f00"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4, v5, v4}, Lai/a;->k(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p1, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {p1}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "PayUtils --> handleNoAppFound() --> \u901a\u7528\u65b9\u5f0f\u6253\u5f00\u6210\u529f"

    invoke-static {v2, p1, v4, v5, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v8

    goto :goto_2

    :catch_1
    move-exception p1

    sget-object v0, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayUtils --> handleNoAppFound() --> \u901a\u7528\u65b9\u5f0f\u6253\u5f00\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u8fd4\u56de false\uff08\u5df2\u963b\u6b62 WebView \u52a0\u8f7d\uff09"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4, v5, v4}, Lai/a;->k(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_2
    return v1
.end method

.method private final k(Landroid/net/Uri;Lcom/tn/tranpay/helper/PayUtils$a;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v1, Lai/a;->a:Lai/a;

    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayUtils --> handlePaymentAppDeepLink() --> \u5904\u7406 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deeplink"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const-string v2, "https"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    const-string v2, "http"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    const-string v2, "uri.toString()"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->t(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PayUtils --> handlePaymentAppDeepLink() --> \u5c1d\u8bd5\u4f7f\u7528\u914d\u7f6e\u7684 intentScheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v4, v3}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "parse(config.intentScheme)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tn/tranpay/helper/PayUtils;->i(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v5

    :cond_3
    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->u(Landroid/net/Uri;Lcom/tn/tranpay/helper/PayUtils$a;)Z

    move-result p1

    return p1

    :cond_4
    move p1, v0

    :goto_1
    return p1
.end method

.method private final l(Landroid/net/Uri;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v9, "app.link"

    const-string v10, "onelink.me"

    const-string v2, "gojek.link"

    const-string v3, "gopay.co.id"

    const-string v4, "alipay.com"

    const-string v5, "paypal.com"

    const-string v6, "paytm.com"

    const-string v7, "phonepe.com"

    const-string v8, "linkaja.id"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lai/a;->a:Lai/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayUtils --> handleWebPaymentLink() --> \u5df2\u77e5\u652f\u4ed8\u5e94\u7528 Web \u94fe\u63a5: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "uri.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private static final o(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$onConfirm"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final p(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$onCancel"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic r(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->q(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p2, v0, v2, v0}, Lcom/tn/tranpay/helper/PayUtils;->e(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    sget-object v1, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayUtils --> tryStartAppDirectly() --> \u5e94\u7528\u672a\u5b89\u88c5: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\uff0c\u5c1d\u8bd5\u901a\u7528\u65b9\u5f0f\u6253\u5f00"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0, v2, v0}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v4}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    sget-object p1, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayUtils --> tryStartAppDirectly() --> \u5e94\u7528\u5df2\u5b89\u88c5: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\uff0c\u76f4\u63a5\u542f\u52a8"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0, v2, v0}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {v3}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    :try_start_0
    invoke-virtual {v3}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayUtils --> tryStartAppDirectly() --> \u6210\u529f\u542f\u52a8\u5e94\u7528: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0, v2, v0}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayUtils --> tryStartAppDirectly() --> \u542f\u52a8\u5931\u8d25: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0, v2, v0}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    move v4, v6

    :goto_0
    return v4

    :cond_1
    const-string p2, "PayUtils --> tryStartAppDirectly() --> \u5e94\u7528\u65e0\u6cd5\u76f4\u63a5\u5904\u7406\u94fe\u63a5\uff0c\u5c1d\u8bd5\u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f"

    invoke-static {p1, p2, v0, v2, v0}, Lai/a;->k(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {v3}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p2, "PayUtils --> tryStartAppDirectly() --> \u6210\u529f\u7528\u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f\u6253\u5f00"

    invoke-static {p1, p2, v0, v2, v0}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayUtils --> tryStartAppDirectly() --> \u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f\u4e5f\u5931\u8d25: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0, v2, v0}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    move v4, v6

    :goto_1
    return v4
.end method

.method private final u(Landroid/net/Uri;Lcom/tn/tranpay/helper/PayUtils$a;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->d()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lai/a;->a:Lai/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayUtils --> tryWebFallbacks() --> \u5c1d\u8bd5 Web \u56de\u9000: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_4
    return v1
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {v0}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez p1, :cond_1

    const-string v2, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lai/a;->a:Lai/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayUtils --> checkAppInstalled() --> \u5e94\u7528\u672a\u5b89\u88c5 [\u5305\u540d: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] [\u5f02\u5e38\u7c7b\u578b: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lai/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->h(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public final m(JJLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;

    iget v2, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;-><init>(Lcom/tn/tranpay/helper/PayUtils;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    if-ne v4, v6, :cond_2

    iget-wide v8, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$2:J

    iget-wide v10, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$1:J

    iget-wide v12, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$0:J

    iget-object v4, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    move-wide/from16 v17, v8

    move-wide v8, v12

    move-wide/from16 v12, v17

    goto/16 :goto_4

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v8, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$2:J

    iget-wide v10, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$1:J

    iget-wide v12, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$0:J

    iget-object v4, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide/from16 v10, p3

    move-object v4, v1

    move-wide v12, v8

    move-wide/from16 v8, p1

    move-object/from16 v1, p5

    :goto_1
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v14, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$2;

    invoke-direct {v14, v1, v7}, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->L$0:Ljava/lang/Object;

    iput-wide v8, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$0:J

    iput-wide v10, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$1:J

    iput-wide v12, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$2:J

    iput v5, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    invoke-static {v0, v14, v4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v3, :cond_5

    return-object v3

    :cond_5
    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    move-wide/from16 v17, v8

    move-wide v8, v12

    move-wide/from16 v12, v17

    :goto_2
    :try_start_2
    sget-object v14, Lai/a;->a:Lai/a;

    const-string v15, "Action succeeded"

    invoke-static {v14, v15, v7, v6, v7}, Lai/a;->c(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    move-wide/from16 v17, v8

    move-wide v8, v12

    move-wide/from16 v12, v17

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v14, v12

    cmp-long v14, v14, v10

    if-gtz v14, :cond_6

    sget-object v14, Lai/a;->a:Lai/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action failed: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Retrying in "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v7, v6, v7}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v4, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->L$0:Ljava/lang/Object;

    iput-wide v12, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$0:J

    iput-wide v10, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$1:J

    iput-wide v8, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$2:J

    iput v6, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    invoke-static {v12, v13, v1}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1

    return-object v3

    :goto_4
    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    sget-object v0, Lai/a;->a:Lai/a;

    const-string v1, "Exceeded maximum retry time"

    invoke-static {v0, v1, v7, v6, v7}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConfirm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/tn/lib/tranpay/R$string;->tranpay_abandon_transaction:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/tn/lib/tranpay/R$string;->tranpay_confirm:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tn/tranpay/helper/e;

    invoke-direct {v2, p2}, Lcom/tn/tranpay/helper/e;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/tn/lib/tranpay/R$string;->tranpay_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/tn/tranpay/helper/f;

    invoke-direct {p2, p3}, Lcom/tn/tranpay/helper/f;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final q(Ljava/lang/String;Z)Z
    .locals 8

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/high16 v1, 0x10000000

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id="

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v3, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p2, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p2, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PayUtils --> startAppMarket() --> \u6210\u529f\u542f\u52a8\u5e94\u7528\u5e02\u573a: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v5, v4, v5}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v3, Lai/a;->a:Lai/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PayUtils --> startAppMarket() --> \u542f\u52a8\u5e94\u7528\u5e02\u573a\u5931\u8d25: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v5, v4, v5}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://play.google.com/store/apps/details?id="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v6, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v6, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p2, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayUtils --> startAppMarket() --> \u4f7f\u7528 Google Play \u542f\u52a8: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v5, v4, v5}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    sget-object p2, Lai/a;->a:Lai/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayUtils --> startAppMarket() --> Google Play \u4e5f\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v5, v4, v5}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final s(Ljava/lang/String;Z)Z
    .locals 6

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p2, :cond_1

    const/high16 p2, 0x10000000

    invoke-virtual {v3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_0
    sget-object p2, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p2, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayUtils --> startUrl() --> \u6210\u529f\u542f\u52a8: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v2, v0, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    sget-object p2, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayUtils --> startUrl() --> \u6ca1\u6709\u5e94\u7528\u80fd\u5904\u7406: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v2, v0, v2}, Lai/a;->k(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->j(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    sget-object p2, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayUtils --> startUrl() --> \u542f\u52a8\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2, v0, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_2
    return v1

    :goto_3
    sget-object v1, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayUtils --> startUrl() --> ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v2, v0, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->j(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
