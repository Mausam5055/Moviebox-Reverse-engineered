.class public final Landroidx/media3/common/t$d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/common/t$d$a;->b:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroidx/media3/common/t$d;->b:J

    iput-wide v0, p0, Landroidx/media3/common/t$d$a;->a:J

    iget-wide v0, p1, Landroidx/media3/common/t$d;->d:J

    iput-wide v0, p0, Landroidx/media3/common/t$d$a;->b:J

    iget-boolean v0, p1, Landroidx/media3/common/t$d;->e:Z

    iput-boolean v0, p0, Landroidx/media3/common/t$d$a;->c:Z

    iget-boolean v0, p1, Landroidx/media3/common/t$d;->f:Z

    iput-boolean v0, p0, Landroidx/media3/common/t$d$a;->d:Z

    iget-boolean p1, p1, Landroidx/media3/common/t$d;->g:Z

    iput-boolean p1, p0, Landroidx/media3/common/t$d$a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t$d;Landroidx/media3/common/t$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/t$d$a;-><init>(Landroidx/media3/common/t$d;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/common/t$d$a;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/t$d$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Landroidx/media3/common/t$d$a;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/t$d$a;->b:J

    return-wide v0
.end method

.method static synthetic c(Landroidx/media3/common/t$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/t$d$a;->c:Z

    return p0
.end method

.method static synthetic d(Landroidx/media3/common/t$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/t$d$a;->d:Z

    return p0
.end method

.method static synthetic e(Landroidx/media3/common/t$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/t$d$a;->e:Z

    return p0
.end method


# virtual methods
.method public f()Landroidx/media3/common/t$d;
    .locals 2

    new-instance v0, Landroidx/media3/common/t$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/t$d;-><init>(Landroidx/media3/common/t$d$a;Landroidx/media3/common/t$a;)V

    return-object v0
.end method

.method public g()Landroidx/media3/common/t$e;
    .locals 2

    new-instance v0, Landroidx/media3/common/t$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/t$e;-><init>(Landroidx/media3/common/t$d$a;Landroidx/media3/common/t$a;)V

    return-object v0
.end method
