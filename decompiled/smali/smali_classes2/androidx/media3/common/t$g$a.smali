.class public final Landroidx/media3/common/t$g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/t$g$a;->a:J

    iput-wide v0, p0, Landroidx/media3/common/t$g$a;->b:J

    iput-wide v0, p0, Landroidx/media3/common/t$g$a;->c:J

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/t$g$a;->d:F

    iput v0, p0, Landroidx/media3/common/t$g$a;->e:F

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t$g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroidx/media3/common/t$g;->a:J

    iput-wide v0, p0, Landroidx/media3/common/t$g$a;->a:J

    iget-wide v0, p1, Landroidx/media3/common/t$g;->b:J

    iput-wide v0, p0, Landroidx/media3/common/t$g$a;->b:J

    iget-wide v0, p1, Landroidx/media3/common/t$g;->c:J

    iput-wide v0, p0, Landroidx/media3/common/t$g$a;->c:J

    iget v0, p1, Landroidx/media3/common/t$g;->d:F

    iput v0, p0, Landroidx/media3/common/t$g$a;->d:F

    iget p1, p1, Landroidx/media3/common/t$g;->e:F

    iput p1, p0, Landroidx/media3/common/t$g$a;->e:F

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t$g;Landroidx/media3/common/t$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/t$g$a;-><init>(Landroidx/media3/common/t$g;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/common/t$g$a;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/t$g$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Landroidx/media3/common/t$g$a;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/t$g$a;->b:J

    return-wide v0
.end method

.method static synthetic c(Landroidx/media3/common/t$g$a;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/t$g$a;->c:J

    return-wide v0
.end method

.method static synthetic d(Landroidx/media3/common/t$g$a;)F
    .locals 0

    iget p0, p0, Landroidx/media3/common/t$g$a;->d:F

    return p0
.end method

.method static synthetic e(Landroidx/media3/common/t$g$a;)F
    .locals 0

    iget p0, p0, Landroidx/media3/common/t$g$a;->e:F

    return p0
.end method


# virtual methods
.method public f()Landroidx/media3/common/t$g;
    .locals 2

    new-instance v0, Landroidx/media3/common/t$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/t$g;-><init>(Landroidx/media3/common/t$g$a;Landroidx/media3/common/t$a;)V

    return-object v0
.end method

.method public g(J)Landroidx/media3/common/t$g$a;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/t$g$a;->c:J

    return-object p0
.end method

.method public h(F)Landroidx/media3/common/t$g$a;
    .locals 0

    iput p1, p0, Landroidx/media3/common/t$g$a;->e:F

    return-object p0
.end method

.method public i(J)Landroidx/media3/common/t$g$a;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/t$g$a;->b:J

    return-object p0
.end method

.method public j(F)Landroidx/media3/common/t$g$a;
    .locals 0

    iput p1, p0, Landroidx/media3/common/t$g$a;->d:F

    return-object p0
.end method

.method public k(J)Landroidx/media3/common/t$g$a;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/t$g$a;->a:J

    return-object p0
.end method
