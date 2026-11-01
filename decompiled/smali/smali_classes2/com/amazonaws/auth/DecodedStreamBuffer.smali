.class Lcom/amazonaws/auth/DecodedStreamBuffer;
.super Ljava/lang/Object;


# static fields
.field private static final f:Lcom/amazonaws/logging/Log;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/DecodedStreamBuffer;->f:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:[B

    iput p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:I

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:I

    if-le v1, v2, :cond_1

    sget-object p1, Lcom/amazonaws/auth/DecodedStreamBuffer;->f:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Buffer size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has been exceeded and the input stream will not be repeatable. Freeing buffer memory"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()B
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:[B

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    return-void

    :cond_0
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The input stream is not repeatable since the buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has been exceeded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
