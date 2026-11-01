.class public final Lcom/transsion/baselib/db/consume/ConsumeBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\tH\u00c6\u0003J=\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u00d6\u0003J\t\u0010&\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\'\u001a\u00020\tH\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\r\"\u0004\u0008\u0017\u0010\u000fR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/baselib/db/consume/ConsumeBean;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "updateTimeStamp",
        "",
        "dataType",
        "appVersion",
        "consumeJson",
        "",
        "<init>",
        "(IJIILjava/lang/String;)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getUpdateTimeStamp",
        "()J",
        "setUpdateTimeStamp",
        "(J)V",
        "getDataType",
        "setDataType",
        "getAppVersion",
        "setAppVersion",
        "getConsumeJson",
        "()Ljava/lang/String;",
        "setConsumeJson",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "BaseLib_psRelease"
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
.field private appVersion:I

.field private consumeJson:Ljava/lang/String;

.field private dataType:I

.field private id:I

.field private updateTimeStamp:J


# direct methods
.method public constructor <init>(IJIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    iput-wide p2, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    iput p4, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    iput p5, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    iput-object p6, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IJIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_1

    const-string p6, ""

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/baselib/db/consume/ConsumeBean;-><init>(IJIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/consume/ConsumeBean;IJIILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/baselib/db/consume/ConsumeBean;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p4, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    :cond_2
    move p8, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p5, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    :cond_3
    move v2, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    :cond_4
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    move p6, p8

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/transsion/baselib/db/consume/ConsumeBean;->copy(IJIILjava/lang/String;)Lcom/transsion/baselib/db/consume/ConsumeBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IJIILjava/lang/String;)Lcom/transsion/baselib/db/consume/ConsumeBean;
    .locals 8

    new-instance v7, Lcom/transsion/baselib/db/consume/ConsumeBean;

    move-object v0, v7

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/baselib/db/consume/ConsumeBean;-><init>(IJIILjava/lang/String;)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/baselib/db/consume/ConsumeBean;

    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    iget v3, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    iget-wide v5, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    iget v3, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    iget v3, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAppVersion()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    return v0
.end method

.method public final getConsumeJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    return v0
.end method

.method public final getUpdateTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAppVersion(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    return-void
.end method

.method public final setConsumeJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    return-void
.end method

.method public final setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    return-void
.end method

.method public final setUpdateTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->id:I

    iget-wide v1, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->updateTimeStamp:J

    iget v3, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->dataType:I

    iget v4, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->appVersion:I

    iget-object v5, p0, Lcom/transsion/baselib/db/consume/ConsumeBean;->consumeJson:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConsumeBean(id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", updateTimeStamp="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", dataType="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", appVersion="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", consumeJson="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
