.class public final Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J-\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "topPopover",
        "Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;",
        "bottomPopover",
        "exitReminder",
        "(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)V",
        "getBottomPopover",
        "()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;",
        "getExitReminder",
        "getTopPopover",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final bottomPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

.field private final exitReminder:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

.field private final topPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->topPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iput-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->bottomPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iput-object p3, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->exitReminder:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;ILjava/lang/Object;)Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->topPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->bottomPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->exitReminder:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->copy(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->topPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    return-object v0
.end method

.method public final component2()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->bottomPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    return-object v0
.end method

.method public final component3()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->exitReminder:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    return-object v0
.end method

.method public final copy(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;-><init>(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->topPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->topPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->bottomPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->bottomPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->exitReminder:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->exitReminder:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBottomPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->bottomPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    return-object v0
.end method

.method public final getExitReminder()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->exitReminder:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    return-object v0
.end method

.method public final getTopPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->topPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->topPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->bottomPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->exitReminder:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->topPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->bottomPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->exitReminder:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiniAppAutoOperationConfig(topPopover="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bottomPopover="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", exitReminder="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
