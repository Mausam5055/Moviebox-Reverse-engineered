.class public Lcom/amazonaws/services/s3/model/SSECustomerKey;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/SSECustomerKey;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/SSECustomerKey;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->e(Ljava/lang/String;)V

    return-object p0
.end method
