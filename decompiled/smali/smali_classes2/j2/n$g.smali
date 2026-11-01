.class Lj2/n$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/media/Spatializer;

.field private final b:Z

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj2/n;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lt1/m;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroidx/media3/common/util/a1;->K0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lj2/o;->a(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    move-result-object p1

    iput-object p1, p0, Lj2/n$g;->a:Landroid/media/Spatializer;

    invoke-static {p1}, Lj2/p;->a(Landroid/media/Spatializer;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lj2/n$g;->b:Z

    new-instance v0, Lj2/n$g$a;

    invoke-direct {v0, p0, p2}, Lj2/n$g$a;-><init>(Lj2/n$g;Lj2/n;)V

    iput-object v0, p0, Lj2/n$g;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lj2/n$g;->c:Landroid/os/Handler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/media3/exoplayer/audio/w0;

    invoke-direct {v1, p2}, Landroidx/media3/exoplayer/audio/w0;-><init>(Landroid/os/Handler;)V

    invoke-static {p1, v1, v0}, Lj2/q;->a(Landroid/media/Spatializer;Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void

    :cond_3
    :goto_1
    iput-object v0, p0, Lj2/n$g;->a:Landroid/media/Spatializer;

    iput-boolean v2, p0, Lj2/n$g;->b:Z

    iput-object v0, p0, Lj2/n$g;->c:Landroid/os/Handler;

    iput-object v0, p0, Lj2/n$g;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/c;Landroidx/media3/common/r;)Z
    .locals 4

    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p2, Landroidx/media3/common/r;->E:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v2, "audio/iamf"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Landroidx/media3/common/r;->E:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v2, "audio/ac4"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Landroidx/media3/common/r;->E:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_2

    const/16 v2, 0x15

    if-ne v0, v2, :cond_4

    :cond_2
    const/16 v0, 0x18

    goto :goto_0

    :cond_3
    iget v0, p2, Landroidx/media3/common/r;->E:I

    :cond_4
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a1;->M(I)I

    move-result v0

    if-nez v0, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget p2, p2, Landroidx/media3/common/r;->F:I

    if-eq p2, v1, :cond_6

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    :cond_6
    iget-object p2, p0, Lj2/n$g;->a:Landroid/media/Spatializer;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lj2/s;->a(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/media3/common/c;->a()Landroidx/media3/common/c$d;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/c$d;->a:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lj2/v;->a(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lj2/n$g;->a:Landroid/media/Spatializer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj2/s;->a(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object v0

    invoke-static {v0}, Lj2/t;->a(Landroid/media/Spatializer;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lj2/n$g;->a:Landroid/media/Spatializer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj2/s;->a(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object v0

    invoke-static {v0}, Lj2/u;->a(Landroid/media/Spatializer;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lj2/n$g;->b:Z

    return v0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lj2/n$g;->a:Landroid/media/Spatializer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lj2/n$g;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lj2/n$g;->c:Landroid/os/Handler;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lj2/r;->a(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    iget-object v0, p0, Lj2/n$g;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
