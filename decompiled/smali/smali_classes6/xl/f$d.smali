.class final Lxl/f$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field c:[Ljava/io/File;

.field d:[Ljava/io/File;

.field private e:Z

.field private f:Lxl/f$c;

.field private g:J

.field private h:J

.field final synthetic i:Lxl/f;


# direct methods
.method synthetic constructor <init>(Lxl/f;Ljava/lang/String;Lxl/f$a;)V
    .locals 5

    iput-object p1, p0, Lxl/f$d;->i:Lxl/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lxl/f$d;->a:Ljava/lang/String;

    invoke-static {p1}, Lxl/f;->t(Lxl/f;)I

    move-result p3

    new-array p3, p3, [J

    iput-object p3, p0, Lxl/f$d;->b:[J

    invoke-static {p1}, Lxl/f;->t(Lxl/f;)I

    move-result p3

    new-array p3, p3, [Ljava/io/File;

    iput-object p3, p0, Lxl/f$d;->c:[Ljava/io/File;

    invoke-static {p1}, Lxl/f;->t(Lxl/f;)I

    move-result p3

    new-array p3, p3, [Ljava/io/File;

    iput-object p3, p0, Lxl/f$d;->d:[Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lxl/f;->t(Lxl/f;)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxl/f$d;->c:[Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lxl/f;->w(Lxl/f;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const-string v1, ".tmp"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxl/f$d;->d:[Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lxl/f;->w(Lxl/f;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lxl/f$d;)J
    .locals 2

    iget-wide v0, p0, Lxl/f$d;->h:J

    return-wide v0
.end method

.method static synthetic b(Lxl/f$d;J)J
    .locals 0

    iput-wide p1, p0, Lxl/f$d;->h:J

    return-wide p1
.end method

.method private d([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic f(Lxl/f$d;Lxl/f$c;)Lxl/f$c;
    .locals 0

    iput-object p1, p0, Lxl/f$d;->f:Lxl/f$c;

    return-object p1
.end method

.method static synthetic g(Lxl/f$d;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lxl/f$d;->k([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lxl/f$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lxl/f$d;->e:Z

    return p1
.end method

.method static synthetic i(Lxl/f$d;J)J
    .locals 0

    iput-wide p1, p0, Lxl/f$d;->g:J

    return-wide p1
.end method

.method private k([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    iget-object v1, p0, Lxl/f$d;->i:Lxl/f;

    invoke-static {v1}, Lxl/f;->t(Lxl/f;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lxl/f$d;->b:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    invoke-direct {p0, p1}, Lxl/f$d;->d([Ljava/lang/String;)Ljava/io/IOException;

    throw v2

    :cond_1
    invoke-direct {p0, p1}, Lxl/f$d;->d([Ljava/lang/String;)Ljava/io/IOException;

    throw v2
.end method

.method static synthetic l(Lxl/f$d;)[J
    .locals 0

    iget-object p0, p0, Lxl/f$d;->b:[J

    return-object p0
.end method

.method static synthetic m(Lxl/f$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxl/f$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lxl/f$d;)J
    .locals 2

    iget-wide v0, p0, Lxl/f$d;->g:J

    return-wide v0
.end method

.method static synthetic o(Lxl/f$d;)Z
    .locals 0

    iget-boolean p0, p0, Lxl/f$d;->e:Z

    return p0
.end method

.method static synthetic p(Lxl/f$d;)Lxl/f$c;
    .locals 0

    iget-object p0, p0, Lxl/f$d;->f:Lxl/f$c;

    return-object p0
.end method


# virtual methods
.method public c(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lxl/f$d;->c:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lxl/f$d;->b:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lxl/f$d;->d:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method
