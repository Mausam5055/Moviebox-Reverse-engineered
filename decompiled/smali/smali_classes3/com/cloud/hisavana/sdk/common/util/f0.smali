.class public Lcom/cloud/hisavana/sdk/common/util/f0;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;->getAdvertiserInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;->getAdvertiserLink()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;->getIntAgeValue()I

    move-result p0

    return p0
.end method

.method public static d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;->getCopyAdvertiserLink()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;->getDisclaimerPercent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;->getDisclaimerText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
