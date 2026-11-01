.class public final Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J3\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001J\t\u0010!\u001a\u00020\u0007H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "index",
        "",
        "showRedDot",
        "",
        "unreadIcon",
        "",
        "showUnreadIcon",
        "(IZLjava/lang/String;Z)V",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "getShowRedDot",
        "()Z",
        "setShowRedDot",
        "(Z)V",
        "getShowUnreadIcon",
        "setShowUnreadIcon",
        "getUnreadIcon",
        "()Ljava/lang/String;",
        "setUnreadIcon",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "com.cloud.tmc.integration"
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
.field private index:I

.field private showRedDot:Z

.field private showUnreadIcon:Z

.field private unreadIcon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;-><init>(IZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    iput-boolean p2, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    iput-object p3, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;-><init>(IZLjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;IZLjava/lang/String;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->copy(IZLjava/lang/String;Z)Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    return v0
.end method

.method public final copy(IZLjava/lang/String;Z)Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;-><init>(IZLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    iget v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    iget v3, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    return v0
.end method

.method public final getShowRedDot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    return v0
.end method

.method public final getShowUnreadIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    return v0
.end method

.method public final getUnreadIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    return-void
.end method

.method public final setShowRedDot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    return-void
.end method

.method public final setShowUnreadIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    return-void
.end method

.method public final setUnreadIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TabBarRedDotMessage(index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", showRedDot="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", unreadIcon="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", showUnreadIcon="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
