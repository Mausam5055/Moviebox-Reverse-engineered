.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\'\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\'\u001a\u00020\u00182\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010)\u001a\u00020\u0012H\u00d6\u0001J\t\u0010*\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\t\"\u0004\u0008\u0010\u0010\u000bR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\t\"\u0004\u0008\u001d\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\t\"\u0004\u0008\u001f\u0010\u000bR\u001a\u0010 \u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0014\"\u0004\u0008\"\u0010\u0016\u00a8\u0006+"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;",
        "",
        "url",
        "",
        "codeSeatId",
        "triggerId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "appId",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "getCodeSeatId",
        "setCodeSeatId",
        "gaid",
        "getGaid",
        "setGaid",
        "height",
        "",
        "getHeight",
        "()I",
        "setHeight",
        "(I)V",
        "isMonkey",
        "",
        "()Z",
        "setMonkey",
        "(Z)V",
        "getTriggerId",
        "setTriggerId",
        "getUrl",
        "setUrl",
        "width",
        "getWidth",
        "setWidth",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "api_release"
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
.field private appId:Ljava/lang/String;

.field private codeSeatId:Ljava/lang/String;

.field private gaid:Ljava/lang/String;

.field private height:I

.field private isMonkey:Z

.field private triggerId:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->codeSeatId:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->triggerId:Ljava/lang/String;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->gaid:Ljava/lang/String;

    sget-object p1, La7/c;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->appId:Ljava/lang/String;

    invoke-static {}, Lg7/a;->k()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->isMonkey:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->url:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->codeSeatId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->triggerId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->codeSeatId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->triggerId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->codeSeatId:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->codeSeatId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->triggerId:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->triggerId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodeSeatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->codeSeatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getGaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->height:I

    return v0
.end method

.method public final getTriggerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->triggerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->codeSeatId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->triggerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isMonkey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->isMonkey:Z

    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setCodeSeatId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->codeSeatId:Ljava/lang/String;

    return-void
.end method

.method public final setGaid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->gaid:Ljava/lang/String;

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->height:I

    return-void
.end method

.method public final setMonkey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->isMonkey:Z

    return-void
.end method

.method public final setTriggerId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->triggerId:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->url:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgentPageCurrentAd(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", codeSeatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->codeSeatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", triggerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->triggerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
