.class public Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;
.super Ljava/lang/Object;


# instance fields
.field private androidSupportVersion:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private countryCodes:Ljava/lang/String;

.field private cpus:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private itemId:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private nonModel:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private sysVersionCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidSupportVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->androidSupportVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCodes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->countryCodes:Ljava/lang/String;

    return-object v0
.end method

.method public getCpus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->cpus:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNonModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->nonModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSysVersionCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;->sysVersionCode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
