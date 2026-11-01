.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/k;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->a:Lcom/transsion/transfer/androidasync/http/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->e:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->a:Lcom/transsion/transfer/androidasync/http/k;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->g(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->e:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->a:Lcom/transsion/transfer/androidasync/http/k;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->c:Ljava/io/File;

    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->g(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ldv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
