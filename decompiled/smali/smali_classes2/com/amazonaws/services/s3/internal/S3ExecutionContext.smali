.class public Lcom/amazonaws/services/s3/internal/S3ExecutionContext;
.super Lcom/amazonaws/http/ExecutionContext;


# instance fields
.field private f:Lcom/amazonaws/auth/Signer;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 0

    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;->f:Lcom/amazonaws/auth/Signer;

    return-object p1
.end method

.method public g(Lcom/amazonaws/auth/Signer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;->f:Lcom/amazonaws/auth/Signer;

    return-void
.end method
