.class public final Lcom/transsion/member/promotion/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/member/promotion/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/promotion/i;

    invoke-direct {v0}, Lcom/transsion/member/promotion/i;-><init>()V

    sput-object v0, Lcom/transsion/member/promotion/i;->a:Lcom/transsion/member/promotion/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/member/promotion/i;->g(Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/member/promotion/i;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/transsion/member/promotion/i;->d(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/member/promotion/i;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/member/promotion/i;->e(Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final d(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "opt_type"

    const-string v2, "pay_result"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "result_type"

    const-string v2, "result_fail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fail_code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    const-string v1, "fail_message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/transsion/memberapi/SkuPromotionItem;->getSku()Lcom/transsion/memberapi/SkuPromotionSku;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/memberapi/SkuPromotionSku;->getSkuId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    move-object p2, p1

    :cond_2
    const-string p4, "sku_id"

    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_3

    move-object p3, p1

    :cond_3
    const-string p2, "order_id"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "trace_id"

    invoke-interface {v0, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lhj/i;->a:Lhj/i;

    if-nez p5, :cond_4

    move-object p5, p1

    :cond_4
    const-string p1, "purchase"

    invoke-virtual {p2, p5, p1, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final e(Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "opt_type"

    const-string v2, "pay_result"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "result_type"

    const-string v2, "result_success"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuPromotionItem;->getSku()Lcom/transsion/memberapi/SkuPromotionSku;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuPromotionSku;->getSkuId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    move-object p1, v1

    :cond_1
    const-string v2, "sku_id"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_2

    move-object p2, v1

    :cond_2
    const-string p1, "order_id"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "trace_id"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    if-nez p4, :cond_3

    move-object p4, v1

    :cond_3
    const-string p2, "purchase"

    invoke-virtual {p1, p4, p2, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static final g(Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    const-string v0, "orderId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    const-string v0, ""

    if-nez p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuPromotionItem;->getSku()Lcom/transsion/memberapi/SkuPromotionSku;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/memberapi/SkuPromotionSku;->getSkuId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, p0

    goto :goto_2

    :cond_2
    :goto_1
    move-object v6, v0

    :goto_2
    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/baselib/helper/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final f(Landroid/content/Context;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 14

    move-object v5, p1

    const-string v0, "traceId"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, v5, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v5

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v8, v1

    :goto_0
    if-eqz v8, :cond_6

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, ""

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/memberapi/SkuPromotionItem;->getMarketingActivityId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v0

    :cond_2
    const-string v3, "marketingActivityId"

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/transsion/payment/lib/f;->b:Lcom/transsion/payment/lib/f$a;

    invoke-virtual {v2}, Lcom/transsion/payment/lib/f$a;->a()Lcom/transsion/payment/lib/f;

    move-result-object v10

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/memberapi/SkuPromotionItem;->getSku()Lcom/transsion/memberapi/SkuPromotionSku;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/memberapi/SkuPromotionSku;->getSkuId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v11, v2

    goto :goto_2

    :cond_4
    :goto_1
    move-object v11, v0

    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/memberapi/SkuPromotionItem;->getSku()Lcom/transsion/memberapi/SkuPromotionSku;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/memberapi/SkuPromotionSku;->getDiscountPrice()Ljava/lang/Double;

    move-result-object v1

    :cond_5
    move-object v12, v1

    new-instance v13, Lcom/transsion/member/promotion/i$a;

    move-object v0, v13

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move-object v5, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/transsion/member/promotion/i$a;-><init>(Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/transsion/member/promotion/h;

    move-object v1, v0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/member/promotion/h;-><init>(Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, v8

    move-object v4, v11

    move-object v5, v12

    move-object v8, v9

    move-object v9, v13

    move-object v10, v0

    invoke-virtual/range {v2 .. v10}, Lcom/transsion/payment/lib/f;->e(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLjava/util/Map;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V

    :cond_6
    return-void
.end method
