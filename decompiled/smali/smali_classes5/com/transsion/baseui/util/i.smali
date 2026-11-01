.class public final Lcom/transsion/baseui/util/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/baseui/util/i;

.field private static b:J

.field private static c:J

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/baseui/util/i;

    invoke-direct {v0}, Lcom/transsion/baseui/util/i;-><init>()V

    sput-object v0, Lcom/transsion/baseui/util/i;->a:Lcom/transsion/baseui/util/i;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/baseui/util/i;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/baseui/util/i;->c:J

    sub-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/transsion/baseui/util/i;->c:J

    sget-wide v4, Lcom/transsion/baseui/util/i;->b:J

    sub-long v4, p1, v4

    div-long/2addr v4, v0

    sput-wide p1, Lcom/transsion/baseui/util/i;->b:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_1

    const-string p1, "0KB/s"

    return-object p1

    :cond_1
    const/4 p1, 0x1

    invoke-static {v4, v5, p1}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/s"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
