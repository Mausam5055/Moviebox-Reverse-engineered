.class public Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;
.super Lcom/amazonaws/auth/AWS4Signer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>(Z)V

    return-void
.end method

.method static L(Lcom/amazonaws/Request;)J
    .locals 6

    invoke-interface {p0}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_0

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-wide v2

    :cond_1
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Failed to get content length"

    invoke-direct {p0, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static M(Lcom/amazonaws/Request;)Z
    .locals 1

    invoke-interface {p0}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p0

    instance-of p0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected K(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;)V
    .locals 8

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->M(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->b()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->d()[B

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/util/BinaryUtils;->d([B)Ljava/lang/String;

    move-result-object v6

    new-instance p2, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    move-object v1, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method protected x(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 5

    const-string v0, "x-amz-content-sha256"

    const-string v1, "required"

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->M(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->L(Lcom/amazonaws/Request;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "x-amz-decoded-content-length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "STREAMING-AWS4-HMAC-SHA256-PAYLOAD"

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Cannot get the content-lenght of the request content."

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    invoke-super {p0, p1}, Lcom/amazonaws/auth/AWS4Signer;->x(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
