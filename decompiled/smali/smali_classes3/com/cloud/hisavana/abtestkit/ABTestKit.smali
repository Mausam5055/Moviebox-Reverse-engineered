.class public final Lcom/cloud/hisavana/abtestkit/ABTestKit;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ-\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0003\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/hisavana/abtestkit/ABTestKit;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;",
        "config",
        "",
        "init",
        "(Landroid/content/Context;Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V",
        "",
        "interval",
        "updateHttpRequestTimeInterval",
        "(J)V",
        "layerId",
        "localRequestInterval",
        "",
        "layerSwitchStatus",
        "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;",
        "getABTestVariant",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;",
        "deleteTable",
        "abtestkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/hisavana/abtestkit/ABTestKit;

.field public static a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/abtestkit/ABTestKit;

    invoke-direct {v0}, Lcom/cloud/hisavana/abtestkit/ABTestKit;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->INSTANCE:Lcom/cloud/hisavana/abtestkit/ABTestKit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deleteTable()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lv6/e;->a()V

    return-void
.end method

.method public static final getABTestVariant(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    if-nez p0, :cond_0

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v2, "OPEN"

    invoke-static {p2, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->getHttpRequestTimeInterval()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1

    :cond_3
    const-wide/32 p1, 0x3f480

    :goto_1
    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr p1, v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, v0}, Lv6/i;->a(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V

    sget-object p1, Lv6/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, Lv6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lv6/z;->getInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, p2

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Lv6/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    if-eqz v0, :cond_6

    new-instance p1, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    invoke-direct {p1, p2, v1, p2}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lv6/z;->setLayerId(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lv6/z;->setRequestTime(J)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    :cond_6
    const-string p0, "ADSDK"

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "ABTEST"

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ABMemoryCache queryMemoryCacheForLayerId, result = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->getAbLayerInfo()Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    move-result-object p2

    :cond_8
    invoke-static {p2}, Lv6/g;->a(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;

    move-result-object p1

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ABChecker check, state = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object p0, p1

    goto :goto_4

    :cond_a
    const-string p0, "PUSH_ALL"

    invoke-static {p2, p0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;->INSTANCE:Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;

    goto :goto_4

    :cond_b
    const-string p0, "CLOSED"

    invoke-static {p2, p0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    goto :goto_4

    :cond_c
    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    goto :goto_4

    :cond_d
    :goto_3
    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    invoke-direct {p0, v1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    :goto_4
    return-object p0
.end method

.method public static final init(Landroid/content/Context;Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/e;->g(Landroid/content/Context;)V

    sget-object p0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->INSTANCE:Lcom/cloud/hisavana/abtestkit/ABTestKit;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sput-object p1, Lcom/cloud/hisavana/abtestkit/ABTestKit;->a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    sget-object p0, Lv6/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->getInitCompleteListener()Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    move-result-object p0

    invoke-static {p0}, Lv6/e;->g(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final updateHttpRequestTimeInterval(J)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->setHttpRequestTimeInterval(Ljava/lang/Long;)V

    :goto_0
    return-void
.end method
