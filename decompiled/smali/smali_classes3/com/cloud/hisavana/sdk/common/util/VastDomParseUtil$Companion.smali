.class public final Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastData;)V
    .locals 2

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "firstQuartile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setQuarter(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setStartTrack(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setComplete(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "thirdQuartile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-result-object v1

    :cond_a
    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setThirdQuarter(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "midpoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-result-object v1

    :cond_d
    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setMidpoint(Ljava/lang/String;)V

    :cond_f
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x61aea3b8 -> :sswitch_4
        -0x4fbdabf6 -> :sswitch_3
        -0x23bacec7 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x21644853 -> :sswitch_0
    .end sparse-switch
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-eqz p1, :cond_2

    const-string v0, "{"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "}"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, p1

    :cond_0
    if-eqz v3, :cond_2

    :try_start_0
    const-class v0, Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v0, "<get-entries>(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "&"

    sget-object v7, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion$jsonToURLQuery$2$1$1;->INSTANCE:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion$jsonToURLQuery$2$1$1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VastDomParseUtil"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private final c(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_1
    const-string v4, "InLine"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;->a:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;

    invoke-direct {v3, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->k(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    :cond_2
    :goto_2
    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final d(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "Verification"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    :try_start_0
    sget-object v3, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;->a:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;

    invoke-direct {v3, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->p(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_2
    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getAdVerifications()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object p2, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion$parseAdVerifications$3;->INSTANCE:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion$parseAdVerifications$3;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    :cond_4
    return-void
.end method

.method private final e(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "id"

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "skipoffset"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/l0;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setSkipOffSet(Ljava/lang/Integer;)V

    :goto_1
    const-string v1, ""

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setId(Ljava/lang/String;)V

    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v2, 0x0

    :goto_3
    invoke-interface {p2, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, v1

    :cond_6
    const-string v5, "Linear"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p1, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->l(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    :cond_7
    :goto_4
    if-eq v2, v0, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private final f(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    const-string v4, "Creative"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->e(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    :cond_2
    :goto_1
    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final g(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_9

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    const-string v4, "CreativeExtension"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string v5, "type"

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "cover"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVideoMask(Lcom/cloud/hisavana/sdk/common/bean/VideoMask;)V

    goto :goto_3

    :cond_5
    const-string v5, "buttonText"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setButtonTxt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    if-eq v1, v0, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseExtensions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VastDomParseUtil"

    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private final h(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "VastDomParseUtil"

    const-string v4, "parseIcon "

    const-string v5, "0"

    new-instance v15, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    const/16 v17, 0x3ff

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v6, v15

    move-object/from16 v19, v15

    move-object v15, v0

    invoke-direct/range {v6 .. v18}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v2, :cond_0

    move-object/from16 v6, v19

    goto :goto_0

    :cond_0
    move-object/from16 v6, v19

    invoke-virtual {v2, v6}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setIcon(Lcom/cloud/hisavana/sdk/common/bean/VastIcon;)V

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v7, "program"

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v8

    :goto_1
    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setProgram(Ljava/lang/String;)V

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v9, "width"

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v8

    :goto_2
    if-nez v0, :cond_3

    move-object v0, v5

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setWidth(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v9, "height"

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_4
    move-object v0, v8

    :goto_5
    if-nez v0, :cond_5

    move-object v0, v5

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setHeight(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    :try_start_2
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v9, "xPosition"

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :cond_6
    move-object v0, v8

    :goto_8
    if-nez v0, :cond_7

    move-object v0, v5

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setXPosition(Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :goto_9
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    :try_start_3
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v9, "yPosition"

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_d

    :cond_8
    move-object v0, v8

    :goto_b
    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    move-object v5, v0

    :goto_c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setYPosition(Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_e

    :goto_d
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v3, "offset"

    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_a
    move-object v0, v8

    :goto_f
    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setOffset(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_b
    move-object v0, v8

    :goto_10
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/l0;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setDuration(Ljava/lang/Integer;)V

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ltz v3, :cond_11

    const/4 v4, 0x0

    :goto_11
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_c

    goto :goto_13

    :cond_c
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    const-string v7, ""

    :cond_d
    const-string v9, "IconClicks"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {v1, v2, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->i(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    goto :goto_13

    :cond_e
    const-string v9, "StaticResource"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :cond_f
    move-object v5, v8

    :goto_12
    invoke-direct {v1, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setIconResource(Ljava/lang/String;)V

    :cond_10
    :goto_13
    if-eq v4, v3, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_11
    return-void
.end method

.method private final i(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    const-string v4, "IconClickThrough"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getIcon()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setIconClick(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v4, "IconClickTracking"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getIcon()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->getIconClickTracking()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    if-eq v1, v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method private final j(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    const-string v4, "Icon"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->h(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    :cond_2
    :goto_1
    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final k(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "Impression"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getImpression()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    const-string v4, "AdTitle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const-string v4, "Description"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :cond_8
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    const-string v4, "Creatives"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->f(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    goto :goto_1

    :sswitch_4
    const-string v4, "AdVerifications"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->d(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    :cond_b
    :goto_1
    if-eq v1, v0, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bd325cb -> :sswitch_4
        -0x64e1597c -> :sswitch_3
        -0x360d424 -> :sswitch_2
        0x1deadbd5 -> :sswitch_1
        0x7e026e29 -> :sswitch_0
    .end sparse-switch
.end method

.method private final l(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v4, "TrackingEvents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->n(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    goto :goto_2

    :sswitch_1
    const-string v4, "Icons"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->j(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    goto :goto_2

    :sswitch_2
    const-string v4, "CreativeExtensions"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->g(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    goto :goto_2

    :sswitch_3
    const-string v4, "MediaFiles"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->m(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    goto :goto_2

    :sswitch_4
    const-string v4, "Duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/l0;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setDuration(Ljava/lang/Integer;)V

    goto :goto_2

    :sswitch_5
    const-string v4, "VideoClicks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->q(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    :cond_a
    :goto_2
    if-eq v1, v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a2ef3da -> :sswitch_5
        -0x72e14e4c -> :sswitch_4
        -0x16f37aed -> :sswitch_3
        -0x162b1abd -> :sswitch_2
        0x43362fa -> :sswitch_1
        0x247392d0 -> :sswitch_0
    .end sparse-switch
.end method

.method private final m(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "VastDomParseUtil"

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ltz v5, :cond_17

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_16

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_0

    goto/16 :goto_15

    :cond_0
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_16

    :cond_1
    :goto_1
    const-string v9, "MediaFile"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    const/16 v15, 0x1f

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setMainAd(Lcom/cloud/hisavana/sdk/common/bean/VastMedia;)V

    :goto_2
    const/4 v9, 0x0

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v9

    :goto_3
    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_5
    move-object v10, v9

    :goto_4
    invoke-direct {v1, v10}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setMediaResource(Ljava/lang/String;)V

    :goto_5
    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object v0, v9

    :goto_6
    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v11, "delivery"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_8
    move-object v10, v9

    :goto_7
    invoke-direct {v1, v10}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setDelivery(Ljava/lang/String;)V

    :goto_8
    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object v0, v9

    :goto_9
    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    if-eqz v10, :cond_b

    const-string v11, "type"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :cond_b
    move-object v10, v9

    :goto_a
    invoke-direct {v1, v10}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setType(Ljava/lang/String;)V

    :goto_b
    if-nez v2, :cond_c

    goto :goto_d

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v10, "video"

    const/4 v11, 0x2

    invoke-static {v0, v10, v6, v11, v9}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_d
    move-object v0, v9

    :goto_c
    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVideoType(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_d
    const-string v10, "0"

    if-eqz v2, :cond_e

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    move-result-object v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_10

    :cond_e
    move-object v0, v9

    :goto_e
    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    if-eqz v11, :cond_10

    const-string v12, "width"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    :cond_10
    move-object v11, v9

    :goto_f
    invoke-direct {v1, v11}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_11

    move-object v11, v10

    :cond_11
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setWidth(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    :goto_10
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseMediaFiles width "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_11
    if-eqz v2, :cond_12

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    move-result-object v0

    goto :goto_12

    :catch_2
    move-exception v0

    goto :goto_14

    :cond_12
    move-object v0, v9

    :goto_12
    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    if-eqz v8, :cond_14

    const-string v11, "height"

    invoke-interface {v8, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_14

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    :cond_14
    invoke-direct {v1, v9}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_15

    goto :goto_13

    :cond_15
    move-object v10, v8

    :goto_13
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setHeight(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_15

    :goto_14
    :try_start_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseMediaFiles height "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_16
    :goto_15
    if-eq v7, v5, :cond_17

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :goto_16
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseMediaFiles "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private final n(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 9

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v8}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVastTrack(Lcom/cloud/hisavana/sdk/common/bean/VastTracking;)V

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    const-string v5, "Tracking"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const-string v6, "event"

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v5

    :goto_2
    invoke-direct {p0, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-nez v5, :cond_5

    move-object v5, v4

    :cond_5
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v2

    :goto_3
    invoke-direct {p0, v3, v4, p1}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastData;)V

    :cond_7
    :goto_4
    if-eq v1, v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private final p(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 7

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;-><init>()V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "vender"

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->vendorKey:Ljava/lang/String;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ltz v1, :cond_7

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, ""

    :cond_2
    const-string v6, "JavaScriptResource"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->url:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v6, "VerificationParameters"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v2

    :goto_3
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->verification_parameters:Ljava/lang/String;

    :cond_6
    :goto_4
    if-eq v3, v1, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getAdVerifications()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method private final q(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVastClick(Lcom/cloud/hisavana/sdk/common/bean/VastClick;)V

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-ltz p2, :cond_7

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    const-string v5, "ClickThrough"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    invoke-direct {p0, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;->setVideoClick(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v5, "ClickTracking"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v2

    :goto_3
    invoke-direct {p0, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;->getClickTrack()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    if-eq v1, p2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private final r(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\\"

    const-string v2, ""

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "\\\""

    const-string v8, "\""

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "<![CDATA["

    const-string v2, ""

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "]]>"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "&amp;"

    const-string v2, "&"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/VastData;
    .locals 32

    move-object/from16 v0, p2

    const-string v1, "VastDomParseUtil"

    const-string v2, "data"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move-object/from16 v4, p0

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x1

    const-string v10, ""

    invoke-static {v0, v9, v2, v10}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const-string v4, "newInstance(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-object v11, v8

    const v30, 0x3ffff

    const/16 v31, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v11 .. v31}, Lcom/cloud/hisavana/sdk/common/bean/VastData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :try_start_0
    const-string v4, "&"

    const-string v5, "&amp;"

    const/4 v7, 0x4

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object v12, v8

    move-object v8, v11

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p0

    :try_start_1
    invoke-direct {v4, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/ByteArrayInputStream;

    sget-object v6, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v6, "getBytes(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v3, "VAST"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v12

    :cond_2
    sget-object v3, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;->a:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;

    const-string v5, "version"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVersion(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ltz v3, :cond_6

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    move-object v7, v10

    goto :goto_1

    :cond_4
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_1
    const-string v8, "Ad"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;->a:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;

    invoke-direct {v7, v12, v6}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->c(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    if-eq v5, v3, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseVast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v9
.end method
