.class public final Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;
.super Lcom/hisavana/common/interfacz/TAdditionalListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ!\u0010\u000f\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000bJ!\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u000bJ!\u0010\u0017\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0010J!\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0015J\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001b\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;",
        "Lcom/hisavana/common/interfacz/TAdditionalListener;",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "",
        "jsAdHolder",
        "<init>",
        "(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V",
        "Lcom/hisavana/common/bean/AdditionalInfo;",
        "additionalInfo",
        "",
        "onTrigger",
        "(Lcom/hisavana/common/bean/AdditionalInfo;)V",
        "onLoadSuccess",
        "Lcom/hisavana/common/bean/TAdErrorCode;",
        "tAdErrorCode",
        "onLoadFailure",
        "(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V",
        "onTriggerShow",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "nativeInfo",
        "onShow",
        "(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V",
        "onShowed",
        "onShowError",
        "onClick",
        "",
        "source",
        "onClosed",
        "(I)V",
        "(Lcom/hisavana/common/bean/TAdNativeInfo;)V",
        "onRewarded",
        "()V",
        "a",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "",
        "b",
        "Ljava/lang/String;",
        "tag",
        "",
        "c",
        "Z",
        "isRewarded",
        "mediation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jsAdHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TAdditionalListener;-><init>()V

    iput-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    const-string p1, "BridgeMediationAdListener"

    iput-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 9

    const-string p1, "additionalInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, additionalInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    :goto_0
    move-wide v6, p1

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    return-void
.end method

.method public onClosed(I)V
    .locals 9

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClosed, source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    iget-boolean v5, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->c:Z

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    return-void
.end method

.method public onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0

    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 10

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadFailure,additionalInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result p1

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    const/16 p1, -0x2710

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    :goto_2
    move-wide v7, p1

    goto :goto_3

    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_2

    :goto_3
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAdType()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    :cond_2
    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 10

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadSuccess, additionalInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAdType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->showAd()V

    :cond_1
    return-void
.end method

.method public onRewarded()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    const-string v2, "onRewarded"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->c:Z

    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 9

    const-string p1, "additionalInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShow, additionalInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    :goto_0
    move-wide v6, p1

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 10

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowError, additionalInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result p1

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    const/16 p1, -0x2710

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    :goto_2
    move-wide v7, p1

    goto :goto_3

    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_2

    :goto_3
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAdType()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    :cond_2
    return-void
.end method

.method public onShowed(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 4

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowed, additionalInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTrigger(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 4

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrigger, additionalInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTriggerShow(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 4

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTriggerShow, additionalInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
