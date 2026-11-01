.class public Lcom/cloud/tmc/integration/utils/FastClickUtil;
.super Ljava/lang/Object;


# static fields
.field private static final DOUBLE_DEVIATE_TIME:J = 0x190L

.field private static mLastChickTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/cloud/tmc/integration/utils/FastClickUtil;->mLastChickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    sput-wide v0, Lcom/cloud/tmc/integration/utils/FastClickUtil;->mLastChickTime:J

    return v5

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    sput-wide v0, Lcom/cloud/tmc/integration/utils/FastClickUtil;->mLastChickTime:J

    return v5

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
