.class public Lcom/hisavana/common/mock/RecordTestInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/common/mock/RecordTestInfo$LogListener;
    }
.end annotation


# static fields
.field public static LOG_CODE1:I = 0x1

.field public static LOG_CODE10:I = 0xa

.field public static LOG_CODE11:I = 0xb

.field public static LOG_CODE12:I = 0xc

.field public static LOG_CODE2:I = 0x2

.field public static LOG_CODE3:I = 0x3

.field public static LOG_CODE4:I = 0x4

.field public static LOG_CODE5:I = 0x5

.field public static LOG_CODE6:I = 0x6

.field public static LOG_CODE7:I = 0x7

.field public static LOG_CODE8:I = 0x8

.field public static LOG_CODE9:I = 0x9

.field private static logListener:Lcom/hisavana/common/mock/RecordTestInfo$LogListener;

.field public static stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/hisavana/common/mock/RecordTestInfo;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogMsg(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/hisavana/common/mock/RecordTestInfo;->logListener:Lcom/hisavana/common/mock/RecordTestInfo$LogListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hisavana/common/mock/RecordTestInfo$1;

    invoke-direct {v0, p0, p1}, Lcom/hisavana/common/mock/RecordTestInfo$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/hisavana/common/mock/RecordTestInfo$LogListener;
    .locals 1

    sget-object v0, Lcom/hisavana/common/mock/RecordTestInfo;->logListener:Lcom/hisavana/common/mock/RecordTestInfo$LogListener;

    return-object v0
.end method

.method public static destroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hisavana/common/mock/RecordTestInfo;->logListener:Lcom/hisavana/common/mock/RecordTestInfo$LogListener;

    return-void
.end method

.method public static getLogMsg(Lcom/hisavana/common/bean/Network;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/hisavana/common/interfacz/ICacheAd;",
            ">(",
            "Lcom/hisavana/common/bean/Network;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/hisavana/common/mock/RecordTestInfo;->logListener:Lcom/hisavana/common/mock/RecordTestInfo$LogListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " price:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getLogMsg(Lcom/hisavana/common/interfacz/ICacheAd;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/hisavana/common/interfacz/ICacheAd;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/hisavana/common/mock/RecordTestInfo;->logListener:Lcom/hisavana/common/mock/RecordTestInfo$LogListener;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v1

    invoke-static {v1}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priceCoefficient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", price:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isInternalAd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->isInternalAd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getValidTimeLimit()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static getLogMsg(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/hisavana/common/interfacz/ICacheAd;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/hisavana/common/mock/RecordTestInfo;->logListener:Lcom/hisavana/common/mock/RecordTestInfo$LogListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/interfacz/ICacheAd;

    invoke-static {v1}, Lcom/hisavana/common/mock/RecordTestInfo;->getLogMsg(Lcom/hisavana/common/interfacz/ICacheAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static record(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/hisavana/common/mock/RecordTestInfo;->stringBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisavana/common/constant/ComConstants;->AUTOMATIC_TEST_STATUS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisavana/common/mock/RecordTestInfo;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/hisavana/common/mock/RecordTestInfo;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static setLogListener(Lcom/hisavana/common/mock/RecordTestInfo$LogListener;)V
    .locals 0

    sput-object p0, Lcom/hisavana/common/mock/RecordTestInfo;->logListener:Lcom/hisavana/common/mock/RecordTestInfo$LogListener;

    return-void
.end method
