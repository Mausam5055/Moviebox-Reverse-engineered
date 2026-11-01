.class public Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/data/bean/request/FormBean$FormCustomInfosDTO;
    }
.end annotation


# instance fields
.field private advertiserId:I

.field private formCustomInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/request/FormBean$FormCustomInfosDTO;",
            ">;"
        }
    .end annotation
.end field

.field private formEmail:Ljava/lang/String;

.field private formId:I

.field private formName:Ljava/lang/String;

.field private formPhone:Ljava/lang/String;

.field private gaid:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvertiserId()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->advertiserId:I

    return v0
.end method

.method public getFormCustomInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/request/FormBean$FormCustomInfosDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formCustomInfos:Ljava/util/List;

    return-object v0
.end method

.method public getFormEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFormId()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formId:I

    return v0
.end method

.method public getFormName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getGaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvertiserId(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->advertiserId:I

    return-void
.end method

.method public setFormCustomInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/request/FormBean$FormCustomInfosDTO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formCustomInfos:Ljava/util/List;

    return-void
.end method

.method public setFormEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formEmail:Ljava/lang/String;

    return-void
.end method

.method public setFormId(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formId:I

    return-void
.end method

.method public setFormName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formName:Ljava/lang/String;

    return-void
.end method

.method public setFormPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->formPhone:Ljava/lang/String;

    return-void
.end method

.method public setGaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->gaid:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->ipAddress:Ljava/lang/String;

    return-void
.end method
