.class public final Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/utils/PopWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PopWindowData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001d\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\tH\u00c6\u0003J\t\u0010%\u001a\u00020\u000bH\u00c6\u0003J;\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\'\u001a\u00020\u000b2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d6\u0003J\t\u0010*\u001a\u00020\u0007H\u00d6\u0001J\t\u0010+\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006,"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "appId",
        "",
        "delayTime",
        "",
        "priority",
        "",
        "popWindowController",
        "Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;",
        "ignoreInterval",
        "",
        "(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "getDelayTime",
        "()J",
        "setDelayTime",
        "(J)V",
        "getIgnoreInterval",
        "()Z",
        "setIgnoreInterval",
        "(Z)V",
        "getPopWindowController",
        "()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;",
        "setPopWindowController",
        "(Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;)V",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
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
.field private appId:Ljava/lang/String;

.field private delayTime:J

.field private ignoreInterval:Z

.field private popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

.field private priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popWindowController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    iput p4, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    iput-boolean p6, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;-><init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p4, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    :cond_2
    move p8, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p6, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    :cond_4
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move p6, p8

    move-object p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->copy(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    return v0
.end method

.method public final component4()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;
    .locals 8

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popWindowController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;-><init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    iget-wide v5, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    iget v3, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDelayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    return-wide v0
.end method

.method public final getIgnoreInterval()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    return v0
.end method

.method public final getPopWindowController()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setDelayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    return-void
.end method

.method public final setIgnoreInterval(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    return-void
.end method

.method public final setPopWindowController(Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    iget v3, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    iget-boolean v5, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PopWindowData(appId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", delayTime="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", popWindowController="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ignoreInterval="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
