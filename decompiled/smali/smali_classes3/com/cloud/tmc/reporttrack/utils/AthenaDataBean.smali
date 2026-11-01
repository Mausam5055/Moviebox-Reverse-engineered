.class public final Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;",
        "",
        "athenaAppId",
        "",
        "event",
        "",
        "data",
        "Landroid/os/Bundle;",
        "(ILjava/lang/String;Landroid/os/Bundle;)V",
        "getAthenaAppId",
        "()I",
        "setAthenaAppId",
        "(I)V",
        "getData",
        "()Landroid/os/Bundle;",
        "setData",
        "(Landroid/os/Bundle;)V",
        "getEvent",
        "()Ljava/lang/String;",
        "setEvent",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "com.cloud.tmc.reporttrack"
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
.field private athenaAppId:I

.field private data:Landroid/os/Bundle;

.field private event:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->athenaAppId:I

    iput-object p2, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->event:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->data:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;ILjava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->athenaAppId:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->event:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->data:Landroid/os/Bundle;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->copy(ILjava/lang/String;Landroid/os/Bundle;)Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->athenaAppId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Landroid/os/Bundle;)Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;

    iget v1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->athenaAppId:I

    iget v3, p1, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->athenaAppId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->event:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->event:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->data:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->data:Landroid/os/Bundle;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAthenaAppId()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->athenaAppId:I

    return v0
.end method

.method public final getData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->event:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->athenaAppId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->event:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->data:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAthenaAppId(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->athenaAppId:I

    return-void
.end method

.method public final setData(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->data:Landroid/os/Bundle;

    return-void
.end method

.method public final setEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->event:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AthenaDataBean(athenaAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->athenaAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
