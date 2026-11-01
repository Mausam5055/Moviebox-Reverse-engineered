.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/amazonaws/services/s3/AmazonS3;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
    .locals 7

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    :cond_0
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$1;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is required please set using .context(applicationContext)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AmazonS3 client is required please set using .s3Client(yourClient)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    return-object p0
.end method

.method public c(Lcom/amazonaws/services/s3/AmazonS3;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    return-object p0
.end method
