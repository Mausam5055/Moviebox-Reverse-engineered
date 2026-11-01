.class Lcom/hisavana/mintegral/util/PlatformUtil$1;
.super Lcom/hisavana/common/bean/NativeAdWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/util/PlatformUtil;->getTAdNativeInfo(Lcom/mbridge/msdk/out/Campaign;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/bean/NativeAdWrapper<",
        "Lcom/mbridge/msdk/out/Campaign;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/common/base/BaseNative;

.field final synthetic b:Lcom/hisavana/common/bean/AdNativeInfo;

.field final synthetic c:Lcom/mbridge/msdk/out/Campaign;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/out/Campaign;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 0

    iput-object p3, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->a:Lcom/hisavana/common/base/BaseNative;

    iput-object p4, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    iput-object p5, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->c:Lcom/mbridge/msdk/out/Campaign;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/bean/NativeAdWrapper;-><init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->a:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNative;->destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy ad error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mintegral PlatformUtil"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getTrackBundle()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isIconValid()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->c:Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isImageValid()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/util/PlatformUtil$1;->c:Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isMaterielValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
