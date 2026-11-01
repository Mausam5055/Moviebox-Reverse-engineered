.class public final Lcom/cloud/tmc/fps/FpsManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/tmc/fps/FpsManager;",
        "",
        "()V",
        "recording",
        "",
        "record",
        "",
        "saveConfig",
        "config",
        "Lcom/cloud/tmc/fps/data/ConfigData;",
        "stop",
        "com.cloud.tmc.minifps"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/fps/FpsManager;

.field private static recording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/fps/FpsManager;

    invoke-direct {v0}, Lcom/cloud/tmc/fps/FpsManager;-><init>()V

    sput-object v0, Lcom/cloud/tmc/fps/FpsManager;->INSTANCE:Lcom/cloud/tmc/fps/FpsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final record()V
    .locals 3

    sget-boolean v0, Lcom/cloud/tmc/fps/FpsManager;->recording:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cloud/tmc/fps/FpsManager;->recording:Z

    sget-object v1, Lcom/cloud/tmc/fps/record/RecordImp;->INSTANCE:Lcom/cloud/tmc/fps/record/RecordImp;

    new-instance v2, Lcom/cloud/tmc/fps/ReportManager;

    invoke-direct {v2}, Lcom/cloud/tmc/fps/ReportManager;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/fps/record/RecordImp;->addFrameListener(Lcom/cloud/tmc/fps/record/IRecord$FrameListener;)V

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/fps/record/RecordImp;->recordFps(Z)V

    return-void
.end method

.method public final saveConfig(Lcom/cloud/tmc/fps/data/ConfigData;)V
    .locals 5

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/fps/FpsConfig;->INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

    invoke-virtual {p1}, Lcom/cloud/tmc/fps/data/ConfigData;->getGrayScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/fps/FpsConfig;->setGrayScale(F)V

    invoke-virtual {p1}, Lcom/cloud/tmc/fps/data/ConfigData;->getJankThreshold()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/fps/FpsConfig;->setJankThreshold(J)V

    invoke-virtual {p1}, Lcom/cloud/tmc/fps/data/ConfigData;->getTraceInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/fps/FpsConfig;->setTraceInterval(J)V

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/cloud/tmc/fps/FpsConfig;->getGrayScale()F

    move-result p1

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/fps/FpsConfig;->getGrayScale()F

    move-result p1

    float-to-double v3, p1

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/fps/FpsManager;->record()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/fps/FpsManager;->stop()V

    :goto_1
    return-void
.end method

.method public final stop()V
    .locals 2

    sget-boolean v0, Lcom/cloud/tmc/fps/FpsManager;->recording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cloud/tmc/fps/FpsManager;->recording:Z

    sget-object v1, Lcom/cloud/tmc/fps/record/RecordImp;->INSTANCE:Lcom/cloud/tmc/fps/record/RecordImp;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/fps/record/RecordImp;->recordFps(Z)V

    return-void
.end method
