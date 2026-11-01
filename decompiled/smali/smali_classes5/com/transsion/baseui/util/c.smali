.class public final Lcom/transsion/baseui/util/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/baseui/util/c;

.field private static b:J

.field private static c:I

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/baseui/util/c;

    invoke-direct {v0}, Lcom/transsion/baseui/util/c;-><init>()V

    sput-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/baseui/util/c;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJ)Z
    .locals 6

    sget v0, Lcom/transsion/baseui/util/c;->c:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    sput p1, Lcom/transsion/baseui/util/c;->c:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sput-wide p1, Lcom/transsion/baseui/util/c;->b:J

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/transsion/baseui/util/c;->b:J

    sub-long v4, v2, v4

    cmp-long p2, v4, p2

    if-gtz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    sput p1, Lcom/transsion/baseui/util/c;->c:I

    sput-wide v2, Lcom/transsion/baseui/util/c;->b:J

    return v1
.end method
