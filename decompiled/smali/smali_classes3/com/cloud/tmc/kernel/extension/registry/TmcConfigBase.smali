.class public abstract Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mFormatVersion:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;->mFormatVersion:B

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result p1

    iput-byte p1, p0, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;->mFormatVersion:B

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;->mFormatVersion:B

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    return-object p0
.end method
