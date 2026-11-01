.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/mbridge/msdk/thrid/okio/f;

.field private static final b:Lcom/mbridge/msdk/thrid/okio/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\"\\"

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/e;->a:Lcom/mbridge/msdk/thrid/okio/f;

    const-string v0, "\t ,="

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/e;->b:Lcom/mbridge/msdk/thrid/okio/f;

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p0, p0

    return p0

    :catch_0
    return p1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public static a(Lcom/mbridge/msdk/thrid/okhttp/p;)J
    .locals 2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/mbridge/msdk/thrid/okhttp/y;)J
    .locals 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->m()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/e;->a(Lcom/mbridge/msdk/thrid/okhttp/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static a(Lcom/mbridge/msdk/thrid/okhttp/k;Lcom/mbridge/msdk/thrid/okhttp/q;Lcom/mbridge/msdk/thrid/okhttp/p;)V
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/k;->a:Lcom/mbridge/msdk/thrid/okhttp/k;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/j;->a(Lcom/mbridge/msdk/thrid/okhttp/q;Lcom/mbridge/msdk/thrid/okhttp/p;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/k;->a(Lcom/mbridge/msdk/thrid/okhttp/q;Ljava/util/List;)V

    return-void
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public static b(Lcom/mbridge/msdk/thrid/okhttp/y;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->r()Lcom/mbridge/msdk/thrid/okhttp/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/w;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->k()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/e;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method
