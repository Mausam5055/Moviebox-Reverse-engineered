.class public final Lcom/cloud/hisavana/sdk/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/l;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/l;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/l;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/l;->a:Lcom/cloud/hisavana/sdk/l;

    const/4 v0, -0x1

    sput v0, Lcom/cloud/hisavana/sdk/l;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget v0, Lcom/cloud/hisavana/sdk/l;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "client_ab_network"

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    :try_start_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getLayerId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getSwitch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getReqInterval()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->getABTestVariant(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isOpen()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "bucketV2"

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    :try_start_2
    instance-of v2, v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;->getVariant()Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getInfo()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v1, "netGroupBucketId"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_4
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sput v4, Lcom/cloud/hisavana/sdk/l;->b:I

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getSubExpId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetGroup gets the groupBucketId in the api = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/cloud/hisavana/sdk/l;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", save it in the cache"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/k1;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/hisavana/net/NetGroup;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    sget v4, Lcom/cloud/hisavana/sdk/l;->b:I

    invoke-virtual {v2, v3, v4}, Lj7/a;->p(Ljava/lang/String;I)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    const-string v3, "bucketVarId"

    invoke-virtual {v2, v3, v0, v1}, Lj7/a;->q(Ljava/lang/String;J)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url is not in the white list, so it will not save groupBucketId in the cache. url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_8

    sput v4, Lcom/cloud/hisavana/sdk/l;->b:I

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lj7/a;->p(Ljava/lang/String;I)V

    const-string v0, "network abtest is closed"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isPushAll()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x7e0

    sput v0, Lcom/cloud/hisavana/sdk/l;->b:I

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lj7/a;->p(Ljava/lang/String;I)V

    const-string v0, "network abtest is push all"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_9
    :goto_3
    :try_start_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_a
    :goto_4
    if-nez v1, :cond_b

    const-string v0, "network abtest config data is null"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :goto_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x7dd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
