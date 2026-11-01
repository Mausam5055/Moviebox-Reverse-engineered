.class public final Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/render/IPageChainCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnPageFinishedData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "url",
        "",
        "fcpCurrentTimeMillis",
        "",
        "(Ljava/lang/String;J)V",
        "getFcpCurrentTimeMillis",
        "()J",
        "setFcpCurrentTimeMillis",
        "(J)V",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "com.cloud.tmc.render"
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
.field private fcpCurrentTimeMillis:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->fcpCurrentTimeMillis:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;Ljava/lang/String;JILjava/lang/Object;)Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->url:Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->fcpCurrentTimeMillis:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->copy(Ljava/lang/String;J)Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->fcpCurrentTimeMillis:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;J)Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;

    iget-object v1, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->fcpCurrentTimeMillis:J

    iget-wide v5, p1, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->fcpCurrentTimeMillis:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFcpCurrentTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->fcpCurrentTimeMillis:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->fcpCurrentTimeMillis:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setFcpCurrentTimeMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->fcpCurrentTimeMillis:J

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnPageFinishedData(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fcpCurrentTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->fcpCurrentTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
