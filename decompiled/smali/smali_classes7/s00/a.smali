.class public abstract Ls00/a;
.super Ljava/io/FilterReader;


# instance fields
.field private a:Z

.field private b:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/io/StringReader;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls00/a;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ls00/a;->b:Lorg/apache/tools/ant/Project;

    invoke-static {p0}, Lorg/apache/tools/ant/util/d;->d(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public final b(Lorg/apache/tools/ant/Project;)V
    .locals 0

    iput-object p1, p0, Ls00/a;->b:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public final read([CII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    add-int v2, p2, v0

    int-to-char v1, v1

    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public final skip(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "skip value is negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
