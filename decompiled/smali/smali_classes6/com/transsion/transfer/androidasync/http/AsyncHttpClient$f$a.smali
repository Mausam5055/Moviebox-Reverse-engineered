.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;
.super Lcom/transsion/transfer/androidasync/stream/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/transfer/androidasync/http/k;

.field final synthetic c:J

.field final synthetic d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;Ljava/io/OutputStream;Lcom/transsion/transfer/androidasync/http/k;J)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;->b:Lcom/transsion/transfer/androidasync/http/k;

    iput-wide p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;->c:J

    invoke-direct {p0, p2}, Lcom/transsion/transfer/androidasync/stream/a;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    iget-wide v1, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->a:J

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->a:J

    invoke-super {p0, p1, p2}, Lcom/transsion/transfer/androidasync/stream/a;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;->b:Lcom/transsion/transfer/androidasync/http/k;

    iget-wide v3, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->a:J

    iget-wide v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;->c:J

    invoke-static/range {v0 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->i(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/http/k;JJ)V

    return-void
.end method
