.class public abstract Landroidx/datastore/preferences/protobuf/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/i$c;,
        Landroidx/datastore/preferences/protobuf/i$d;,
        Landroidx/datastore/preferences/protobuf/i$e;,
        Landroidx/datastore/preferences/protobuf/i$b;
    }
.end annotation


# static fields
.field private static volatile f:I = 0x64


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Landroidx/datastore/preferences/protobuf/j;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroidx/datastore/preferences/protobuf/i;->f:I

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/i;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/i$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i;-><init>()V

    return-void
.end method

.method public static c(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static d(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static g(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/i;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->h(Ljava/io/InputStream;I)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/io/InputStream;I)Landroidx/datastore/preferences/protobuf/i;
    .locals 2

    if-lez p1, :cond_1

    if-nez p0, :cond_0

    sget-object p0, Landroidx/datastore/preferences/protobuf/w;->d:[B

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/i;->k([B)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/i$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/datastore/preferences/protobuf/i$d;-><init>(Ljava/io/InputStream;ILandroidx/datastore/preferences/protobuf/i$a;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static i(Ljava/lang/Iterable;Z)Landroidx/datastore/preferences/protobuf/i;
    .locals 5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    new-instance v0, Landroidx/datastore/preferences/protobuf/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Landroidx/datastore/preferences/protobuf/i$c;-><init>(Ljava/lang/Iterable;IZLandroidx/datastore/preferences/protobuf/i$a;)V

    return-object v0

    :cond_3
    new-instance p1, Landroidx/datastore/preferences/protobuf/x;

    invoke-direct {p1, p0}, Landroidx/datastore/preferences/protobuf/x;-><init>(Ljava/lang/Iterable;)V

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/i;->g(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0
.end method

.method static j(Ljava/nio/ByteBuffer;Z)Landroidx/datastore/preferences/protobuf/i;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroidx/datastore/preferences/protobuf/i;->m([BIIZ)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/i$e;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/datastore/preferences/protobuf/i$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/datastore/preferences/protobuf/i$e;-><init>(Ljava/nio/ByteBuffer;ZLandroidx/datastore/preferences/protobuf/i$a;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    new-array v0, p1, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Landroidx/datastore/preferences/protobuf/i;->m([BIIZ)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0
.end method

.method public static k([B)Landroidx/datastore/preferences/protobuf/i;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/datastore/preferences/protobuf/i;->l([BII)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0
.end method

.method public static l([BII)Landroidx/datastore/preferences/protobuf/i;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/i;->m([BIIZ)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0
.end method

.method static m([BIIZ)Landroidx/datastore/preferences/protobuf/i;
    .locals 7

    new-instance v6, Landroidx/datastore/preferences/protobuf/i$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/i$b;-><init>([BIIZLandroidx/datastore/preferences/protobuf/i$a;)V

    :try_start_0
    invoke-virtual {v6, p2}, Landroidx/datastore/preferences/protobuf/i$b;->o(I)I
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract A()I
.end method

.method public abstract B()J
.end method

.method public abstract C()Ljava/lang/String;
.end method

.method public abstract D()Ljava/lang/String;
.end method

.method public abstract E()I
.end method

.method public abstract F()I
.end method

.method public abstract G()J
.end method

.method public abstract H(I)Z
.end method

.method public I()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->b()V

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:I

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->H(I)Z

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/i;->a:I

    if-nez v0, :cond_0

    return-void
.end method

.method public abstract a(I)V
.end method

.method public b()V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->a:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public abstract e()I
.end method

.method public abstract f()Z
.end method

.method public abstract n(I)V
.end method

.method public abstract o(I)I
.end method

.method public abstract p()Z
.end method

.method public abstract q()Landroidx/datastore/preferences/protobuf/ByteString;
.end method

.method public abstract r()D
.end method

.method public abstract s()I
.end method

.method public abstract t()I
.end method

.method public abstract u()J
.end method

.method public abstract v()F
.end method

.method public abstract w()I
.end method

.method public abstract x()J
.end method

.method public abstract y()I
.end method

.method public abstract z()J
.end method
