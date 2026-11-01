.class public final Lcom/cloud/tmc/fps/FpsConfig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/fps/FpsConfig;",
        "",
        "()V",
        "grayScale",
        "",
        "getGrayScale",
        "()F",
        "setGrayScale",
        "(F)V",
        "jankThreshold",
        "",
        "getJankThreshold",
        "()J",
        "setJankThreshold",
        "(J)V",
        "traceInterval",
        "getTraceInterval",
        "setTraceInterval",
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
.field public static final INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

.field private static grayScale:F

.field private static jankThreshold:J

.field private static traceInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/fps/FpsConfig;

    invoke-direct {v0}, Lcom/cloud/tmc/fps/FpsConfig;-><init>()V

    sput-object v0, Lcom/cloud/tmc/fps/FpsConfig;->INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

    const-wide/16 v0, 0xc8

    sput-wide v0, Lcom/cloud/tmc/fps/FpsConfig;->jankThreshold:J

    const-wide/16 v0, 0x32

    sput-wide v0, Lcom/cloud/tmc/fps/FpsConfig;->traceInterval:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGrayScale()F
    .locals 1

    sget v0, Lcom/cloud/tmc/fps/FpsConfig;->grayScale:F

    return v0
.end method

.method public final getJankThreshold()J
    .locals 2

    sget-wide v0, Lcom/cloud/tmc/fps/FpsConfig;->jankThreshold:J

    return-wide v0
.end method

.method public final getTraceInterval()J
    .locals 2

    sget-wide v0, Lcom/cloud/tmc/fps/FpsConfig;->traceInterval:J

    return-wide v0
.end method

.method public final setGrayScale(F)V
    .locals 0

    sput p1, Lcom/cloud/tmc/fps/FpsConfig;->grayScale:F

    return-void
.end method

.method public final setJankThreshold(J)V
    .locals 0

    sput-wide p1, Lcom/cloud/tmc/fps/FpsConfig;->jankThreshold:J

    return-void
.end method

.method public final setTraceInterval(J)V
    .locals 0

    sput-wide p1, Lcom/cloud/tmc/fps/FpsConfig;->traceInterval:J

    return-void
.end method
