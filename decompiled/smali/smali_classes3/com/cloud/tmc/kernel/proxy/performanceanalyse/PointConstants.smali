.class public final Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointConstants;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointConstants;",
        "",
        "()V",
        "POINT_FOREGROUND_COST_TIME",
        "",
        "POINT_FOREGROUND_END_TIME",
        "POINT_FOREGROUND_RANDOM_ID",
        "POINT_FOREGROUND_START_COUNT",
        "POINT_FOREGROUND_START_TIME",
        "POINT_PAGE_PATH",
        "com.cloud.tmc.kernel"
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
.field public static final INSTANCE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointConstants;

.field public static final POINT_FOREGROUND_COST_TIME:Ljava/lang/String; = "foregroundTime"

.field public static final POINT_FOREGROUND_END_TIME:Ljava/lang/String; = "foregroundEndTime"

.field public static final POINT_FOREGROUND_RANDOM_ID:Ljava/lang/String; = "foregroundRandomId"

.field public static final POINT_FOREGROUND_START_COUNT:Ljava/lang/String; = "foregroundStartCount"

.field public static final POINT_FOREGROUND_START_TIME:Ljava/lang/String; = "foregroundStartTime"

.field public static final POINT_PAGE_PATH:Ljava/lang/String; = "page_path"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointConstants;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointConstants;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointConstants;->INSTANCE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
