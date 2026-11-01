.class public Lcom/amazonaws/services/s3/S3ClientOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    iget-boolean p1, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    return-void
.end method

.method private constructor <init>(ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    iput-boolean p2, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    iput-boolean p3, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    iput-boolean p4, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    iput-boolean p5, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    iput-boolean p6, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    return-void
.end method

.method synthetic constructor <init>(ZZZZZZLcom/amazonaws/services/s3/S3ClientOptions$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(ZZZZZZ)V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .locals 2

    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions$1;)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    return v0
.end method
