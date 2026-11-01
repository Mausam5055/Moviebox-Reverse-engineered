.class public Lcom/amazonaws/services/s3/UploadObjectObserver;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method protected b(Lcom/amazonaws/services/s3/internal/PartCreationEvent;Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 3

    new-instance v0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->d()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withLastPart(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getUploadPartMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V
    .locals 5

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/UploadObjectObserver;->b(Lcom/amazonaws/services/s3/internal/PartCreationEvent;Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->a()Lcom/amazonaws/services/s3/OnFileDelete;

    move-result-object p1

    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->w:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/amazonaws/services/s3/UploadObjectObserver$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/amazonaws/services/s3/UploadObjectObserver$1;-><init>(Lcom/amazonaws/services/s3/UploadObjectObserver;Lcom/amazonaws/services/s3/model/UploadPartRequest;Ljava/io/File;Lcom/amazonaws/services/s3/OnFileDelete;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected d(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->d:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/S3DirectSpi;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    return-object p1
.end method
