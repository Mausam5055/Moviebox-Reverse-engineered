.class public final Lcom/google/android/exoplayer2/ExoPlayer$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:Z

.field B:Z

.field final a:Landroid/content/Context;

.field b:Lcom/google/android/exoplayer2/util/e;

.field c:J

.field d:Lcom/google/common/base/q;

.field e:Lcom/google/common/base/q;

.field f:Lcom/google/common/base/q;

.field g:Lcom/google/common/base/q;

.field h:Lcom/google/common/base/q;

.field i:Lcom/google/common/base/f;

.field j:Landroid/os/Looper;

.field k:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field l:Lcom/google/android/exoplayer2/audio/e;

.field m:Z

.field n:I

.field o:Z

.field p:Z

.field q:I

.field r:I

.field s:Z

.field t:Lcom/google/android/exoplayer2/c3;

.field u:J

.field v:J

.field w:Lcom/google/android/exoplayer2/s1;

.field x:J

.field y:J

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/t;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/t;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/u;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/u;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$b;-><init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;)V
    .locals 8

    new-instance v4, Lcom/google/android/exoplayer2/w;

    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/w;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/exoplayer2/x;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/x;-><init>()V

    new-instance v6, Lcom/google/android/exoplayer2/y;

    invoke-direct {v6, p1}, Lcom/google/android/exoplayer2/y;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/exoplayer2/z;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/z;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ExoPlayer$b;-><init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/f;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->d:Lcom/google/common/base/q;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->e:Lcom/google/common/base/q;

    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->f:Lcom/google/common/base/q;

    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->g:Lcom/google/common/base/q;

    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->h:Lcom/google/common/base/q;

    iput-object p7, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->i:Lcom/google/common/base/f;

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->Q()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->j:Landroid/os/Looper;

    sget-object p1, Lcom/google/android/exoplayer2/audio/e;->g:Lcom/google/android/exoplayer2/audio/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->l:Lcom/google/android/exoplayer2/audio/e;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->n:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->q:I

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->r:I

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->s:Z

    sget-object p1, Lcom/google/android/exoplayer2/c3;->g:Lcom/google/android/exoplayer2/c3;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->t:Lcom/google/android/exoplayer2/c3;

    const-wide/16 p3, 0x1388

    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->u:J

    const-wide/16 p3, 0x3a98

    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->v:J

    new-instance p1, Lcom/google/android/exoplayer2/m$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/m$b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/m$b;->a()Lcom/google/android/exoplayer2/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->w:Lcom/google/android/exoplayer2/s1;

    sget-object p1, Lcom/google/android/exoplayer2/util/e;->a:Lcom/google/android/exoplayer2/util/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->b:Lcom/google/android/exoplayer2/util/e;

    const-wide/16 p3, 0x1f4

    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->x:J

    const-wide/16 p3, 0x7d0

    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->y:J

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->A:Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/google/android/exoplayer2/b3;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->g(Landroid/content/Context;)Lcom/google/android/exoplayer2/b3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/b3;)Lcom/google/android/exoplayer2/b3;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->k(Lcom/google/android/exoplayer2/b3;)Lcom/google/android/exoplayer2/b3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->h(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/e;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->j(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;)Lla/q;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->i(Landroid/content/Context;)Lla/q;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic g(Landroid/content/Context;)Lcom/google/android/exoplayer2/b3;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/p;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/p;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic h(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/i;

    new-instance v1, Lg9/i;

    invoke-direct {v1}, Lg9/i;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/i;-><init>(Landroid/content/Context;Lg9/r;)V

    return-object v0
.end method

.method private static synthetic i(Landroid/content/Context;)Lla/q;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/e;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic j(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/e;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/q;->m(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/q;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic k(Lcom/google/android/exoplayer2/b3;)Lcom/google/android/exoplayer2/b3;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->B:Z

    new-instance v0, Lcom/google/android/exoplayer2/z0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/z0;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$b;Lcom/google/android/exoplayer2/o2;)V

    return-object v0
.end method

.method public l(Lcom/google/android/exoplayer2/b3;)Lcom/google/android/exoplayer2/ExoPlayer$b;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->B:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    new-instance v0, Lcom/google/android/exoplayer2/v;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/v;-><init>(Lcom/google/android/exoplayer2/b3;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->d:Lcom/google/common/base/q;

    return-object p0
.end method
