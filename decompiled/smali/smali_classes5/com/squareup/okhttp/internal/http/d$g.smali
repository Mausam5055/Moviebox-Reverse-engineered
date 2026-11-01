.class Lcom/squareup/okhttp/internal/http/d$g;
.super Lcom/squareup/okhttp/internal/http/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private d:Z

.field final synthetic e:Lcom/squareup/okhttp/internal/http/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/d;)V
    .locals 1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/d$g;->e:Lcom/squareup/okhttp/internal/http/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/d$b;-><init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/d$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/d$g;-><init>(Lcom/squareup/okhttp/internal/http/d;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/d$g;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d$b;->h()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->b:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/d$g;->d:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$g;->e:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->e(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/d$g;->d:Z

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d$b;->d()V

    return-wide v1

    :cond_1
    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
