.class final Landroidx/datastore/preferences/protobuf/r0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/b1;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/n0;

.field private final b:Landroidx/datastore/preferences/protobuf/h1;

.field private final c:Z

.field private final d:Landroidx/datastore/preferences/protobuf/p;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/p;->e(Landroidx/datastore/preferences/protobuf/n0;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    return-void
.end method

.method private d(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/h1;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private e(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 9

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/h1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/p;->d(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    move-result-object v8

    :goto_0
    :try_start_0
    invoke-interface {p4}, Landroidx/datastore/preferences/protobuf/a1;->getFieldNumber()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/h1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    :try_start_1
    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/r0;->g(Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/s;Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/h1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/h1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method static f(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/n0;)Landroidx/datastore/preferences/protobuf/r0;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/r0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r0;-><init>(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/n0;)V

    return-object v0
.end method

.method private g(Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/s;Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;)Z
    .locals 6

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->getTag()I

    move-result v0

    sget v1, Landroidx/datastore/preferences/protobuf/WireFormat;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result v0

    invoke-virtual {p3, p2, v1, v0}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/n0;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/p;->h(Landroidx/datastore/preferences/protobuf/a1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/s;)V

    return v3

    :cond_0
    invoke-virtual {p5, p6, p1, v2}, Landroidx/datastore/preferences/protobuf/h1;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;I)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->skipField()Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    :cond_3
    :goto_0
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->getTag()I

    move-result v4

    sget v5, Landroidx/datastore/preferences/protobuf/WireFormat;->c:I

    if-ne v4, v5, :cond_5

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->readUInt32()I

    move-result v2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    invoke-virtual {p3, p2, v0, v2}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/n0;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget v5, Landroidx/datastore/preferences/protobuf/WireFormat;->d:I

    if-ne v4, v5, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/p;->h(Landroidx/datastore/preferences/protobuf/a1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/s;)V

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->skipField()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a1;->getTag()I

    move-result p1

    sget v4, Landroidx/datastore/preferences/protobuf/WireFormat;->b:I

    if-ne p1, v4, :cond_a

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {p3, v1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/p;->i(Landroidx/datastore/preferences/protobuf/ByteString;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/s;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p5, p6, v2, v1}, Landroidx/datastore/preferences/protobuf/h1;->d(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ByteString;)V

    :cond_9
    :goto_2
    return v3

    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidEndTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private h(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/h1;->s(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 6

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/r0;->e(Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/p;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/s;->p()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/r0;->h(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Ljava/lang/Object;[BIILandroidx/datastore/preferences/protobuf/e$a;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/i1;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->c()Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->k()Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v1

    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/i1;

    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;->K()Landroidx/datastore/preferences/protobuf/s;

    :goto_0
    if-ge p3, p4, :cond_9

    invoke-static {p2, p3, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v4

    iget v2, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    sget p1, Landroidx/datastore/preferences/protobuf/WireFormat;->a:I

    const/4 p3, 0x2

    if-eq v2, p1, :cond_2

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    iget-object p3, p5, Landroidx/datastore/preferences/protobuf/e$a;->d:Landroidx/datastore/preferences/protobuf/o;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result v3

    invoke-virtual {p1, p3, v0, v3}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/n0;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/e;->G(I[BIILandroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/e$a;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v2, p2, v4, p4, p5}, Landroidx/datastore/preferences/protobuf/e;->P(I[BIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v4, p4, :cond_7

    invoke-static {p2, v4, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v2

    iget v3, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v5

    if-eq v4, p3, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne v5, p3, :cond_5

    invoke-static {p2, v2, p5}, Landroidx/datastore/preferences/protobuf/e;->c([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v4

    iget-object v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    invoke-static {p2, v2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v4

    iget p1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    iget-object v3, p5, Landroidx/datastore/preferences/protobuf/e$a;->d:Landroidx/datastore/preferences/protobuf/o;

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    invoke-virtual {v2, v3, v5, p1}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/n0;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    sget v4, Landroidx/datastore/preferences/protobuf/WireFormat;->b:I

    if-ne v3, v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v3, p2, v2, p4, p5}, Landroidx/datastore/preferences/protobuf/e;->P(I[BIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v4

    goto :goto_1

    :cond_7
    move v2, v4

    :goto_3
    if-eqz v0, :cond_8

    invoke-static {p1, p3}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    :cond_8
    move p3, v2

    goto/16 :goto_0

    :cond_9
    if-ne p3, p4, :cond_a

    return-void

    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    invoke-virtual {v1, p2}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    move-result-object p1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    invoke-direct {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/r0;->d(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->g()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/h1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->m()Z

    move-result p1

    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/h1;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->b:Landroidx/datastore/preferences/protobuf/h1;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/d1;->F(Landroidx/datastore/preferences/protobuf/h1;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/r0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->d:Landroidx/datastore/preferences/protobuf/p;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/d1;->D(Landroidx/datastore/preferences/protobuf/p;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/r0;->a:Landroidx/datastore/preferences/protobuf/n0;

    instance-of v1, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->F()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/n0;->newBuilderForType()Landroidx/datastore/preferences/protobuf/n0$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/n0$a;->buildPartial()Landroidx/datastore/preferences/protobuf/n0;

    move-result-object v0

    return-object v0
.end method
