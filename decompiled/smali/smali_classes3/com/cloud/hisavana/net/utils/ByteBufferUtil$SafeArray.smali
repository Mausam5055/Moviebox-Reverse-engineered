.class final Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/utils/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeArray"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->c:[B

    iput p2, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->a:I

    iput p3, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->b:I

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;)[B
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->c:[B

    return-object p0
.end method

.method static synthetic b(Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->a:I

    return p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->b:I

    return p0
.end method
