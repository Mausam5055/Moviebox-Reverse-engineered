.class public Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;
.super Ljava/lang/Object;


# static fields
.field static final BYTE_127:I = 0x7f

.field static final BYTE_2:I = 0x2

.field static final BYTE_4:I = 0x4

.field static final BYTE_8:I = 0x8

.field private static BYTE_ARRAY_127_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;

.field private static BYTE_ARRAY_2_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray2Pool;

.field private static BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

.field private static BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray2Pool;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray2Pool;

    new-instance v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    new-instance v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    new-instance v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Ljava/io/BufferedInputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readBoolean2(Ljava/io/BufferedInputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readByte(Ljava/io/BufferedInputStream;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "end of the stream has been reached"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readBytes(Ljava/io/BufferedInputStream;[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end of the stream has been reached, expect length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readBytes(Ljava/io/BufferedInputStream;[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end of the stream has been reached, expect count "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " but got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readDouble(Ljava/io/BufferedInputStream;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    invoke-static {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->getDouble([B)D

    move-result-wide v1

    sget-object p0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-wide v1
.end method

.method public static readFloat(Ljava/io/BufferedInputStream;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    invoke-static {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->getFloat([B)F

    move-result p0

    sget-object v1, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return p0
.end method

.method public static readInt(Ljava/io/BufferedInputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    invoke-static {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->getInt([B)I

    move-result p0

    sget-object v1, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return p0
.end method

.method public static readLong(Ljava/io/BufferedInputStream;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    invoke-static {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->getLong([B)J

    move-result-wide v1

    sget-object p0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-wide v1
.end method

.method public static readShort(Ljava/io/BufferedInputStream;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    invoke-static {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->getShort([B)S

    move-result p0

    sget-object v1, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return p0
.end method

.method public static readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v1, 0x7f

    const-string v2, "utf-8"

    if-le v0, v1, :cond_1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_1
    sget-object v1, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-object p0
.end method

.method public static readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    const-class v1, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;

    monitor-enter v1

    :try_start_0
    new-array v0, v0, [B

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[B)I

    new-instance p0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    sget-object v1, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readBytes(Ljava/io/BufferedInputStream;[BII)I

    new-instance p0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {p0, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_127_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-object p0
.end method

.method public static readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static readStringArray2(Ljava/io/BufferedInputStream;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {p0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static readStringList(Ljava/io/BufferedInputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {p0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static writeBoolean(Ljava/io/BufferedOutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public static writeBoolean2(Ljava/io/BufferedOutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    return-void
.end method

.method public static writeByte(Ljava/io/BufferedOutputStream;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public static writeDouble(Ljava/io/BufferedOutputStream;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->putDouble(D[B)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-void
.end method

.method public static writeFloat(Ljava/io/BufferedOutputStream;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->putFloat(F[B)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-void
.end method

.method public static writeInt(Ljava/io/BufferedOutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->putInt(I[B)V

    sget-object p1, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_4_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray4Pool;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeLong(Ljava/io/BufferedOutputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->putLong(J[B)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_8_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray8Pool;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-void
.end method

.method public static writeShort(Ljava/io/BufferedOutputStream;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderValues;->putShort(S[B)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->BYTE_ARRAY_2_POOL:Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray2Pool;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-void
.end method

.method public static writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    :goto_1
    return-void
.end method

.method public static writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public static writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    invoke-static {p0, v2}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    :cond_2
    return-void
.end method

.method public static writeStringArray2(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1

    :cond_1
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    :cond_2
    return-void
.end method

.method public static writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
