.class Lcom/android/volley/toolbox/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/volley/c$a;)V
    .locals 12

    iget-object v2, p2, Lcom/android/volley/c$a;->b:Ljava/lang/String;

    iget-wide v3, p2, Lcom/android/volley/c$a;->c:J

    iget-wide v5, p2, Lcom/android/volley/c$a;->d:J

    iget-wide v7, p2, Lcom/android/volley/c$a;->e:J

    iget-wide v9, p2, Lcom/android/volley/c$a;->f:J

    invoke-static {p2}, Lcom/android/volley/toolbox/c$a;->a(Lcom/android/volley/c$a;)Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/volley/toolbox/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/c$a;->b:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/android/volley/toolbox/c$a;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/volley/toolbox/c$a;->d:J

    iput-wide p5, p0, Lcom/android/volley/toolbox/c$a;->e:J

    iput-wide p7, p0, Lcom/android/volley/toolbox/c$a;->f:J

    iput-wide p9, p0, Lcom/android/volley/toolbox/c$a;->g:J

    iput-object p11, p0, Lcom/android/volley/toolbox/c$a;->h:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/android/volley/c$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/c$a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/volley/c$a;->g:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/volley/toolbox/d;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static b(Lcom/android/volley/toolbox/c$b;)Lcom/android/volley/toolbox/c$a;
    .locals 14

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->m(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->o(Lcom/android/volley/toolbox/c$b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->o(Lcom/android/volley/toolbox/c$b;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->n(Ljava/io/InputStream;)J

    move-result-wide v5

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->n(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->n(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->n(Ljava/io/InputStream;)J

    move-result-wide v11

    invoke-static {p0}, Lcom/android/volley/toolbox/c;->l(Lcom/android/volley/toolbox/c$b;)Ljava/util/List;

    move-result-object v13

    new-instance p0, Lcom/android/volley/toolbox/c$a;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/volley/toolbox/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method c([B)Lcom/android/volley/c$a;
    .locals 3

    new-instance v0, Lcom/android/volley/c$a;

    invoke-direct {v0}, Lcom/android/volley/c$a;-><init>()V

    iput-object p1, v0, Lcom/android/volley/c$a;->a:[B

    iget-object p1, p0, Lcom/android/volley/toolbox/c$a;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/volley/c$a;->b:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/volley/toolbox/c$a;->d:J

    iput-wide v1, v0, Lcom/android/volley/c$a;->c:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/c$a;->e:J

    iput-wide v1, v0, Lcom/android/volley/c$a;->d:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/c$a;->f:J

    iput-wide v1, v0, Lcom/android/volley/c$a;->e:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/c$a;->g:J

    iput-wide v1, v0, Lcom/android/volley/c$a;->f:J

    iget-object p1, p0, Lcom/android/volley/toolbox/c$a;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/android/volley/toolbox/d;->i(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/android/volley/c$a;->g:Ljava/util/Map;

    iget-object p1, p0, Lcom/android/volley/toolbox/c$a;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/volley/c$a;->h:Ljava/util/List;

    return-object v0
.end method

.method d(Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x20150306

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/c;->t(Ljava/io/OutputStream;I)V

    iget-object v2, p0, Lcom/android/volley/toolbox/c$a;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/c;->v(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/volley/toolbox/c$a;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/c;->v(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/volley/toolbox/c$a;->d:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/c;->u(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/android/volley/toolbox/c$a;->e:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/c;->u(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/android/volley/toolbox/c$a;->f:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/c;->u(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/android/volley/toolbox/c$a;->g:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/c;->u(Ljava/io/OutputStream;J)V

    iget-object v2, p0, Lcom/android/volley/toolbox/c$a;->h:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/android/volley/toolbox/c;->s(Ljava/util/List;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "%s"

    invoke-static {p1, v1}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
