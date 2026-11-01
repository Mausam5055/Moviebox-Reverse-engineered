.class public abstract Landroidx/datastore/preferences/protobuf/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/n0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/a$a;
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/a;->memoizedHashCode:I

    return-void
.end method

.method protected static b(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/a$a;->b(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method c()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method d(Landroidx/datastore/preferences/protobuf/b1;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/a;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/b1;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/a;->g(I)V

    :cond_0
    return v0
.end method

.method f()Landroidx/datastore/preferences/protobuf/UninitializedMessageException;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;-><init>(Landroidx/datastore/preferences/protobuf/n0;)V

    return-object v0
.end method

.method g(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h(Ljava/io/OutputStream;)V
    .locals 1

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/n0;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->G(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c0(Ljava/io/OutputStream;I)Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/datastore/preferences/protobuf/n0;->a(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Z()V

    return-void
.end method

.method public toByteArray()[B
    .locals 3

    :try_start_0
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/n0;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0([B)Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-interface {p0, v1}, Landroidx/datastore/preferences/protobuf/n0;->a(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 3

    :try_start_0
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/n0;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->newCodedBuilder(I)Landroidx/datastore/preferences/protobuf/ByteString$f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ByteString$f;->b()Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-interface {p0, v1}, Landroidx/datastore/preferences/protobuf/n0;->a(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ByteString$f;->a()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
