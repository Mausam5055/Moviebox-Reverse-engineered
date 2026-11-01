.class public abstract Landroidx/datastore/preferences/protobuf/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/v0;


# static fields
.field private static final a:Landroidx/datastore/preferences/protobuf/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/o;->b()Landroidx/datastore/preferences/protobuf/o;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/b;->a:Landroidx/datastore/preferences/protobuf/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroidx/datastore/preferences/protobuf/n0;)Landroidx/datastore/preferences/protobuf/n0;
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/o0;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/b;->d(Landroidx/datastore/preferences/protobuf/n0;)Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Landroidx/datastore/preferences/protobuf/n0;)Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private d(Landroidx/datastore/preferences/protobuf/n0;)Landroidx/datastore/preferences/protobuf/UninitializedMessageException;
    .locals 1

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/a;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/a;->f()Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    invoke-direct {v0, p1}, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;-><init>(Landroidx/datastore/preferences/protobuf/n0;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/b;->e(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/o;)Landroidx/datastore/preferences/protobuf/n0;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/o;)Landroidx/datastore/preferences/protobuf/n0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/b;->f(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/o;)Landroidx/datastore/preferences/protobuf/n0;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/b;->c(Landroidx/datastore/preferences/protobuf/n0;)Landroidx/datastore/preferences/protobuf/n0;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/o;)Landroidx/datastore/preferences/protobuf/n0;
    .locals 1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->newCodedInput()Landroidx/datastore/preferences/protobuf/i;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/v0;->b(Landroidx/datastore/preferences/protobuf/i;Landroidx/datastore/preferences/protobuf/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/n0;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/i;->a(I)V
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Landroidx/datastore/preferences/protobuf/n0;)Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
