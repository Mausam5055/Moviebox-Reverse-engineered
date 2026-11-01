.class public final Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "appId",
        "",
        "appInfo",
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        "(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;)V",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "getAppInfo",
        "()Lcom/cloud/tmc/integration/model/AppInfoModel;",
        "setAppInfo",
        "(Lcom/cloud/tmc/integration/model/AppInfoModel;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;ILjava/lang/Object;)Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->copy(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;)Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/cloud/tmc/integration/model/AppInfoModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;)Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;-><init>(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setAppInfo(Lcom/cloud/tmc/integration/model/AppInfoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->appInfo:Lcom/cloud/tmc/integration/model/AppInfoModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiniAppInfoConfigBean(appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appInfo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
