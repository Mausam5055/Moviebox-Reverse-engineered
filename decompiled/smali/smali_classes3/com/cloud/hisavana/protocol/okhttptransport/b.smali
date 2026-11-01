.class abstract Lcom/cloud/hisavana/protocol/okhttptransport/b;
.super Lokhttp3/ResponseBody;


# instance fields
.field private final a:Lokhttp3/ResponseBody;


# direct methods
.method protected constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/b;->a:Lokhttp3/ResponseBody;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/b;->a:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/b;->d()V

    return-void
.end method

.method public final contentLength()J
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/b;->a:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/b;->a:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method abstract d()V
.end method

.method public final source()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/b;->a:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method
