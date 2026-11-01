.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    }
.end annotation


# static fields
.field private static final g:Lcom/amazonaws/logging/Log;

.field private static final h:Ljava/lang/Object;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field private b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field final c:Landroid/net/ConnectivityManager;

.field private final d:Lcom/amazonaws/services/s3/AmazonS3;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->h:Ljava/lang/Object;

    const-string v0, ""

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->getTransferThreadPoolSize()I

    move-result p1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b(I)V

    const-string p1, "connectivity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c:Landroid/net/ConnectivityManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)V

    return-void
.end method

.method static a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 3

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService_multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method static b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 3

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public static c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 1

    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;-><init>()V

    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)I
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-double v3, v1

    const-wide v5, 0x40c3880000000000L    # 10000.0

    div-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4154000000000000L    # 5242880.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-long v5, v5

    long-to-double v7, v5

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v7, v3, [Landroid/content/ContentValues;

    iget-object v8, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v16

    const/16 v18, 0x0

    iget-object v15, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    const-wide/16 v22, 0x0

    const/4 v14, 0x0

    const-string v19, ""

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-wide/from16 v12, v22

    move-object/from16 v21, v15

    move-object/from16 v15, v19

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    invoke-virtual/range {v8 .. v21}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    move v8, v4

    move/from16 v26, v8

    move-wide/from16 v24, v22

    :goto_0
    if-ge v8, v3, :cond_1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    iget-object v10, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sub-long/2addr v1, v5

    const-wide/16 v11, 0x0

    cmp-long v11, v1, v11

    if-gtz v11, :cond_0

    move/from16 v20, v4

    goto :goto_1

    :cond_0
    move/from16 v20, v9

    :goto_1
    iget-object v14, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    const-string v17, ""

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v23, v14

    move-wide/from16 v14, v24

    move/from16 v16, v26

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    invoke-virtual/range {v10 .. v23}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/content/ContentValues;

    move-result-object v10

    aput-object v10, v7, v8

    add-long v24, v24, v5

    add-int/lit8 v26, v26, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a([Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method private static f()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, ""

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private g(Ljava/io/File;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private declared-synchronized h(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->b(Ljava/lang/Integer;Lcom/amazonaws/services/s3/AmazonS3;)V

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->d(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->j(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find transfer with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    goto :goto_0

    :cond_1
    const-string v1, "add_transfer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transfer has already been added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    const-string p2, "add_transfer"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "resume_transfer"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "pause_transfer"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->g(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    goto :goto_2

    :cond_4
    const-string p2, "cancel_transfer"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->b(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public d(I)Z
    .locals 1

    const-string v0, "cancel_transfer"

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->h(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->j(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->l(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 8

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->g(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->e(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)I

    move-result p4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->f:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->k(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    :goto_0
    new-instance p5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    move-object v0, p5

    move v1, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    const-string p1, "add_transfer"

    invoke-direct {p0, p1, p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->h(Ljava/lang/String;I)V

    return-object p5

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid file: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
