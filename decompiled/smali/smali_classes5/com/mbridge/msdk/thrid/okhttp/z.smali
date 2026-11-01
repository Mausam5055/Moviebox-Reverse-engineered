.class public abstract Lcom/mbridge/msdk/thrid/okhttp/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/mbridge/msdk/thrid/okhttp/s;JLcom/mbridge/msdk/thrid/okio/e;)Lcom/mbridge/msdk/thrid/okhttp/z;
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/z$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/z$a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/s;JLcom/mbridge/msdk/thrid/okio/e;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/mbridge/msdk/thrid/okhttp/s;[B)Lcom/mbridge/msdk/thrid/okhttp/z;
    .locals 3

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/c;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okio/c;->a([B)Lcom/mbridge/msdk/thrid/okio/c;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/mbridge/msdk/thrid/okhttp/z;->a(Lcom/mbridge/msdk/thrid/okhttp/s;JLcom/mbridge/msdk/thrid/okio/e;)Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/z;->k()Lcom/mbridge/msdk/thrid/okio/e;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/z;->k()Lcom/mbridge/msdk/thrid/okio/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->j()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract h()J
.end method

.method public abstract k()Lcom/mbridge/msdk/thrid/okio/e;
.end method
