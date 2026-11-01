.class public final Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;",
        "Ljava/io/Serializable;",
        "resourceId",
        "",
        "readProgress",
        "",
        "duration",
        "isSeries",
        "",
        "refreshItemAll",
        "<init>",
        "(Ljava/lang/String;JJZZ)V",
        "getResourceId",
        "()Ljava/lang/String;",
        "getReadProgress",
        "()J",
        "getDuration",
        "()Z",
        "getRefreshItemAll",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "FlowEvent_release"
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
.field private final duration:J

.field private final isSeries:Z

.field private final readProgress:J

.field private final refreshItemAll:Z

.field private final resourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZZ)V
    .locals 1

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    iput-wide p4, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    iput-boolean p6, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    iput-boolean p7, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    move-wide v3, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, p4

    :goto_1
    and-int/lit8 v0, p8, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, p6

    :goto_2
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v5, p7

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v3

    move-wide p6, v1

    move p8, v0

    move/from16 p9, v5

    invoke-direct/range {p2 .. p9}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;Ljava/lang/String;JJZZILjava/lang/Object;)Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-wide p2, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    :cond_2
    move-wide v2, p4

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-boolean p6, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    :cond_3
    move p9, p6

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p7, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    :cond_4
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-wide p6, v2

    move p8, p9

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->copy(Ljava/lang/String;JJZZ)Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;JJZZ)Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;
    .locals 9

    const-string v0, "resourceId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    move-object v1, v0

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    iget-object v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    iget-wide v5, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    iget-wide v5, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    iget-boolean v3, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    iget-boolean p1, p1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    return-wide v0
.end method

.method public final getReadProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    return-wide v0
.end method

.method public final getRefreshItemAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    return v0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSeries()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->resourceId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->readProgress:J

    iget-wide v3, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->duration:J

    iget-boolean v5, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries:Z

    iget-boolean v6, p0, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->refreshItemAll:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LocalVideoEvent(resourceId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", readProgress="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isSeries="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", refreshItemAll="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
