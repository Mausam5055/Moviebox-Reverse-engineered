.class Lcom/google/android/exoplayer2/source/hls/p$c;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final g:Lcom/google/android/exoplayer2/o1;

.field private static final h:Lcom/google/android/exoplayer2/o1;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/metadata/emsg/a;

.field private final b:Lg9/e0;

.field private final c:Lcom/google/android/exoplayer2/o1;

.field private d:Lcom/google/android/exoplayer2/o1;

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string v1, "application/id3"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/p$c;->g:Lcom/google/android/exoplayer2/o1;

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/p$c;->h:Lcom/google/android/exoplayer2/o1;

    return-void
.end method

.method public constructor <init>(Lg9/e0;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/metadata/emsg/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/emsg/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->a:Lcom/google/android/exoplayer2/metadata/emsg/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->b:Lg9/e0;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/source/hls/p$c;->h:Lcom/google/android/exoplayer2/o1;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->c:Lcom/google/android/exoplayer2/o1;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown metadataType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/source/hls/p$c;->g:Lcom/google/android/exoplayer2/o1;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->c:Lcom/google/android/exoplayer2/o1;

    :goto_0
    const/4 p1, 0x0

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->e:[B

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    return-void
.end method

.method private g(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->c:Lcom/google/android/exoplayer2/o1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private h(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->e:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    div-int/lit8 v1, p1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->e:[B

    :cond_0
    return-void
.end method

.method private i(II)Lcom/google/android/exoplayer2/util/d0;
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    sub-int/2addr v0, p2

    sub-int p1, v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->e:[B

    invoke-static {v1, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance v1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->e:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    return-object v1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/g;IZI)I
    .locals 1

    iget p4, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    add-int/2addr p4, p2

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/hls/p$c;->h(I)V

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->e:[B

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    invoke-interface {p1, p4, v0, p2}, Lcom/google/android/exoplayer2/upstream/g;->read([BII)I

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
    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    return p1
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/upstream/g;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lg9/d0;->a(Lg9/e0;Lcom/google/android/exoplayer2/upstream/g;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/util/d0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg9/d0;->b(Lg9/e0;Lcom/google/android/exoplayer2/util/d0;I)V

    return-void
.end method

.method public d(JIIILg9/e0$a;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->d:Lcom/google/android/exoplayer2/o1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p4, p5}, Lcom/google/android/exoplayer2/source/hls/p$c;->i(II)Lcom/google/android/exoplayer2/util/d0;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->d:Lcom/google/android/exoplayer2/o1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->c:Lcom/google/android/exoplayer2/o1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->d:Lcom/google/android/exoplayer2/o1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    const-string v1, "application/x-emsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "HlsSampleStreamWrapper"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->a:Lcom/google/android/exoplayer2/metadata/emsg/a;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/metadata/emsg/a;->c(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/hls/p$c;->g(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->c:Lcom/google/android/exoplayer2/o1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/o1;

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

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p4}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->getWrappedMetadataBytes()[B

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    invoke-direct {v0, p4}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    move-object p4, v0

    :goto_0
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->b:Lg9/e0;

    invoke-interface {v0, p4, v4}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->b:Lg9/e0;

    move-wide v1, p1

    move v3, p3

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lg9/e0;->d(JIIILg9/e0$a;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->d:Lcom/google/android/exoplayer2/o1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Ignoring sample for unsupported format: "

    if-eqz p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/o1;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->d:Lcom/google/android/exoplayer2/o1;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->b:Lg9/e0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->c:Lcom/google/android/exoplayer2/o1;

    invoke-interface {p1, v0}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/util/d0;II)V
    .locals 1

    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    add-int/2addr p3, p2

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/hls/p$c;->h(I)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->e:[B

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    invoke-virtual {p1, p3, v0, p2}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    iget p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/p$c;->f:I

    return-void
.end method
