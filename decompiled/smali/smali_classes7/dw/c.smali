.class public final Ldw/c;
.super Ldw/a;


# instance fields
.field private b:Lcom/transsion/upload/bean/TstTokenEntity;

.field private c:Lcom/alibaba/sdk/android/oss/OSS;

.field private d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldw/a;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldw/c;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static synthetic j(Lcw/a;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Ldw/c;->m(Lcw/a;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method

.method private final k(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 1

    iget-object v0, p0, Ldw/c;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final l(Lcom/transsion/upload/bean/UploadFileType;Ljava/lang/String;ZLcw/a;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Ldw/a;->a(Lcom/transsion/upload/bean/UploadFileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    iget-object v1, p0, Ldw/c;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/upload/bean/TstTokenEntity;->getBucket()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, p1, v3}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    iget-object v1, p0, Ldw/c;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/upload/bean/TstTokenEntity;->getBucket()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v1, Ldw/b;

    invoke-direct {v1, p4, p2}, Ldw/b;-><init>(Lcw/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    iget-object v1, p0, Ldw/c;->c:Lcom/alibaba/sdk/android/oss/OSS;

    if-eqz v1, :cond_3

    new-instance v2, Ldw/c$a;

    invoke-direct {v2, p0, p1, p4, p2}, Ldw/c$a;-><init>(Ldw/c;Ljava/lang/String;Lcw/a;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v2

    :cond_3
    if-eqz p3, :cond_4

    invoke-direct {p0, p2, v2}, Ldw/c;->k(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    :cond_4
    return-void
.end method

.method private static final m(Lcw/a;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 6

    const-string p2, "$localFilePath"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcw/a;->a(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Ldw/c;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->cancel()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldw/c;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v0, Lew/a;->a:Lew/a;

    invoke-virtual {p0}, Ldw/a;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> cancel() --> end"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lew/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/transsion/upload/bean/TstTokenEntity;Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLcw/a;)V
    .locals 1

    const-string v0, "tstToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "localFilePath"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uploadFileType"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p2, p4, p5}, Ldw/c;->l(Lcom/transsion/upload/bean/UploadFileType;Ljava/lang/String;ZLcw/a;)V

    return-void
.end method

.method public f()Lcom/transsion/upload/bean/UploadTstTokenStorageType;
    .locals 1

    sget-object v0, Lcom/transsion/upload/bean/UploadTstTokenStorageType;->TST_TOKEN_STORAGE_OSS:Lcom/transsion/upload/bean/UploadTstTokenStorageType;

    return-object v0
.end method

.method public h(Lcom/transsion/upload/bean/TstTokenEntity;)V
    .locals 4

    const-string v0, "tstToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldw/c;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getAccessKeySecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getSecurityToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    iget-object v1, p0, Ldw/c;->c:Lcom/alibaba/sdk/android/oss/OSS;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/oss/OSSClient;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getEndPoint()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    iput-object v1, p0, Ldw/c;->c:Lcom/alibaba/sdk/android/oss/OSS;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/oss/OSS;->updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    :cond_1
    :goto_0
    return-void
.end method
