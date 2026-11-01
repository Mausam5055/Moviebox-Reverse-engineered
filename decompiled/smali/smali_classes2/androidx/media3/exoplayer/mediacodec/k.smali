.class public final Landroidx/media3/exoplayer/mediacodec/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/t$b;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/common/base/q;

.field private final d:Lcom/google/common/base/q;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/k;->e:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/k;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/k;->b:Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/k;->c:Lcom/google/common/base/q;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/k;->d:Lcom/google/common/base/q;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/media3/exoplayer/mediacodec/k;-><init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/k;->b:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/k;->e:I

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/k;->f:Z

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/k;->c:Lcom/google/common/base/q;

    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/k;->d:Lcom/google/common/base/q;

    return-void
.end method

.method private c()Z
    .locals 4

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/k;->b:Landroid/content/Context;

    if-eqz v1, :cond_1

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.amazon.hardware.tv_screen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroidx/media3/exoplayer/mediacodec/t;
    .locals 3

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/k;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/k;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->c:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->t0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMCodecAdapterFactory"

    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/k;->c:Lcom/google/common/base/q;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/k;->d:Lcom/google/common/base/q;

    if-eqz v2, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/c$b;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/c$b;-><init>(Lcom/google/common/base/q;Lcom/google/common/base/q;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/c$b;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/mediacodec/c$b;-><init>(I)V

    move-object v0, v1

    :goto_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/k;->f:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/c$b;->e(Z)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/c$b;->d(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroidx/media3/exoplayer/mediacodec/c;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/r0$b;

    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/r0$b;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/r0$b;->a(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object p1

    return-object p1
.end method

.method public b()Landroidx/media3/exoplayer/mediacodec/k;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/k;->e:I

    return-object p0
.end method
