.class public Lbe/t;
.super Lcom/hisavana/common/interfacz/TInnerAdListener;


# instance fields
.field public a:Lce/b;

.field public b:Lcom/hisavana/common/interfacz/TAdListener;

.field public c:Lcom/hisavana/common/interfacz/OnSkipListener;

.field public d:Lcom/hisavana/common/interfacz/TAdditionalListener;

.field public e:I


# direct methods
.method public constructor <init>(Lce/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TInnerAdListener;-><init>()V

    iput-object p1, p0, Lbe/t;->a:Lce/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/hisavana/common/interfacz/TAdditionalListener;
    .locals 1

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    return-object v0
.end method

.method public b(I)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> source --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> NativeInfo -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> NativeInfo -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public g(Lcom/hisavana/common/interfacz/OnSkipListener;)V
    .locals 0

    iput-object p1, p0, Lbe/t;->c:Lcom/hisavana/common/interfacz/OnSkipListener;

    return-void
.end method

.method public h(Lcom/hisavana/common/interfacz/TAdListener;)V
    .locals 0

    iput-object p1, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    return-void
.end method

.method public i(Lcom/hisavana/common/interfacz/TAdditionalListener;)V
    .locals 0

    iput-object p1, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    iget-object v0, v0, Lce/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lbe/h;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/config/ConfigContentHelper;->j(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)V

    :cond_1
    return-void
.end method

.method public k()Lcom/hisavana/common/interfacz/TAdListener;
    .locals 1

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    return-object v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lbe/t;->e:I

    return-void
.end method

.method public m(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowed(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public n(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public o(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> NativeInfo -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> onAdActivate -->\n>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onClicked(I)V
    .locals 2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "TAdListenerAdapter"

    const-string v1, "onClicked"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClosed(I)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> on close"

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> >>> onClosed()"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdListener;->onClosed(I)V

    :cond_0
    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lce/b;->setIsShowing(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lbe/t;->b(I)V

    return-void
.end method

.method public onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> on close"

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> >>> onClosed()"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdListener;->onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_0
    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lce/b;->setIsShowing(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lbe/t;->e(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    return-void
.end method

.method public onError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 5

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAdListenerAdapter --> on alliance error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_flow"

    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lbe/t;->a:Lce/b;

    invoke-virtual {v2}, Lce/b;->stopTimer()V

    iget-object v2, p0, Lbe/t;->a:Lce/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lce/b;->setLoading(Z)V

    iget-object v2, p0, Lbe/t;->a:Lce/b;

    invoke-virtual {v2, v3}, Lce/b;->setLoaded(Z)V

    iget-object v2, p0, Lbe/t;->a:Lce/b;

    iget v3, p0, Lbe/t;->e:I

    invoke-virtual {v2, v0, v1, v3}, Lce/b;->trackingAdLoaded(ILjava/lang/String;I)V

    iget-object v1, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/hisavana/common/interfacz/TAdListener;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_3
    iget-object v1, p0, Lbe/t;->a:Lce/b;

    invoke-virtual {v1, p1}, Lce/b;->c(Lcom/hisavana/common/bean/TAdErrorCode;)V

    const/16 p1, 0x4e21

    if-ne v0, p1, :cond_4

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b(I)V

    :cond_4
    return-void
.end method

.method public onLoad()V
    .locals 2

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lce/b;->setLoaded(Z)V

    :cond_0
    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TAdListener;->onLoad()V

    :cond_1
    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lce/b;->l()V

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    invoke-virtual {v0}, Lce/b;->q()V

    :cond_2
    return-void
.end method

.method public onNativeFeedClicked(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> on click"

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> >>> onClicked()"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdListener;->onClicked(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdListener;->onNativeFeedClicked(ILcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lbe/t;->f(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    return-void
.end method

.method public onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> on show"

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbe/t;->t()V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> >>> onShow()"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdListener;->onShow(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdListener;->onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lbe/t;->a:Lce/b;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lce/b;->setIsShowing(Z)V

    :cond_2
    invoke-virtual {p0, p2, p3}, Lbe/t;->o(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    return-void
.end method

.method public onRewarded()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> on rewarded"

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> >>> onRewarded()"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TAdListener;->onRewarded()V

    :cond_0
    invoke-virtual {p0}, Lbe/t;->r()V

    return-void
.end method

.method public onShow(I)V
    .locals 2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "TAdListenerAdapter"

    const-string v1, "onShow"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAdListenerAdapter --> on onAdShowError\uff0cerrorCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "TAdListenerAdapter --> >>> onAdShowError()"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->b:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_1
    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lce/b;->setIsShowing(Z)V

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    invoke-virtual {v0, p1}, Lce/b;->d(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_2
    return-void
.end method

.method public onShowed(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdditionalInfo;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbe/t;->j(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbe/t;->m(Lcom/hisavana/common/bean/AdditionalInfo;)V

    return-void
.end method

.method public onSkipClick()V
    .locals 2

    iget-object v0, p0, Lbe/t;->c:Lcom/hisavana/common/interfacz/OnSkipListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/OnSkipListener;->onClick()V

    :cond_0
    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lce/b;->setIsShowing(Z)V

    :cond_1
    return-void
.end method

.method public onTimeReach()V
    .locals 2

    iget-object v0, p0, Lbe/t;->c:Lcom/hisavana/common/interfacz/OnSkipListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/OnSkipListener;->onTimeReach()V

    :cond_0
    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lce/b;->setIsShowing(Z)V

    :cond_1
    return-void
.end method

.method public p()V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "*----> TAdListenerAdapter --> on alliance ad load"

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "*----> TAdListenerAdapter --> >>> onLoad()"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    invoke-virtual {v0}, Lce/b;->stopTimer()V

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lce/b;->setLoading(Z)V

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    iget v2, p0, Lbe/t;->e:I

    iput v2, v0, Lce/b;->mFillSource:I

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lce/b;->trackingAdLoaded(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lbe/t;->onLoad()V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b(I)V

    return-void
.end method

.method public q(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onTrigger(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "ad_flow"

    const-string v2, ">>>>> rewarded"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onRewarded()V

    :cond_0
    return-void
.end method

.method public s(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_flow"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/t;->d:Lcom/hisavana/common/interfacz/TAdditionalListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onTriggerShow(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 7

    iget-object v0, p0, Lbe/t;->a:Lce/b;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lbe/t;->a:Lce/b;

    iget-object v2, v2, Lce/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lbe/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v0, v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setLastShowTime(J)V

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/l0;->c(J)J

    move-result-wide v3

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/l0;->b(J)J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourZeroClock()J

    move-result-wide v5

    cmp-long v5, v5, v0

    const/4 v6, 0x1

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourShowTimes()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v2, v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setCurrentHourShowTimes(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setCurrentHourShowTimes(I)V

    invoke-virtual {v2, v0, v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setCurrentHourZeroClock(J)V

    :goto_0
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayZeroClock()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayShowTimes()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v2, v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setTodayShowTimes(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setTodayShowTimes(I)V

    invoke-virtual {v2, v3, v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setTodayZeroClock(J)V

    :goto_1
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/config/ConfigContentHelper;->j(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)V

    :cond_3
    return-void
.end method
