.class public final Lcom/cloud/tmc/integration/model/ForegroundTime;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/ForegroundTime;",
        "",
        "()V",
        "endTime",
        "",
        "foregroundRandomId",
        "",
        "foregroundStartCount",
        "",
        "startTime",
        "addStartCount",
        "",
        "resetStartCount",
        "setEndTime",
        "Lcom/cloud/tmc/integration/model/ForegroundRangTime;",
        "setStartTime",
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
.field private endTime:J

.field private foregroundRandomId:Ljava/lang/String;

.field private foregroundStartCount:I

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/cloud/tmc/integration/utils/GenerateIdUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/GenerateIdUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/GenerateIdUtils;->generateRandomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/ForegroundTime;->foregroundRandomId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addStartCount()V
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/ForegroundTime;->foregroundStartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/integration/model/ForegroundTime;->foregroundStartCount:I

    return-void
.end method

.method public final resetStartCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/cloud/tmc/integration/model/ForegroundTime;->foregroundStartCount:I

    return-void
.end method

.method public final setEndTime()Lcom/cloud/tmc/integration/model/ForegroundRangTime;
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/tmc/integration/model/ForegroundTime;->endTime:J

    iget-wide v1, p0, Lcom/cloud/tmc/integration/model/ForegroundTime;->startTime:J

    sub-long v5, v3, v1

    new-instance v9, Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    iget v7, p0, Lcom/cloud/tmc/integration/model/ForegroundTime;->foregroundStartCount:I

    iget-object v8, p0, Lcom/cloud/tmc/integration/model/ForegroundTime;->foregroundRandomId:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;-><init>(JJJILjava/lang/String;)V

    return-object v9
.end method

.method public final setStartTime()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundTime;->startTime:J

    return-void
.end method
