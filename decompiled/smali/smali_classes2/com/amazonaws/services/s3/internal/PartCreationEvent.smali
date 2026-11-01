.class public Lcom/amazonaws/services/s3/internal/PartCreationEvent;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private final c:Z

.field private final d:Lcom/amazonaws/services/s3/OnFileDelete;


# direct methods
.method constructor <init>(Ljava/io/File;IZLcom/amazonaws/services/s3/OnFileDelete;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->a:Ljava/io/File;

    iput p2, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->b:I

    iput-boolean p3, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->c:Z

    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->d:Lcom/amazonaws/services/s3/OnFileDelete;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "part must not be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/OnFileDelete;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->d:Lcom/amazonaws/services/s3/OnFileDelete;

    return-object v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->a:Ljava/io/File;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->c:Z

    return v0
.end method
