.class public final Lw1/f;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Landroidx/media3/datasource/a;

.field private final b:Lw1/h;

.field private final c:[B

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a;Lw1/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw1/f;->d:Z

    iput-boolean v0, p0, Lw1/f;->e:Z

    iput-object p1, p0, Lw1/f;->a:Landroidx/media3/datasource/a;

    iput-object p2, p0, Lw1/f;->b:Lw1/h;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lw1/f;->c:[B

    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lw1/f;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lw1/f;->a:Landroidx/media3/datasource/a;

    iget-object v1, p0, Lw1/f;->b:Lw1/h;

    invoke-interface {v0, v1}, Landroidx/media3/datasource/a;->a(Lw1/h;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw1/f;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lw1/f;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lw1/f;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw1/f;->e:Z

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lw1/f;->d()V

    return-void
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Lw1/f;->c:[B

    invoke-virtual {p0, v0}, Lw1/f;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw1/f;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lw1/f;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    iget-boolean v0, p0, Lw1/f;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-direct {p0}, Lw1/f;->d()V

    iget-object v0, p0, Lw1/f;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/j;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-wide p2, p0, Lw1/f;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lw1/f;->f:J

    return p1
.end method
