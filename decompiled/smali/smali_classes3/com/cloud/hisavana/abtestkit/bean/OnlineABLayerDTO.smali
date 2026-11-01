.class public final Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;
.super Lv6/z;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001c\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001a\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0018\u001a\u0004\u0008\u0019\u0010\r\"\u0004\u0008\u001a\u0010\u0005\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;",
        "Lv6/z;",
        "Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;",
        "abLayerInfo",
        "<init>",
        "(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V",
        "",
        "json",
        "convertLayerInfo",
        "(Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;",
        "toString",
        "()Ljava/lang/String;",
        "component1",
        "()Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;",
        "copy",
        "(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;",
        "getAbLayerInfo",
        "setAbLayerInfo",
        "abtestkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V
    .locals 8

    const/4 v6, 0x7

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lv6/z;-><init>(JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILjava/lang/Object;)Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->copy(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    return-object v0
.end method

.method public final convertLayerInfo(Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v1, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    invoke-static {p1, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "coverLayerInfo fail, reason = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "localABData"

    invoke-virtual {v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final copy(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    iget-object p1, p1, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAbLayerInfo()Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnlineABLayerDTO(layerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lv6/z;->getLayerId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv6/z;->getRequestTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", abLayerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->abLayerInfo:Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
