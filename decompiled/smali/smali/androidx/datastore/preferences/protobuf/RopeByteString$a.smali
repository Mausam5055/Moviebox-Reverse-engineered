.class Landroidx/datastore/preferences/protobuf/RopeByteString$a;
.super Landroidx/datastore/preferences/protobuf/ByteString$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/preferences/protobuf/RopeByteString;->iterator()Landroidx/datastore/preferences/protobuf/ByteString$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroidx/datastore/preferences/protobuf/RopeByteString$c;

.field b:Landroidx/datastore/preferences/protobuf/ByteString$e;

.field final synthetic c:Landroidx/datastore/preferences/protobuf/RopeByteString;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/RopeByteString;)V
    .locals 2

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->c:Landroidx/datastore/preferences/protobuf/RopeByteString;

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ByteString$b;-><init>()V

    new-instance v0, Landroidx/datastore/preferences/protobuf/RopeByteString$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/RopeByteString$c;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/RopeByteString$a;)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->a:Landroidx/datastore/preferences/protobuf/RopeByteString$c;

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->b()Landroidx/datastore/preferences/protobuf/ByteString$e;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->b:Landroidx/datastore/preferences/protobuf/ByteString$e;

    return-void
.end method

.method private b()Landroidx/datastore/preferences/protobuf/ByteString$e;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->a:Landroidx/datastore/preferences/protobuf/RopeByteString$c;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->a:Landroidx/datastore/preferences/protobuf/RopeByteString$c;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/RopeByteString$c;->c()Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->iterator()Landroidx/datastore/preferences/protobuf/ByteString$e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->b:Landroidx/datastore/preferences/protobuf/ByteString$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextByte()B
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->b:Landroidx/datastore/preferences/protobuf/ByteString$e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/ByteString$e;->nextByte()B

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->b:Landroidx/datastore/preferences/protobuf/ByteString$e;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->b()Landroidx/datastore/preferences/protobuf/ByteString$e;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$a;->b:Landroidx/datastore/preferences/protobuf/ByteString$e;

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
