.class public final Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/S3ClientOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->a:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->b:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->c:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->d:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->e:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/S3ClientOptions;
    .locals 9

    new-instance v8, Lcom/amazonaws/services/s3/S3ClientOptions;

    iget-boolean v1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->a:Z

    iget-boolean v2, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->b:Z

    iget-boolean v3, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->c:Z

    iget-boolean v4, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->d:Z

    iget-boolean v5, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->e:Z

    iget-boolean v6, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->f:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(ZZZZZZLcom/amazonaws/services/s3/S3ClientOptions$1;)V

    return-object v8
.end method

.method public b(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->d:Z

    return-object p0
.end method

.method public c(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->b:Z

    return-object p0
.end method
