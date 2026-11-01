.class public Lxf/j;
.super Ljava/io/FilterOutputStream;


# static fields
.field public static final m:[B

.field private static final n:[B


# instance fields
.field private final a:Ljava/util/HashSet;

.field private final b:Z

.field private c:[B

.field private d:I

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:Lxf/h;

.field private g:J

.field private h:[B

.field private i:[B

.field private j:Z

.field private final k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lxf/j;->m:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lxf/j;->n:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxf/j;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lxf/j;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lxf/j;->a:Ljava/util/HashSet;

    sget-object p1, Lxf/j;->m:[B

    iput-object p1, p0, Lxf/j;->c:[B

    const/16 p1, 0x8

    iput p1, p0, Lxf/j;->d:I

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lxf/j;->g:J

    const/4 p1, 0x0

    iput p1, p0, Lxf/j;->l:I

    iput-boolean p2, p0, Lxf/j;->b:Z

    iput p3, p0, Lxf/j;->k:I

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(Ljava/lang/String;[B)V
    .locals 2

    array-length v0, p2

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " too long in UTF-8:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m(Lxf/h;J)I
    .locals 4

    invoke-virtual {p1}, Lxf/h;->f()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lxf/j;->k:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    int-to-long v2, p1

    rem-long/2addr p2, v2

    sub-long/2addr v0, p2

    int-to-long p1, p1

    rem-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private n(Ljava/io/OutputStream;J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    :goto_0
    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    cmp-long p2, p2, v0

    if-lez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    move-wide p2, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static q(Ljava/io/OutputStream;I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return p1
.end method

.method static r(Ljava/io/OutputStream;J)J
    .locals 2

    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxf/j;->l()V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    :cond_0
    return-void
.end method

.method public k()V
    .locals 9

    invoke-direct {p0}, Lxf/j;->d()V

    iget-object v0, p0, Lxf/j;->f:Lxf/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lxf/h;->f()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v1, 0x8074b50

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lxf/j;->f:Lxf/h;

    iget-wide v1, v1, Lxf/h;->c:J

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lxf/j;->f:Lxf/h;

    iget-wide v1, v1, Lxf/h;->d:J

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lxf/j;->f:Lxf/h;

    iget-wide v1, v1, Lxf/h;->e:J

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    const-wide/16 v0, 0x2e

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1e

    :goto_0
    iget-object v2, p0, Lxf/j;->f:Lxf/h;

    invoke-virtual {v2}, Lxf/h;->f()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    or-int/lit16 v2, v2, 0x800

    iget-object v5, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v6, 0x2014b50    # 1.6619997E-316

    invoke-static {v5, v6, v7}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v5, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v5, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v5, v6}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v5, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v5, v2}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lxf/j;->f:Lxf/h;

    invoke-virtual {v5}, Lxf/h;->f()I

    move-result v5

    invoke-static {v2, v5}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lxf/j;->f:Lxf/h;

    iget v5, v5, Lxf/h;->g:I

    invoke-static {v2, v5}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lxf/j;->f:Lxf/h;

    iget v5, v5, Lxf/h;->h:I

    invoke-static {v2, v5}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lxf/j;->f:Lxf/h;

    iget-wide v5, v5, Lxf/h;->c:J

    invoke-static {v2, v5, v6}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Lxf/j;->f:Lxf/h;

    invoke-virtual {v2}, Lxf/h;->f()I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lxf/j;->f:Lxf/h;

    invoke-virtual {v2}, Lxf/h;->b()J

    move-result-wide v2

    :goto_2
    add-long/2addr v0, v2

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lxf/j;->f:Lxf/h;

    invoke-virtual {v2}, Lxf/h;->i()J

    move-result-wide v2

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lxf/j;->f:Lxf/h;

    invoke-virtual {v3}, Lxf/h;->b()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lxf/j;->f:Lxf/h;

    invoke-virtual {v3}, Lxf/h;->i()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lxf/j;->h:[B

    array-length v3, v3

    invoke-static {v2, v3}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lxf/j;->f:Lxf/h;

    iget-object v2, v2, Lxf/h;->i:[B

    if-eqz v2, :cond_4

    iget-object v3, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    array-length v2, v2

    invoke-static {v3, v2}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v2, v4}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    :goto_4
    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lxf/j;->i:[B

    array-length v3, v3

    invoke-static {v2, v3}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v2, v4}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v2, v4}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v5, 0x0

    invoke-static {v2, v5, v6}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lxf/j;->f:Lxf/h;

    iget-wide v5, v3, Lxf/h;->j:J

    invoke-static {v2, v5, v6}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lxf/j;->h:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x0

    iput-object v2, p0, Lxf/j;->h:[B

    iget-object v3, p0, Lxf/j;->f:Lxf/h;

    iget-object v3, v3, Lxf/h;->i:[B

    if-eqz v3, :cond_5

    iget-object v5, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_5
    iget-wide v5, p0, Lxf/j;->g:J

    iget v3, p0, Lxf/j;->l:I

    int-to-long v7, v3

    add-long/2addr v0, v7

    add-long/2addr v5, v0

    iput-wide v5, p0, Lxf/j;->g:J

    iput v4, p0, Lxf/j;->l:I

    iget-object v0, p0, Lxf/j;->i:[B

    array-length v1, v0

    if-lez v1, :cond_6

    iget-object v1, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lxf/j;->m:[B

    iput-object v0, p0, Lxf/j;->i:[B

    :cond_6
    iput-object v2, p0, Lxf/j;->f:Lxf/h;

    return-void
.end method

.method public l()V
    .locals 5

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lxf/j;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lxf/j;->f:Lxf/h;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lxf/j;->k()V

    :cond_1
    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v2, 0x6054b50

    invoke-static {v1, v2, v3}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v1, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v1, v2}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-boolean v1, p0, Lxf/j;->j:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    const v1, 0xffff

    invoke-static {v0, v1}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, v1}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lxf/j;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lxf/j;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-wide v1, p0, Lxf/j;->g:J

    iget v3, p0, Lxf/j;->l:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    :goto_0
    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lxf/j;->c:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lxf/j;->c:[B

    array-length v1, v0

    if-lez v1, :cond_3

    iget-object v1, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    iget-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lxf/j;->e:Ljava/io/ByteArrayOutputStream;

    return-void

    :cond_4
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "No entries"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(Lxf/h;)V
    .locals 5

    iget-object v0, p0, Lxf/j;->f:Lxf/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxf/j;->k()V

    :cond_0
    invoke-virtual {p1}, Lxf/h;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lxf/j;->d:I

    :cond_1
    if-nez v0, :cond_7

    invoke-virtual {p1}, Lxf/h;->b()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lxf/h;->i()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lxf/h;->j(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lxf/h;->i()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lxf/h;->b()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lxf/h;->m(J)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lxf/h;->c()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lxf/h;->i()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    iget-wide v1, p1, Lxf/h;->e:J

    iget-wide v3, p1, Lxf/h;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "STORED entry size/compressed size mismatch"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "STORED entry missing size"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "STORED entry missing CRC"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    invoke-direct {p0}, Lxf/j;->d()V

    const/4 v1, 0x0

    iput-object v1, p1, Lxf/h;->b:Ljava/lang/String;

    iput-object v1, p1, Lxf/h;->i:[B

    const v1, 0x9ef3

    iput v1, p1, Lxf/h;->g:I

    const/16 v1, 0x490a

    iput v1, p1, Lxf/h;->h:I

    iget-object v1, p1, Lxf/h;->a:Ljava/lang/String;

    sget-object v2, Lxf/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lxf/j;->h:[B

    const-string v3, "Name"

    invoke-direct {p0, v3, v1}, Lxf/j;->h(Ljava/lang/String;[B)V

    sget-object v1, Lxf/j;->m:[B

    iput-object v1, p0, Lxf/j;->i:[B

    iget-object v1, p1, Lxf/h;->b:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lxf/j;->i:[B

    const-string v2, "Comment"

    invoke-direct {p0, v2, v1}, Lxf/j;->h(Ljava/lang/String;[B)V

    :cond_8
    invoke-virtual {p1, v0}, Lxf/h;->l(I)V

    iput-object p1, p0, Lxf/j;->f:Lxf/h;

    iget-wide v1, p0, Lxf/j;->g:J

    iput-wide v1, p1, Lxf/h;->j:J

    iget-object v1, p0, Lxf/j;->a:Ljava/util/HashSet;

    iget-object p1, p1, Lxf/h;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    if-nez v0, :cond_9

    move v1, p1

    goto :goto_2

    :cond_9
    const/16 v1, 0x8

    :goto_2
    or-int/lit16 v1, v1, 0x800

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v3, 0x4034b50

    invoke-static {v2, v3, v4}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v2, v1}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1, v0}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lxf/j;->f:Lxf/h;

    iget v2, v2, Lxf/h;->g:I

    invoke-static {v1, v2}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lxf/j;->f:Lxf/h;

    iget v2, v2, Lxf/h;->h:I

    invoke-static {v1, v2}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    if-nez v0, :cond_a

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lxf/j;->f:Lxf/h;

    iget-wide v1, v1, Lxf/h;->c:J

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lxf/j;->f:Lxf/h;

    iget-wide v1, v1, Lxf/h;->e:J

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lxf/j;->f:Lxf/h;

    iget-wide v1, v1, Lxf/h;->e:J

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    goto :goto_3

    :cond_a
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0, v1, v2}, Lxf/j;->r(Ljava/io/OutputStream;J)J

    :goto_3
    iget-object v0, p0, Lxf/j;->h:[B

    array-length v0, v0

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1, v0}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    iget-wide v1, p0, Lxf/j;->g:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lxf/j;->f:Lxf/h;

    invoke-virtual {v0}, Lxf/h;->e()[B

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lxf/j;->f:Lxf/h;

    invoke-virtual {p1}, Lxf/h;->e()[B

    move-result-object p1

    array-length p1, p1

    :cond_b
    int-to-long v3, p1

    add-long/2addr v1, v3

    iget-object p1, p0, Lxf/j;->f:Lxf/h;

    invoke-direct {p0, p1, v1, v2}, Lxf/j;->m(Lxf/h;J)I

    move-result p1

    iput p1, p0, Lxf/j;->l:I

    iget-object v0, p0, Lxf/j;->f:Lxf/h;

    iget-object v0, v0, Lxf/h;->i:[B

    if-eqz v0, :cond_c

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    goto :goto_4

    :cond_c
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lxf/j;->q(Ljava/io/OutputStream;I)I

    :goto_4
    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lxf/j;->h:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lxf/j;->f:Lxf/h;

    iget-object p1, p1, Lxf/h;->i:[B

    if-eqz p1, :cond_d

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_d
    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget v0, p0, Lxf/j;->l:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lxf/j;->n(Ljava/io/OutputStream;J)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lxf/j;->m:[B

    iput-object p1, p0, Lxf/j;->c:[B

    return-void

    :cond_0
    sget-object v0, Lxf/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "Comment"

    invoke-direct {p0, v0, p1}, Lxf/j;->h(Ljava/lang/String;[B)V

    iput-object p1, p0, Lxf/j;->c:[B

    return-void
.end method

.method public write([BII)V
    .locals 1

    array-length v0, p1

    invoke-static {v0, p2, p3}, Lxf/b;->a(III)V

    iget-object v0, p0, Lxf/j;->f:Lxf/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lxf/h;->f()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "No active entry"

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
