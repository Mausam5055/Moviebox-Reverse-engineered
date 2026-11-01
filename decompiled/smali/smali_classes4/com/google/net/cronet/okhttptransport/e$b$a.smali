.class Lcom/google/net/cronet/okhttptransport/e$b$a;
.super Lorg/chromium/net/UploadDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/net/cronet/okhttptransport/e$b;->a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile a:Z

.field private final b:Lokio/Buffer;

.field final synthetic c:J

.field final synthetic d:Lokhttp3/RequestBody;

.field final synthetic e:Lcom/google/net/cronet/okhttptransport/e$b;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/e$b;JLokhttp3/RequestBody;)V
    .locals 0

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->e:Lcom/google/net/cronet/okhttptransport/e$b;

    iput-wide p2, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->c:J

    iput-object p4, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->d:Lokhttp3/RequestBody;

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->a:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->c:J

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->d:Lokhttp3/RequestBody;

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->a:Z

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/e$b$a;->getLength()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes but got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    invoke-virtual {v0, p2}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The source has been exhausted but we expected more!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    return-void
.end method
