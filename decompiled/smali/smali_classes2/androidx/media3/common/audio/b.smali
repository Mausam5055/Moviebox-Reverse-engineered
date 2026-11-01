.class public abstract Landroidx/media3/common/audio/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/audio/AudioProcessor;


# instance fields
.field protected b:Landroidx/media3/common/audio/AudioProcessor$a;

.field protected c:Landroidx/media3/common/audio/AudioProcessor$a;

.field private d:Landroidx/media3/common/audio/AudioProcessor$a;

.field private e:Landroidx/media3/common/audio/AudioProcessor$a;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->g:Ljava/nio/ByteBuffer;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->d:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->b:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->c:Landroidx/media3/common/audio/AudioProcessor$a;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/audio/AudioProcessor$a;)Landroidx/media3/common/audio/AudioProcessor$a;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/audio/b;->d:Landroidx/media3/common/audio/AudioProcessor$a;

    invoke-virtual {p0, p1}, Landroidx/media3/common/audio/b;->c(Landroidx/media3/common/audio/AudioProcessor$a;)Landroidx/media3/common/audio/AudioProcessor$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/b;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    invoke-virtual {p0}, Landroidx/media3/common/audio/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/common/audio/b;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    :goto_0
    return-object p1
.end method

.method protected final b()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/audio/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method protected c(Landroidx/media3/common/audio/AudioProcessor$a;)Landroidx/media3/common/audio/AudioProcessor$a;
    .locals 0

    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    return-object p1
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 1

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->g:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/audio/b;->h:Z

    iget-object v0, p0, Landroidx/media3/common/audio/b;->d:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->b:Landroidx/media3/common/audio/AudioProcessor$a;

    iget-object v0, p0, Landroidx/media3/common/audio/b;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->c:Landroidx/media3/common/audio/AudioProcessor$a;

    invoke-virtual {p0}, Landroidx/media3/common/audio/b;->d()V

    return-void
.end method

.method protected final g(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/audio/b;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/b;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/common/audio/b;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Landroidx/media3/common/audio/b;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Landroidx/media3/common/audio/b;->g:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/audio/b;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/common/audio/b;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/audio/b;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/audio/b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/b;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final queueEndOfStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/audio/b;->h:Z

    invoke-virtual {p0}, Landroidx/media3/common/audio/b;->e()V

    return-void
.end method

.method public final reset()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/audio/b;->flush()V

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->f:Ljava/nio/ByteBuffer;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->d:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->b:Landroidx/media3/common/audio/AudioProcessor$a;

    iput-object v0, p0, Landroidx/media3/common/audio/b;->c:Landroidx/media3/common/audio/AudioProcessor$a;

    invoke-virtual {p0}, Landroidx/media3/common/audio/b;->f()V

    return-void
.end method
