.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;,
        Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/amazonaws/logging/Log;

.field private static final h:Ljava/util/Map;


# instance fields
.field private final a:Lcom/amazonaws/services/s3/AmazonS3;

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

.field private final c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field e:Ljava/util/Map;

.field private f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h:Ljava/util/Map;

    invoke-static {}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->values()[Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    const-string v1, "Aborting the multipart since complete multipart failed."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v2, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    invoke-direct {v2, p2, p3, p4}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3;->e(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Successfully aborted multipart upload: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object p3, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to abort the multipart upload: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic b()Lcom/amazonaws/logging/Log;
    .locals 1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    return-object v0
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    .locals 0

    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    return-object p0
.end method

.method static synthetic d(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
    .locals 0

    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    return-object p0
.end method

.method private f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->m(I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->b(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    return-void
.end method

.method private g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 11

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->z:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setCacheControl(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->x:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentDisposition(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->y:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentEncoding(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->v:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->a()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/util/Mimetypes;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->B:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setStorageClass(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->D:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setExpirationTimeRuleId(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->E:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/Date;

    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->E:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setHttpExpiresDate(Ljava/util/Date;)V

    :cond_6
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->F:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setSSEAlgorithm(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    if-eqz v0, :cond_b

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setUserMetadata(Ljava/util/Map;)V

    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    const-string v3, "x-amz-tagging"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    :try_start_0
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_8

    aget-object v7, v0, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/amazonaws/services/s3/model/Tag;

    aget-object v9, v7, v5

    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-direct {v8, v9, v7}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectTagging;

    invoke-direct {v0, v3}, Lcom/amazonaws/services/s3/model/ObjectTagging;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    const-string v4, "Error in passing the object tags as request headers."

    invoke-interface {v3, v4, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    const-string v3, "x-amz-website-redirect-location"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setRedirectLocation(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    const-string v3, "x-amz-request-payer"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v3, "requester"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setRequesterPays(Z)V

    :cond_b
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->H:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->G:Ljava/lang/String;

    if-eqz v0, :cond_d

    new-instance v3, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    invoke-direct {v3, v0}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    :cond_d
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->I:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object v1
.end method

.method private static h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    :goto_0
    return-object p0
.end method

.method private i(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getTagging()Lcom/amazonaws/services/s3/model/ObjectTagging;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3;->c(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j()Ljava/lang/Boolean;
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const-string v3, "]"

    const-string v4, "TransferUtilityException: ["

    const-string v5, "Network not connected. Setting the state to WAITING_FOR_NETWORK."

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    const-string v6, " due to "

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v0, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->l(I)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-lez v0, :cond_1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v11, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    aput-object v12, v13, v2

    const-string v11, "Resume transfer %d from %d bytes"

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    :cond_1
    move-wide v13, v9

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    :try_start_0
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->i(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_4

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v10, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    iget-object v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    invoke-virtual {v0, v10, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->r(ILjava/lang/String;)I

    move-wide v13, v7

    :goto_1
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v0, v1, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v12, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    iget-wide v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    const/16 v17, 0x0

    move-wide v15, v9

    invoke-virtual/range {v11 .. v17}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v11, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    iget-object v10, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->g(ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f:Ljava/util/List;

    sget-object v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Multipart upload "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v11, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " parts."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-static {v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    new-instance v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    invoke-direct {v11, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)V

    iput-object v10, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    iput-wide v7, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->c:J

    sget-object v12, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object v12, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v12, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    iget-object v13, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v14, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    move-object v15, v12

    move-object/from16 v16, v11

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-direct/range {v15 .. v20}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    invoke-static {v12}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    iput-object v10, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->b:Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v7, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->b:Ljava/util/concurrent/Future;

    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    and-int/2addr v7, v8

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v7, v0

    goto/16 :goto_4

    :cond_4
    if-nez v7, :cond_5

    :try_start_2
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    invoke-interface {v0, v5}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v7, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v7, v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completing the multi-part upload transfer for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    :try_start_4
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    iget-object v3, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v8, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    iget-wide v11, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    const/4 v13, 0x1

    move-wide v9, v11

    invoke-virtual/range {v7 .. v13}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_4
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to complete multipart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    iget-object v4, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    iget-object v5, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v2, v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :goto_4
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upload resulted in an exception. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->b:Ljava/util/concurrent/Future;

    invoke-interface {v8, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_5

    :cond_6
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Transfer is "

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_7
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_8
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    const-string v2, "Individual part is WAITING_FOR_NETWORK."

    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v0, v2, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_a
    :try_start_5
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    invoke-interface {v0, v5}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_5 .. :try_end_5} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    :cond_b
    invoke-static {v7}, Lcom/amazonaws/retry/RetryUtils;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer is interrupted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_c
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error encountered during multi-part upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v0, v2, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_4
    move-exception v0

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error initiating multipart upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v2, v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private k()Ljava/lang/Boolean;
    .locals 10

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->f(I)Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonWebServiceRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v2, v0}, Lcom/amazonaws/services/s3/AmazonS3;->f(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    const/4 v9, 0x1

    move-wide v5, v7

    invoke-virtual/range {v3 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Transfer is "

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x20

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    invoke-direct {v0, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v0, v4}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    invoke-direct {v0, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread:["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "]: Network wasn\'t available."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v7, v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v3, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    const-string v3, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    new-instance v2, Lcom/amazonaws/event/ProgressEvent;

    invoke-direct {v2, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v2, v4}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    new-instance v2, Lcom/amazonaws/event/ProgressEvent;

    invoke-direct {v2, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-interface {v1, v2}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TransferUtilityException: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    :cond_2
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer is interrupted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    const-string v1, "Network not connected. Setting the state to WAITING_FOR_NETWORK."

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransferUtilityException: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->g:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->j()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->k()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
