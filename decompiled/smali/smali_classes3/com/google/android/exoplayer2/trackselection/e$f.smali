.class Lcom/google/android/exoplayer2/trackselection/e$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/media/Spatializer;

.field private final b:Z

.field private c:Landroid/os/Handler;

.field private d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# direct methods
.method private constructor <init>(Landroid/media/Spatializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->a:Landroid/media/Spatializer;

    invoke-static {p1}, Lj2/p;->a(Landroid/media/Spatializer;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->b:Z

    return-void
.end method

.method public static g(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/e$f;
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/e$f;

    invoke-static {p0}, Lj2/o;->a(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/e$f;-><init>(Landroid/media/Spatializer;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/o1;)Z
    .locals 3

    iget-object v0, p2, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/google/android/exoplayer2/o1;->y:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/google/android/exoplayer2/o1;->y:I

    :goto_0
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->G(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget p2, p2, Lcom/google/android/exoplayer2/o1;->z:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->a:Landroid/media/Spatializer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/e;->b()Lcom/google/android/exoplayer2/audio/e$d;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/e$d;->a:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lj2/v;->a(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/google/android/exoplayer2/trackselection/e;Landroid/os/Looper;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/e$f$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/trackselection/e$f$a;-><init>(Lcom/google/android/exoplayer2/trackselection/e$f;Lcom/google/android/exoplayer2/trackselection/e;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->a:Landroid/media/Spatializer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/audio/w0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/w0;-><init>(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-static {p2, v0, p1}, Lj2/q;->a(Landroid/media/Spatializer;Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->a:Landroid/media/Spatializer;

    invoke-static {v0}, Lj2/t;->a(Landroid/media/Spatializer;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->a:Landroid/media/Spatializer;

    invoke-static {v0}, Lj2/u;->a(Landroid/media/Spatializer;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->b:Z

    return v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->a:Landroid/media/Spatializer;

    invoke-static {v1, v0}, Lj2/r;->a(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->c:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->c:Landroid/os/Handler;

    iput-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    :cond_1
    :goto_0
    return-void
.end method
