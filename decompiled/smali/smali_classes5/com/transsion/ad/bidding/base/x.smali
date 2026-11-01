.class public abstract Lcom/transsion/ad/bidding/base/x;
.super Lcom/hisavana/common/interfacz/TAdditionalListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TAdditionalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V

    sget-object v0, Lcom/transsion/ad/ps/installed/AppInstallManager;->a:Lcom/transsion/ad/ps/installed/AppInstallManager;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdditionalInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ew\u6ca1\u6709\u4f20\u9012\u8fc7\u6765\u5305\u540d"

    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->a(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AppInstalledBean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setECPM(Ljava/lang/Double;)V

    const-string v2, "EW"

    invoke-virtual {v1, v2}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setSource(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdditionalInfo;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setHorizontalImageUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    const-string v2, "getApp(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->e(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V

    return-void
.end method
