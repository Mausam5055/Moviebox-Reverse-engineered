.class public Lcom/transsion/api/gateway/utils/GatewayUtils;
.super Ljava/lang/Object;


# static fields
.field public static L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    invoke-direct {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;-><init>()V

    const-string v1, "gateway_sdk"

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->setGlobalTag(Ljava/lang/String;)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->setLogSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->setLogHeadSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->setBorderSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->create()Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    move-result-object v0

    sput-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUseGateWay(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    iget-boolean v0, v0, Lcom/transsion/api/gateway/config/a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    iget-object v0, v0, Lcom/transsion/api/gateway/config/a;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/api/gateway/bean/GatewayHost;

    iget-object v2, v2, Lcom/transsion/api/gateway/bean/GatewayHost;->host:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static canUseGateWay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    iget-boolean v0, v0, Lcom/transsion/api/gateway/config/a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    iget-object v0, v0, Lcom/transsion/api/gateway/config/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    iget-object v0, v0, Lcom/transsion/api/gateway/config/a;->j:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/api/gateway/bean/GatewayHost;

    iget-object v6, v4, Lcom/transsion/api/gateway/bean/GatewayHost;->host:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v2, v4, Lcom/transsion/api/gateway/bean/GatewayHost;->enablePath:Ljava/util/List;

    iget-object v3, v4, Lcom/transsion/api/gateway/bean/GatewayHost;->disablePath:Ljava/util/List;

    move p0, v5

    goto :goto_0

    :cond_4
    move p0, v1

    :goto_0
    if-nez p0, :cond_5

    return v1

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6

    return v5

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v5

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    move v1, v5

    :cond_8
    :goto_1
    return v1
.end method

.method public static isExcludeRequest(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "/gateway/sdk/v1/config?app="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/gateway/metric/add"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isRequireSign(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/transsion/api/gateway/GateWaySdk;->getActivateSigHosts()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/transsion/api/gateway/GateWaySdk;->getActivateSigPaths()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 16

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/16 v3, 0xf

    if-gt v1, v3, :cond_9

    const-wide/16 v3, 0x0

    move-wide v9, v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x3

    const-wide/16 v13, 0xff

    if-ge v7, v1, :cond_4

    move-object/from16 v15, p0

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    if-nez v8, :cond_1

    cmp-long v5, v9, v3

    if-ltz v5, :cond_1

    cmp-long v5, v9, v13

    if-gtz v5, :cond_1

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v11, 0x1

    and-long v8, v9, v13

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v0, v11

    move-wide v9, v3

    move v11, v5

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_3

    return-object v2

    :cond_3
    const-wide/16 v12, 0xa

    mul-long/2addr v9, v12

    int-to-long v5, v5

    add-long/2addr v9, v5

    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-nez v8, :cond_9

    cmp-long v1, v9, v3

    if-ltz v1, :cond_9

    rsub-int/lit8 v1, v11, 0x4

    const/16 v3, 0x8

    mul-int/2addr v1, v3

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    cmp-long v1, v9, v4

    if-gez v1, :cond_9

    const/4 v1, 0x2

    if-eqz v11, :cond_5

    const/4 v2, 0x1

    if-eq v11, v2, :cond_6

    if-eq v11, v1, :cond_7

    if-eq v11, v12, :cond_8

    goto :goto_3

    :cond_5
    const/16 v2, 0x18

    shr-long v4, v9, v2

    and-long/2addr v4, v13

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x0

    aput-byte v2, v0, v4

    :cond_6
    const/16 v2, 0x10

    shr-long v4, v9, v2

    and-long/2addr v4, v13

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    :cond_7
    shr-long v2, v9, v3

    and-long/2addr v2, v13

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_8
    and-long v1, v9, v13

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v12

    :goto_3
    return-object v0

    :cond_9
    return-object v2
.end method
