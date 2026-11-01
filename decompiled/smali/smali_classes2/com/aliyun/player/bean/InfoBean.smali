.class public Lcom/aliyun/player/bean/InfoBean;
.super Ljava/lang/Object;


# instance fields
.field private mCode:Lcom/aliyun/player/bean/InfoCode;

.field private mExtraMsg:Ljava/lang/String;

.field private mExtraValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraValue:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/aliyun/player/bean/InfoCode;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/bean/InfoBean;->mCode:Lcom/aliyun/player/bean/InfoCode;

    return-object v0
.end method

.method public getExtraMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraValue()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraValue:J

    return-wide v0
.end method

.method public setCode(Lcom/aliyun/player/bean/InfoCode;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/bean/InfoBean;->mCode:Lcom/aliyun/player/bean/InfoCode;

    return-void
.end method

.method public setExtraMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraMsg:Ljava/lang/String;

    return-void
.end method

.method public setExtraValue(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraValue:J

    return-void
.end method
