.class Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;
.super Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteArray127Pool"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArrayPool;-><init>(Lcom/cloud/tmc/kernel/api/bytedata/a;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteArrayPools$ByteArray127Pool;->newObject()[B

    move-result-object v0

    return-object v0
.end method

.method protected newObject()[B
    .locals 1

    const/16 v0, 0x7f

    new-array v0, v0, [B

    return-object v0
.end method
