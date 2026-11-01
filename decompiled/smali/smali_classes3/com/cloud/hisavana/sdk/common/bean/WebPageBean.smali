.class public Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;
.super Ljava/lang/Object;


# instance fields
.field private errorCode:I

.field private errorType:Ljava/lang/String;

.field private initEndTime:J

.field private jumpTime:J

.field private loadStartTime:J

.field private pageClickTime:J

.field private redirectType:I

.field private spendEndTime:J

.field private targetUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->redirectType:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->webId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->errorCode:I

    return v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public getInitTime()J
    .locals 4

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->initEndTime:J

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->pageClickTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getLoadTime()J
    .locals 4

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->loadStartTime:J

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->pageClickTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getRedirectType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->redirectType:I

    return v0
.end method

.method public getSpendTime()J
    .locals 4

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->spendEndTime:J

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->loadStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->targetUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->targetUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->url:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getWaitTime()J
    .locals 4

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->jumpTime:J

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->pageClickTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getWebId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->webId:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->errorCode:I

    return-void
.end method

.method public setErrorType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->errorType:Ljava/lang/String;

    return-void
.end method

.method public setInitEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->initEndTime:J

    return-void
.end method

.method public setJumpTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->jumpTime:J

    return-void
.end method

.method public setLoadStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->loadStartTime:J

    return-void
.end method

.method public setPageClickTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->pageClickTime:J

    return-void
.end method

.method public setRedirectType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->redirectType:I

    return-void
.end method

.method public setSpendEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->spendEndTime:J

    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->targetUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->url:Ljava/lang/String;

    return-void
.end method
