.class public final Landroidx/media3/exoplayer/ExoPlayer$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:J

.field B:J

.field C:Z

.field D:Z

.field E:Landroidx/media3/exoplayer/s3;

.field F:Z

.field G:Z

.field H:Ljava/lang/String;

.field I:Z

.field J:Landroidx/media3/exoplayer/m4;

.field final a:Landroid/content/Context;

.field b:Landroidx/media3/common/util/i;

.field c:J

.field d:Lcom/google/common/base/q;

.field e:Lcom/google/common/base/q;

.field f:Lcom/google/common/base/q;

.field g:Lcom/google/common/base/q;

.field h:Lcom/google/common/base/q;

.field i:Lcom/google/common/base/f;

.field j:Landroid/os/Looper;

.field k:I

.field l:Landroidx/media3/common/PriorityTaskManager;

.field m:Landroidx/media3/common/c;

.field n:Z

.field o:I

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field t:I

.field u:Z

.field v:Landroidx/media3/exoplayer/c4;

.field w:J

.field x:J

.field y:J

.field z:Landroidx/media3/exoplayer/t2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/s0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/s0;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/media3/exoplayer/t0;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/t0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$b;-><init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;)V
    .locals 8

    new-instance v4, Landroidx/media3/exoplayer/v0;

    invoke-direct {v4, p1}, Landroidx/media3/exoplayer/v0;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroidx/media3/exoplayer/w0;

    invoke-direct {v5}, Landroidx/media3/exoplayer/w0;-><init>()V

    new-instance v6, Landroidx/media3/exoplayer/x0;

    invoke-direct {v6, p1}, Landroidx/media3/exoplayer/x0;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroidx/media3/exoplayer/y0;

    invoke-direct {v7}, Landroidx/media3/exoplayer/y0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$b;-><init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/f;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->d:Lcom/google/common/base/q;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->e:Lcom/google/common/base/q;

    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->f:Lcom/google/common/base/q;

    iput-object p5, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->g:Lcom/google/common/base/q;

    iput-object p6, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->h:Lcom/google/common/base/q;

    iput-object p7, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->i:Lcom/google/common/base/f;

    invoke-static {}, Landroidx/media3/common/util/a1;->X()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->j:Landroid/os/Looper;

    sget-object p1, Landroidx/media3/common/c;->g:Landroidx/media3/common/c;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->m:Landroidx/media3/common/c;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->o:I

    const/4 p2, 0x1

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->s:I

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->t:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->u:Z

    sget-object p1, Landroidx/media3/exoplayer/c4;->g:Landroidx/media3/exoplayer/c4;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->v:Landroidx/media3/exoplayer/c4;

    const-wide/16 p3, 0x1388

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->w:J

    const-wide/16 p3, 0x3a98

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->x:J

    const-wide/16 p3, 0xbb8

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->y:J

    new-instance p1, Landroidx/media3/exoplayer/l$b;

    invoke-direct {p1}, Landroidx/media3/exoplayer/l$b;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/exoplayer/l$b;->a()Landroidx/media3/exoplayer/l;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->z:Landroidx/media3/exoplayer/t2;

    sget-object p1, Landroidx/media3/common/util/i;->a:Landroidx/media3/common/util/i;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->b:Landroidx/media3/common/util/i;

    const-wide/16 p3, 0x1f4

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->A:J

    const-wide/16 p3, 0x7d0

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->B:J

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->D:Z

    const-string p1, ""

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->H:Ljava/lang/String;

    const/16 p1, -0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->k:I

    new-instance p1, Landroidx/media3/exoplayer/p;

    invoke-direct {p1}, Landroidx/media3/exoplayer/p;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->J:Landroidx/media3/exoplayer/m4;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/b4;)Landroidx/media3/exoplayer/b4;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$b;->o(Landroidx/media3/exoplayer/b4;)Landroidx/media3/exoplayer/b4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Landroidx/media3/exoplayer/b4;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$b;->i(Landroid/content/Context;)Landroidx/media3/exoplayer/b4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$b;->j(Landroid/content/Context;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/u2;)Landroidx/media3/exoplayer/u2;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$b;->m(Landroidx/media3/exoplayer/u2;)Landroidx/media3/exoplayer/u2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/source/r$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$b;->n(Landroidx/media3/exoplayer/source/r$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/e;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$b;->l(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;)Lj2/e0;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$b;->k(Landroid/content/Context;)Lj2/e0;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic i(Landroid/content/Context;)Landroidx/media3/exoplayer/b4;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/o;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/o;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic j(Landroid/content/Context;)Landroidx/media3/exoplayer/source/r$a;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/source/i;

    new-instance v1, Ll2/m;

    invoke-direct {v1}, Ll2/m;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/i;-><init>(Landroid/content/Context;Ll2/x;)V

    return-object v0
.end method

.method private static synthetic k(Landroid/content/Context;)Lj2/e0;
    .locals 1

    new-instance v0, Lj2/n;

    invoke-direct {v0, p0}, Lj2/n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic l(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/e;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/j;->m(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/j;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic m(Landroidx/media3/exoplayer/u2;)Landroidx/media3/exoplayer/u2;
    .locals 0

    return-object p0
.end method

.method private static synthetic n(Landroidx/media3/exoplayer/source/r$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    return-object p0
.end method

.method private static synthetic o(Landroidx/media3/exoplayer/b4;)Landroidx/media3/exoplayer/b4;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public h()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->F:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->F:Z

    new-instance v0, Landroidx/media3/exoplayer/b2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/b2;-><init>(Landroidx/media3/exoplayer/ExoPlayer$b;Landroidx/media3/common/a0;)V

    return-object v0
.end method

.method public p(Landroidx/media3/exoplayer/u2;)Landroidx/media3/exoplayer/ExoPlayer$b;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/q0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/q0;-><init>(Landroidx/media3/exoplayer/u2;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->g:Lcom/google/common/base/q;

    return-object p0
.end method

.method public q(Landroidx/media3/exoplayer/source/r$a;)Landroidx/media3/exoplayer/ExoPlayer$b;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/r0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/r0;-><init>(Landroidx/media3/exoplayer/source/r$a;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->e:Lcom/google/common/base/q;

    return-object p0
.end method

.method public r(Landroidx/media3/exoplayer/b4;)Landroidx/media3/exoplayer/ExoPlayer$b;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/u0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/u0;-><init>(Landroidx/media3/exoplayer/b4;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$b;->d:Lcom/google/common/base/q;

    return-object p0
.end method
