.class final Landroidx/datastore/preferences/protobuf/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/a1;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/i;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    const-string v0, "input"

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/w;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/i;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/i;->d:Landroidx/datastore/preferences/protobuf/j;

    return-void
.end method

.method public static f(Landroidx/datastore/preferences/protobuf/i;)Landroidx/datastore/preferences/protobuf/j;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i;->d:Landroidx/datastore/preferences/protobuf/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/j;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/j;-><init>(Landroidx/datastore/preferences/protobuf/i;)V

    return-object v0
.end method

.method private g(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 3

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->c:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    move-result v1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/j;->c:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/b1;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;)V

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    iget p2, p0, Landroidx/datastore/preferences/protobuf/j;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->c:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->c:I

    throw p1
.end method

.method private h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    iget v2, v1, Landroidx/datastore/preferences/protobuf/i;->a:I

    iget v3, v1, Landroidx/datastore/preferences/protobuf/i;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/i;->o(I)I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    iget v2, v1, Landroidx/datastore/preferences/protobuf/i;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/datastore/preferences/protobuf/i;->a:I

    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/b1;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/a1;Landroidx/datastore/preferences/protobuf/o;)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/i;->a(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    iget p2, p1, Landroidx/datastore/preferences/protobuf/i;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/datastore/preferences/protobuf/i;->a:I

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/i;->n(I)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private i(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->l(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readEnum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j(Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/b1;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->g(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V

    invoke-interface {p1, v0}, Landroidx/datastore/preferences/protobuf/b1;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private k(Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/b1;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V

    invoke-interface {p1, v0}, Landroidx/datastore/preferences/protobuf/b1;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private n(I)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private o(I)V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private p(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private q(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V

    return-void
.end method

.method public b(Ljava/util/List;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->k(Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public c(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/h0$a;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 7

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/i;->o(I)I

    move-result v1

    iget-object v2, p2, Landroidx/datastore/preferences/protobuf/h0$a;->b:Ljava/lang/Object;

    iget-object v3, p2, Landroidx/datastore/preferences/protobuf/h0$a;->d:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->skipField()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v4, p2, Landroidx/datastore/preferences/protobuf/h0$a;->c:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    iget-object v5, p2, Landroidx/datastore/preferences/protobuf/h0$a;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Landroidx/datastore/preferences/protobuf/j;->i(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v4, p2, Landroidx/datastore/preferences/protobuf/h0$a;->a:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Landroidx/datastore/preferences/protobuf/j;->i(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->skipField()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/protobuf/i;->n(I)V

    return-void

    :goto_2
    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/i;->n(I)V

    throw p1
.end method

.method public d(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->g(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V

    return-void
.end method

.method public e(Ljava/util/List;Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->j(Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public getFieldNumber()I
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    :goto_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eqz v0, :cond_2

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    return v0
.end method

.method public l(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    invoke-static {}, Landroidx/datastore/preferences/protobuf/x0;->a()Landroidx/datastore/preferences/protobuf/x0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/x0;->c(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/b1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->k(Landroidx/datastore/preferences/protobuf/b1;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/util/List;Z)V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/b0;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/b0;

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->i(Landroidx/datastore/preferences/protobuf/ByteString;)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget p2, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readBool()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->p()Z

    move-result v0

    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/f;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/f;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->p()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/f;->addBoolean(Z)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->p()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/f;->addBoolean(Z)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->q()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readDouble()D
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->r()D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/l;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/l;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->q(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->r()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/l;->addDouble(D)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->r()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/l;->addDouble(D)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->q(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->r()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->r()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readEnum()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->s()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/v;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->s()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->s()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->s()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->s()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readFixed32()I
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->t()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/v;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->t()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->p(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->t()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->p(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public readFixed64()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/f0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/f0;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->q(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->u()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->q(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readFloat()F
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->v()F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/t;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/t;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->v()F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/t;->addFloat(F)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->p(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->v()F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/t;->addFloat(F)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->v()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->p(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->v()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public readInt32()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->w()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/v;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readInt64()J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/f0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/f0;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->x()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readSFixed32()I
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->y()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/v;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->y()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->p(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->y()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->p(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public readSFixed64()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/f0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/f0;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->q(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->z()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->z()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->q(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readSInt32()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->A()I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/v;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readSInt64()J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/f0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/f0;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->B()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->B()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->B()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringList(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j;->m(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j;->m(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 2

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/v;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public readUInt64()J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j;->o(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/f0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/f0;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result p1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->G()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->G()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->F()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->G()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->e()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/j;->n(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->G()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->E()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Landroidx/datastore/preferences/protobuf/j;->d:I

    return-void
.end method

.method public skipField()Z
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/i;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/i;->H(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
