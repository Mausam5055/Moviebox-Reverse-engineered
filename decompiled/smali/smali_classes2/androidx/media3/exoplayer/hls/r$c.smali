.class Landroidx/media3/exoplayer/hls/r$c;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final g:Landroidx/media3/common/r;

.field private static final h:Landroidx/media3/common/r;


# instance fields
.field private final a:Lw2/b;

.field private final b:Ll2/s0;

.field private final c:Landroidx/media3/common/r;

.field private d:Landroidx/media3/common/r;

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    const-string v1, "application/id3"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/r$c;->g:Landroidx/media3/common/r;

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/r$c;->h:Landroidx/media3/common/r;

    return-void
.end method

.method public constructor <init>(Ll2/s0;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw2/b;

    invoke-direct {v0}, Lw2/b;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->a:Lw2/b;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->b:Ll2/s0;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/hls/r$c;->h:Landroidx/media3/common/r;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown metadataType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Landroidx/media3/exoplayer/hls/r$c;->g:Landroidx/media3/common/r;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    :goto_0
    const/4 p1, 0x0

    new-array p2, p1, [B

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    iput p1, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    return-void
.end method

.method private h(Lw2/a;)Z
    .locals 1

    invoke-virtual {p1}, Lw2/a;->getWrappedMetadataFormat()Landroidx/media3/common/r;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private i(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    div-int/lit8 v1, p1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    :cond_0
    return-void
.end method

.method private j(II)Landroidx/media3/common/util/j0;
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    sub-int/2addr v0, p2

    sub-int p1, v0, p1

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    invoke-static {v1, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance v1, Landroidx/media3/common/util/j0;

    invoke-direct {v1, p1}, Landroidx/media3/common/util/j0;-><init>([B)V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    return-object v1
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;II)V
    .locals 1

    iget p3, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    add-int/2addr p3, p2

    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/hls/r$c;->i(I)V

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    iget v0, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    invoke-virtual {p1, p3, v0, p2}, Landroidx/media3/common/util/j0;->l([BII)V

    iget p1, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    return-void
.end method

.method public synthetic b(Landroidx/media3/common/util/j0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ll2/r0;->c(Ll2/s0;Landroidx/media3/common/util/j0;I)V

    return-void
.end method

.method public c(Landroidx/media3/common/r;)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->b:Ll2/s0;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    invoke-interface {p1, v0}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    return-void
.end method

.method public d(JIIILl2/s0$a;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p4, p5}, Landroidx/media3/exoplayer/hls/r$c;->j(II)Landroidx/media3/common/util/j0;

    move-result-object p4

    iget-object p5, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    iget-object p5, p5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {p5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p5, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    iget-object p5, p5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v0, "application/x-emsg"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const-string v0, "HlsSampleStreamWrapper"

    if-eqz p5, :cond_2

    iget-object p5, p0, Landroidx/media3/exoplayer/hls/r$c;->a:Lw2/b;

    invoke-virtual {p5, p4}, Lw2/b;->c(Landroidx/media3/common/util/j0;)Lw2/a;

    move-result-object p4

    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/hls/r$c;->h(Lw2/a;)Z

    move-result p5

    if-nez p5, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {p4}, Lw2/a;->getWrappedMetadataFormat()Landroidx/media3/common/r;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p5, Landroidx/media3/common/util/j0;

    invoke-virtual {p4}, Lw2/a;->getWrappedMetadataBytes()[B

    move-result-object p4

    invoke-static {p4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    invoke-direct {p5, p4}, Landroidx/media3/common/util/j0;-><init>([B)V

    move-object p4, p5

    :goto_0
    invoke-virtual {p4}, Landroidx/media3/common/util/j0;->a()I

    move-result v4

    iget-object p5, p0, Landroidx/media3/exoplayer/hls/r$c;->b:Ll2/s0;

    invoke-interface {p5, p4, v4}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->b:Ll2/s0;

    const/4 v5, 0x0

    move-wide v1, p1

    move v3, p3

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ll2/s0;->d(JIIILl2/s0$a;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring sample for unsupported format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    iget-object p2, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic e(Landroidx/media3/common/j;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ll2/r0;->b(Ll2/s0;Landroidx/media3/common/j;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic f(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Ll2/r0;->a(Ll2/s0;J)V

    return-void
.end method

.method public g(Landroidx/media3/common/j;IZI)I
    .locals 1

    iget p4, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    add-int/2addr p4, p2

    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/hls/r$c;->i(I)V

    iget-object p4, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    iget v0, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    invoke-interface {p1, p4, v0, p2}, Landroidx/media3/common/j;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    iget p2, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    return p1
.end method
