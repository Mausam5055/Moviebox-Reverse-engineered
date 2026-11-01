.class public abstract Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field protected extensions:Landroidx/datastore/preferences/protobuf/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/s;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Landroidx/datastore/preferences/protobuf/s;->f()Landroidx/datastore/preferences/protobuf/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;->extensions:Landroidx/datastore/preferences/protobuf/s;

    return-void
.end method


# virtual methods
.method K()Landroidx/datastore/preferences/protobuf/s;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;->extensions:Landroidx/datastore/preferences/protobuf/s;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/s;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;->extensions:Landroidx/datastore/preferences/protobuf/s;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/s;->a()Landroidx/datastore/preferences/protobuf/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;->extensions:Landroidx/datastore/preferences/protobuf/s;

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$c;->extensions:Landroidx/datastore/preferences/protobuf/s;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/n0;
    .locals 1

    invoke-super {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->u()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Landroidx/datastore/preferences/protobuf/n0$a;
    .locals 1

    invoke-super {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->D()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;

    move-result-object v0

    return-object v0
.end method
