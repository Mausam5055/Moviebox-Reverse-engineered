.class public Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;
.super Ljava/lang/Object;


# instance fields
.field private apkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appInfo:Ljava/lang/String;

.field private modelBlack:Ljava/lang/String;

.field private modelWhite:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/ApkInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->apkList:Ljava/util/List;

    return-object v0
.end method

.method public getAppInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->appInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getModelBlack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->modelBlack:Ljava/lang/String;

    return-object v0
.end method

.method public getModelWhite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->modelWhite:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
