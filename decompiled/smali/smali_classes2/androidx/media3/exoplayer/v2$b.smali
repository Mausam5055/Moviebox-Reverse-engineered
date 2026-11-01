.class public final Landroidx/media3/exoplayer/v2$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:F

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/v2$b;->a:J

    const v2, -0x800001

    iput v2, p0, Landroidx/media3/exoplayer/v2$b;->b:F

    iput-wide v0, p0, Landroidx/media3/exoplayer/v2$b;->c:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/v2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroidx/media3/exoplayer/v2;->a:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/v2$b;->a:J

    iget v0, p1, Landroidx/media3/exoplayer/v2;->b:F

    iput v0, p0, Landroidx/media3/exoplayer/v2$b;->b:F

    iget-wide v0, p1, Landroidx/media3/exoplayer/v2;->c:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/v2$b;->c:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/v2;Landroidx/media3/exoplayer/v2$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/v2$b;-><init>(Landroidx/media3/exoplayer/v2;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/v2$b;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/v2$b;->a:J

    return-wide v0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/v2$b;)F
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/v2$b;->b:F

    return p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/v2$b;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/v2$b;->c:J

    return-wide v0
.end method


# virtual methods
.method public d()Landroidx/media3/exoplayer/v2;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/v2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/v2;-><init>(Landroidx/media3/exoplayer/v2$b;Landroidx/media3/exoplayer/v2$a;)V

    return-object v0
.end method

.method public e(J)Landroidx/media3/exoplayer/v2$b;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/v2$b;->c:J

    return-object p0
.end method

.method public f(J)Landroidx/media3/exoplayer/v2$b;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/v2$b;->a:J

    return-object p0
.end method

.method public g(F)Landroidx/media3/exoplayer/v2$b;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const v0, -0x800001

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/v2$b;->b:F

    return-object p0
.end method
