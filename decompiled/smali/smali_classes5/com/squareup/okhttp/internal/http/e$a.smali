.class Lcom/squareup/okhttp/internal/http/e$a;
.super Lokio/ForwardingSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/http/e;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/e;Lokio/Source;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e$a;->a:Lcom/squareup/okhttp/internal/http/e;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e$a;->a:Lcom/squareup/okhttp/internal/http/e;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/e;->a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/internal/http/n;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e$a;->a:Lcom/squareup/okhttp/internal/http/e;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/n;->r(Lcom/squareup/okhttp/internal/http/HttpStream;)V

    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    return-void
.end method
