.class Lcom/transsion/transfer/androidasync/http/v$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/v;->f(Lcom/transsion/transfer/androidasync/http/g$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/transsion/transfer/androidasync/http/Headers;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/transsion/transfer/androidasync/http/g$c;

.field final synthetic d:Lcom/transsion/transfer/androidasync/http/v;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/v;Lcom/transsion/transfer/androidasync/http/g$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$b;->d:Lcom/transsion/transfer/androidasync/http/v;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/http/Headers;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$b;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/v$b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$b;->b:Ljava/lang/String;

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/v$b;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->b(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$b;->b:Ljava/lang/String;

    const-string v0, " "

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/v$b;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-interface {v0, v3}, Lcom/transsion/transfer/androidasync/http/g$i;->y(Lcom/transsion/transfer/androidasync/http/Headers;)Lcom/transsion/transfer/androidasync/http/g$i;

    const/4 v0, 0x0

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object v4, v4, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {v4, v3}, Lcom/transsion/transfer/androidasync/http/g$i;->k(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/g$i;

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object v4, v4, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/transsion/transfer/androidasync/http/g$i;->c(I)Lcom/transsion/transfer/androidasync/http/g$i;

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object v4, v4, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    array-length v5, p1

    if-ne v5, v1, :cond_2

    aget-object p1, p1, v2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-interface {v4, p1}, Lcom/transsion/transfer/androidasync/http/g$i;->u(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/g$i;

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$c;->i:Lbv/a;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lbv/a;->g(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/g$i;->socket()Lcom/transsion/transfer/androidasync/j;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object v2, v2, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/http/j;->q()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/j;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object v2, v2, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/http/g$i;->b()I

    move-result v2

    invoke-static {v2}, Lcom/transsion/transfer/androidasync/http/v;->i(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/j;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/transsion/transfer/androidasync/http/Protocol;->get(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Protocol;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/v$b;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-static {p1, v1, v2, v0}, Lcom/transsion/transfer/androidasync/http/HttpUtil;->c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/http/Protocol;Lcom/transsion/transfer/androidasync/http/Headers;Z)Lcom/transsion/transfer/androidasync/p;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/http/g$i;->m(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/http/g$i;

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not HTTP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/v$b;->c:Lcom/transsion/transfer/androidasync/http/g$c;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/g$c;->i:Lbv/a;

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method
