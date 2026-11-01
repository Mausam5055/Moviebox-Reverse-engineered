.class public Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;
.super Lcom/cloud/hisavana/sdk/api/listener/AdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/s3;

.field private b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/s3;Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->a:Lcom/cloud/hisavana/sdk/s3;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method


# virtual methods
.method public d()Lcom/cloud/hisavana/sdk/api/listener/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public m()V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "JsAdmAdListener"

    const-string v2, "adm from js : onAdClicked"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->c(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->e(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "JsAdmAdListener"

    const-string v1, "adm from js : onAdClosed"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->a:Lcom/cloud/hisavana/sdk/s3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/s3;->m()V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->c(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->e(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "JsAdmAdListener"

    const-string v2, "adm from js : onAdShow"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->c(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->e(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/G;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p2

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->M(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string v0, "JsAdmAdListener"

    const-string v1, "adm from js : onAdShowError"

    invoke-virtual {p2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x2

    invoke-static {p2, v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->a:Lcom/cloud/hisavana/sdk/s3;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/s3;->m()V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge$a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0, p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->c(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->e(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    return-void
.end method
