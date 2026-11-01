.class public final Lht/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lht/c;

.field private static b:J

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lht/c;

    invoke-direct {v0}, Lht/c;-><init>()V

    sput-object v0, Lht/c;->a:Lht/c;

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

    sget v0, Lht/c;->c:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    sput p1, Lht/c;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lht/c;->b:J

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lht/c;->b:J

    sub-long/2addr v2, v4

    cmp-long p2, v2, p2

    if-gtz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    sput p1, Lht/c;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lht/c;->b:J

    return v1
.end method
