.class public abstract Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u000fJ\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J=\u0010 \u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001b2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d\u00a2\u0006\u0004\u0008 \u0010!R\u0017\u0010\u0003\u001a\u00028\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\"\u001a\u0004\u0008#\u0010$R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u0017\u0010\u0006\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010&\u001a\u0004\u0008,\u0010(R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104R\"\u00107\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u0010\u0013\"\u0004\u00088\u00109\u00a8\u0006:"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "",
        "T",
        "ad",
        "",
        "callbackId",
        "codeSeatId",
        "",
        "adType",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "bridgeListener",
        "<init>",
        "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V",
        "",
        "loadAd",
        "()V",
        "showAd",
        "",
        "hasAd",
        "()Z",
        "release",
        "Lcom/hisavana/common/bean/TAdRequestBody;",
        "a",
        "()Lcom/hisavana/common/bean/TAdRequestBody;",
        "eventType",
        "errorCode",
        "rewardStatus",
        "",
        "price",
        "",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adInfos",
        "handleAdEvent",
        "(IIIDLjava/util/List;)V",
        "Ljava/lang/Object;",
        "getAd",
        "()Ljava/lang/Object;",
        "b",
        "Ljava/lang/String;",
        "getCallbackId",
        "()Ljava/lang/String;",
        "setCallbackId",
        "(Ljava/lang/String;)V",
        "c",
        "getCodeSeatId",
        "d",
        "I",
        "getAdType",
        "()I",
        "e",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "getBridgeListener",
        "()Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "f",
        "Z",
        "isRelease",
        "setRelease",
        "(Z)V",
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
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
            ")V"
        }
    .end annotation

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridgeListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->c:Ljava/lang/String;

    iput p4, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->d:I

    iput-object p5, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->e:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    return-void
.end method


# virtual methods
.method public final a()Lcom/hisavana/common/bean/TAdRequestBody;
    .locals 2

    new-instance v0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    invoke-direct {v0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    new-instance v1, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;

    invoke-direct {v1, p0}, Lcom/hisavana/mediation/bridge/listener/BridgeMediationAdListener;-><init>(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    move-result-object v0

    return-object v0
.end method

.method public final getAd()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAdType()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->d:I

    return v0
.end method

.method public final getBridgeListener()Lcom/hisavana/mediation/bridge/listener/BridgeListener;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->e:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    return-object v0
.end method

.method public final getCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodeSeatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final handleAdEvent(IIIDLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIID",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->e:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    iget-object v2, v0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->c:Ljava/lang/String;

    iget v5, v0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->d:I

    move v3, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v10}, Lcom/hisavana/mediation/bridge/listener/BridgeListener;->callBackToJs(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V

    return-void
.end method

.method public hasAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isRelease()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->f:Z

    return v0
.end method

.method public abstract loadAd()V
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->f:Z

    return-void
.end method

.method public final setCallbackId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->b:Ljava/lang/String;

    return-void
.end method

.method public final setRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->f:Z

    return-void
.end method

.method public abstract showAd()V
.end method
