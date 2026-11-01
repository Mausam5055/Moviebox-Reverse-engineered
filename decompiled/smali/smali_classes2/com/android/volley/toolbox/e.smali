.class public final Lcom/android/volley/toolbox/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Ljava/io/InputStream;

.field private final e:[B


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/volley/toolbox/e;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/volley/toolbox/e;->a:I

    iput-object p2, p0, Lcom/android/volley/toolbox/e;->b:Ljava/util/List;

    iput p3, p0, Lcom/android/volley/toolbox/e;->c:I

    iput-object p4, p0, Lcom/android/volley/toolbox/e;->d:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/volley/toolbox/e;->e:[B

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/volley/toolbox/e;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/e;->e:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/volley/toolbox/e;->e:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/android/volley/toolbox/e;->c:I

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/e;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/android/volley/toolbox/e;->a:I

    return v0
.end method
