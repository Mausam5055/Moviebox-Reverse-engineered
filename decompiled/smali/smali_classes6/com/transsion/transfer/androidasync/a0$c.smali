.class Lcom/transsion/transfer/androidasync/a0$c;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->d(Ljava/io/InputStream;JLcom/transsion/transfer/androidasync/s;Lbv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field c:Lcom/transsion/transfer/androidasync/util/a;

.field final synthetic d:Lcom/transsion/transfer/androidasync/s;

.field final synthetic e:Ljava/io/InputStream;

.field final synthetic f:J

.field final synthetic g:Lbv/a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/s;Ljava/io/InputStream;JLbv/a;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$c;->d:Lcom/transsion/transfer/androidasync/s;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/a0$c;->e:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/transsion/transfer/androidasync/a0$c;->f:J

    iput-object p5, p0, Lcom/transsion/transfer/androidasync/a0$c;->g:Lbv/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

    new-instance p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    new-instance p1, Lcom/transsion/transfer/androidasync/util/a;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/util/a;-><init>()V

    const-wide/32 v0, 0x100000

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/util/a;->d(I)Lcom/transsion/transfer/androidasync/util/a;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$c;->c:Lcom/transsion/transfer/androidasync/util/a;

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->d:Lcom/transsion/transfer/androidasync/s;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->d:Lcom/transsion/transfer/androidasync/s;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->o(Lbv/j;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->e:Ljava/io/InputStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->c:Lcom/transsion/transfer/androidasync/util/a;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/transfer/androidasync/a0$c;->f:J

    iget v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/transsion/transfer/androidasync/a0$c;->f:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->c:Lcom/transsion/transfer/androidasync/util/a;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/transsion/transfer/androidasync/util/a;->e(J)V

    iget v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/a0$c;->b()V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->g:Lbv/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbv/a;->g(Ljava/lang/Exception;)V

    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->d:Lcom/transsion/transfer/androidasync/s;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_3

    :goto_2
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/a0$c;->b()V

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$c;->g:Lbv/a;

    invoke-interface {v1, v0}, Lbv/a;->g(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method
