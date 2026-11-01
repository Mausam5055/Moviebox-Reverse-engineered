.class public Lcom/android/volley/toolbox/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/c$b;,
        Lcom/android/volley/toolbox/c$a;,
        Lcom/android/volley/toolbox/c$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private b:J

.field private final c:Lcom/android/volley/toolbox/c$c;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/c$c;)V
    .locals 1

    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/c;-><init>(Lcom/android/volley/toolbox/c$c;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/c$c;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/c;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/c;->b:J

    iput-object p1, p0, Lcom/android/volley/toolbox/c;->c:Lcom/android/volley/toolbox/c$c;

    iput p2, p0, Lcom/android/volley/toolbox/c;->d:I

    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/android/volley/toolbox/c;->c:Lcom/android/volley/toolbox/c$c;

    invoke-interface {v0}, Lcom/android/volley/toolbox/c$c;->get()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Re-initializing cache after external clearing."

    invoke-static {v1, v0}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/c;->b:J

    invoke-virtual {p0}, Lcom/android/volley/toolbox/c;->initialize()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/volley/toolbox/c;->b:J

    iget v5, p0, Lcom/android/volley/toolbox/c;->d:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    return-void

    :cond_0
    sget-boolean v3, Lcom/android/volley/l;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "Pruning old cache entries."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/volley/l;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-wide v3, p0, Lcom/android/volley/toolbox/c;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v2

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/volley/toolbox/c$a;

    iget-object v10, v9, Lcom/android/volley/toolbox/c$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/volley/toolbox/c;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-wide v10, p0, Lcom/android/volley/toolbox/c;->b:J

    iget-wide v12, v9, Lcom/android/volley/toolbox/c$a;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/volley/toolbox/c;->b:J

    goto :goto_0

    :cond_3
    iget-object v9, v9, Lcom/android/volley/toolbox/c$a;->b:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/volley/toolbox/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v9, v11, v2

    aput-object v10, v11, v1

    const-string v9, "Could not delete cache entry for key=%s, filename=%s"

    invoke-static {v9, v11}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    add-int/2addr v8, v1

    iget-wide v9, p0, Lcom/android/volley/toolbox/c;->b:J

    long-to-float v9, v9

    iget v10, p0, Lcom/android/volley/toolbox/c;->d:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    :cond_4
    sget-boolean v7, Lcom/android/volley/l;->b:Z

    if-eqz v7, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/volley/toolbox/c;->b:J

    sub-long/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v2

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    const-string v0, "pruned %d files, %d bytes, %d ms"

    invoke-static {v0, v5}, Lcom/android/volley/l;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private j(Ljava/lang/String;Lcom/android/volley/toolbox/c$a;)V
    .locals 7

    iget-object v0, p0, Lcom/android/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/volley/toolbox/c;->b:J

    iget-wide v2, p2, Lcom/android/volley/toolbox/c$a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/volley/toolbox/c;->b:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/c$a;

    iget-wide v1, p0, Lcom/android/volley/toolbox/c;->b:J

    iget-wide v3, p2, Lcom/android/volley/toolbox/c$a;->a:J

    iget-wide v5, v0, Lcom/android/volley/toolbox/c$a;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/c;->b:J

    :goto_0
    iget-object v0, p0, Lcom/android/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static k(Ljava/io/InputStream;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method static l(Lcom/android/volley/toolbox/c$b;)Ljava/util/List;
    .locals 6

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->m(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->o(Lcom/android/volley/toolbox/c$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->o(Lcom/android/volley/toolbox/c$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/volley/e;

    invoke-direct {v5, v3, v4}, Lcom/android/volley/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readHeaderList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static m(Ljava/io/InputStream;)I
    .locals 2

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static n(Ljava/io/InputStream;)J
    .locals 7

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->k(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static o(Lcom/android/volley/toolbox/c$b;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->n(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/c;->r(Lcom/android/volley/toolbox/c$b;J)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private q(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/toolbox/c$a;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/volley/toolbox/c;->b:J

    iget-wide v2, p1, Lcom/android/volley/toolbox/c$a;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/volley/toolbox/c;->b:J

    :cond_0
    return-void
.end method

.method static r(Lcom/android/volley/toolbox/c$b;J)[B
    .locals 5

    invoke-virtual {p0}, Lcom/android/volley/toolbox/c$b;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    new-array p1, v2, [B

    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamToBytes length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", maxLength="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static s(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/c;->t(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/e;

    invoke-virtual {v0}, Lcom/android/volley/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/c;->v(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/volley/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/c;->v(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/volley/toolbox/c;->t(Ljava/io/OutputStream;I)V

    :cond_1
    return-void
.end method

.method static t(Ljava/io/OutputStream;I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static u(Ljava/io/OutputStream;J)V
    .locals 2

    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static v(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/c;->u(Ljava/io/OutputStream;J)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/android/volley/c$a;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/toolbox/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    monitor-exit p0

    return-object v4

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/c;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v6, Lcom/android/volley/toolbox/c$b;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v5}, Lcom/android/volley/toolbox/c;->d(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/android/volley/toolbox/c$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6}, Lcom/android/volley/toolbox/c$a;->b(Lcom/android/volley/toolbox/c$b;)Lcom/android/volley/toolbox/c$a;

    move-result-object v7

    iget-object v8, v7, Lcom/android/volley/toolbox/c$a;->b:Ljava/lang/String;

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v3, "%s: key=%s, found=%s"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lcom/android/volley/toolbox/c$a;->b:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v2

    aput-object p1, v9, v1

    aput-object v7, v9, v0

    invoke-static {v3, v9}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/c;->q(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    goto :goto_0

    :cond_1
    :try_start_5
    invoke-virtual {v6}, Lcom/android/volley/toolbox/c$b;->d()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/volley/toolbox/c;->r(Lcom/android/volley/toolbox/c$b;J)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/volley/toolbox/c$a;->c([B)Lcom/android/volley/c$a;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v3

    :goto_0
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    const-string v6, "%s: %s"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    aput-object v3, v0, v1

    invoke-static {v6, v0}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/c;->p(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v4

    :goto_2
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/c;->a(Ljava/lang/String;)Lcom/android/volley/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/volley/c$a;->f:J

    if-eqz p2, :cond_0

    iput-wide v1, v0, Lcom/android/volley/c$a;->e:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/c;->c(Ljava/lang/String;Lcom/android/volley/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Lcom/android/volley/c$a;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/volley/toolbox/c;->b:J

    iget-object v4, p2, Lcom/android/volley/c$a;->a:[B

    array-length v5, v4

    int-to-long v5, v5

    add-long/2addr v2, v5

    iget v5, p0, Lcom/android/volley/toolbox/c;->d:I

    int-to-long v6, v5

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    array-length v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v2, v2

    int-to-float v3, v5

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/c;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, v2}, Lcom/android/volley/toolbox/c;->e(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lcom/android/volley/toolbox/c$a;

    invoke-direct {v4, p1, p2}, Lcom/android/volley/toolbox/c$a;-><init>(Ljava/lang/String;Lcom/android/volley/c$a;)V

    invoke-virtual {v4, v3}, Lcom/android/volley/toolbox/c$a;->d(Ljava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p2, p2, Lcom/android/volley/c$a;->a:[B

    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/volley/toolbox/c$a;->a:J

    invoke-direct {p0, p1, v4}, Lcom/android/volley/toolbox/c;->j(Ljava/lang/String;Lcom/android/volley/toolbox/c$a;)V

    invoke-direct {p0}, Lcom/android/volley/toolbox/c;->i()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const-string p1, "Failed to write header for %s"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-static {p1, v3}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Could not clean up file %s"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/volley/toolbox/c;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method d(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method e(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/c;->c:Lcom/android/volley/toolbox/c$c;

    invoke-interface {v1}, Lcom/android/volley/toolbox/c$c;->get()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/volley/toolbox/c;->c:Lcom/android/volley/toolbox/c$c;

    invoke-interface {v2}, Lcom/android/volley/toolbox/c$c;->get()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Unable to create cache dir %s"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/android/volley/l;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    new-instance v7, Lcom/android/volley/toolbox/c$b;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v4}, Lcom/android/volley/toolbox/c;->d(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8, v5, v6}, Lcom/android/volley/toolbox/c$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v7}, Lcom/android/volley/toolbox/c$a;->b(Lcom/android/volley/toolbox/c$b;)Lcom/android/volley/toolbox/c$a;

    move-result-object v8

    iput-wide v5, v8, Lcom/android/volley/toolbox/c$a;->a:J

    iget-object v5, v8, Lcom/android/volley/toolbox/c$a;->b:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/volley/toolbox/c;->j(Ljava/lang/String;Lcom/android/volley/toolbox/c$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v5

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public declared-synchronized p(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/c;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/c;->q(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    invoke-static {v0, v2}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
