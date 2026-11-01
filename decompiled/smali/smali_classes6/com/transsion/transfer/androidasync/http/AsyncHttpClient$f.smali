.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;
.super Ljava/lang/Object;

# interfaces
.implements Ldv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->t(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;)Lcom/transsion/transfer/androidasync/future/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

.field final synthetic e:Lcom/transsion/transfer/androidasync/future/w;

.field final synthetic f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;Lcom/transsion/transfer/androidasync/future/w;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->b:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->c:Ljava/io/File;

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->e:Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->a:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 7

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->e:Lcom/transsion/transfer/androidasync/future/w;

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->g(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    invoke-static {p1, v0, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->h(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/http/k;)V

    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/k;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/HttpUtil;->a(Lcom/transsion/transfer/androidasync/http/Headers;)J

    move-result-wide v4

    new-instance p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->b:Ljava/io/OutputStream;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;Ljava/io/OutputStream;Lcom/transsion/transfer/androidasync/http/k;J)V

    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    new-instance p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;

    invoke-direct {p1, p0, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;Lcom/transsion/transfer/androidasync/http/k;)V

    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    return-void
.end method
