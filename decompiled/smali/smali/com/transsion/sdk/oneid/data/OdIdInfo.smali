.class public Lcom/transsion/sdk/oneid/data/OdIdInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appid:I

.field public oaid:Ljava/lang/String;

.field public opid:Ljava/lang/String;

.field public tsid:Ljava/lang/String;

.field public vaid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->vaid:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/OdIdInfo;->vaid:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/OdIdInfo;->tsid:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/OdIdInfo;->oaid:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/OdIdInfo;->opid:Ljava/lang/String;

    return-void
.end method
