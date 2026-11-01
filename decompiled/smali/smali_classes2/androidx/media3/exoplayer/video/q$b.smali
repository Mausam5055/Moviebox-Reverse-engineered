.class public final Landroidx/media3/exoplayer/video/q$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/video/u;

.field private c:Landroidx/media3/common/k0$a;

.field private d:Landroidx/media3/common/c0$a;

.field private e:Ljava/util/List;

.field private f:Landroidx/media3/common/j0;

.field private g:Landroidx/media3/common/util/i;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/q$b;->b:Landroidx/media3/exoplayer/video/u;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->e:Ljava/util/List;

    sget-object p1, Landroidx/media3/common/j0;->a:Landroidx/media3/common/j0;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->f:Landroidx/media3/common/j0;

    sget-object p1, Landroidx/media3/common/util/i;->a:Landroidx/media3/common/util/i;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->g:Landroidx/media3/common/util/i;

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/video/q$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/c0$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->d:Landroidx/media3/common/c0$a;

    return-object p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/video/q$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/j0;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->f:Landroidx/media3/common/j0;

    return-object p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/util/i;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->g:Landroidx/media3/common/util/i;

    return-object p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/exoplayer/video/u;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->b:Landroidx/media3/exoplayer/video/u;

    return-object p0
.end method

.method static synthetic g(Landroidx/media3/exoplayer/video/q$b;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/q$b;->h:Z

    return p0
.end method


# virtual methods
.method public h()Landroidx/media3/exoplayer/video/q;
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/q$b;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$b;->d:Landroidx/media3/common/c0$a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$b;->c:Landroidx/media3/common/k0$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/video/q$e;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/video/q$e;-><init>(Landroidx/media3/exoplayer/video/q$a;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q$b;->c:Landroidx/media3/common/k0$a;

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/video/q$f;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/q$b;->c:Landroidx/media3/common/k0$a;

    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/video/q$f;-><init>(Landroidx/media3/common/k0$a;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/q$b;->d:Landroidx/media3/common/c0$a;

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/video/q;

    invoke-direct {v0, p0, v2}, Landroidx/media3/exoplayer/video/q;-><init>(Landroidx/media3/exoplayer/video/q$b;Landroidx/media3/exoplayer/video/q$a;)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/q$b;->i:Z

    return-object v0
.end method

.method public i(Landroidx/media3/common/util/i;)Landroidx/media3/exoplayer/video/q$b;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->g:Landroidx/media3/common/util/i;

    return-object p0
.end method
