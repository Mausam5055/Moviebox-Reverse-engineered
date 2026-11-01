.class public Lcom/transsion/transfer/androidasync/util/a;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/transfer/androidasync/util/a;->b:I

    const/16 v0, 0x1000

    iput v0, p0, Lcom/transsion/transfer/androidasync/util/a;->c:I

    sget v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->f:I

    iput v0, p0, Lcom/transsion/transfer/androidasync/util/a;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Lcom/transsion/transfer/androidasync/util/a;->b:I

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/util/a;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Lcom/transsion/transfer/androidasync/util/a;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/transsion/transfer/androidasync/util/a;->a:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/transsion/transfer/androidasync/util/a;->c:I

    return v0
.end method

.method public d(I)Lcom/transsion/transfer/androidasync/util/a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/transfer/androidasync/util/a;->c:I

    return-object p0
.end method

.method public e(J)V
    .locals 0

    long-to-int p1, p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/transfer/androidasync/util/a;->b:I

    return-void
.end method
