.class final Landroidx/datastore/preferences/protobuf/ByteString$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ByteString$f;->b:[B

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d0([B)Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ByteString$f;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    return-void
.end method

.method synthetic constructor <init>(ILandroidx/datastore/preferences/protobuf/ByteString$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString$f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$f;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d()V

    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ByteString$f;->b:[B

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public b()Landroidx/datastore/preferences/protobuf/CodedOutputStream;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$f;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    return-object v0
.end method
