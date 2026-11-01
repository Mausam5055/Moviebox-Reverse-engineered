.class public final Lcom/transsion/transfer/impl/client/o$b;
.super Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/client/o;->s(Lcom/transsion/transfer/impl/entity/FileData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/client/o;

.field final synthetic b:Lcom/transsion/transfer/impl/entity/FileData;

.field final synthetic c:J


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/client/o;Lcom/transsion/transfer/impl/entity/FileData;J)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o$b;->a:Lcom/transsion/transfer/impl/client/o;

    iput-object p2, p0, Lcom/transsion/transfer/impl/client/o$b;->b:Lcom/transsion/transfer/impl/entity/FileData;

    iput-wide p3, p0, Lcom/transsion/transfer/impl/client/o$b;->c:J

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/http/k;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o$b;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/o;->c(Lcom/transsion/transfer/impl/client/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$i;->a(Lcom/transsion/transfer/androidasync/http/k;JJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/transsion/transfer/impl/client/o$b;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {p1}, Lcom/transsion/transfer/impl/client/o;->f(Lcom/transsion/transfer/impl/client/o;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/o$b;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/transfer/impl/client/o;->n(Lcom/transsion/transfer/impl/client/o;J)V

    iget-object p1, p0, Lcom/transsion/transfer/impl/client/o$b;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {p1}, Lcom/transsion/transfer/impl/client/o;->g(Lcom/transsion/transfer/impl/client/o;)Lcom/transsion/transfer/impl/f;

    move-result-object v0

    iget-object p1, p0, Lcom/transsion/transfer/impl/client/o$b;->b:Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/transfer/impl/client/o$b;->c:J

    add-long p1, p2, v2

    add-long v4, p4, v2

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/transsion/transfer/impl/f;->B(Ljava/lang/String;JJ)V

    return-void
.end method

.method public b(Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 10

    iget-object p1, p0, Lcom/transsion/transfer/impl/client/o$b;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {p1}, Lcom/transsion/transfer/impl/client/o;->g(Lcom/transsion/transfer/impl/client/o;)Lcom/transsion/transfer/impl/f;

    move-result-object v0

    iget-object p1, p0, Lcom/transsion/transfer/impl/client/o$b;->b:Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/transfer/impl/TaskState;->TRANSFERRING:Lcom/transsion/transfer/impl/TaskState;

    iget-wide v3, p0, Lcom/transsion/transfer/impl/client/o$b;->c:J

    iget-object p1, p0, Lcom/transsion/transfer/impl/client/o$b;->b:Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/transsion/transfer/impl/f;->I(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/transfer/androidasync/http/k;

    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/client/o$b;->d(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;Ljava/io/File;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;Ljava/io/File;)V
    .locals 1

    iget-object p3, p0, Lcom/transsion/transfer/impl/client/o$b;->a:Lcom/transsion/transfer/impl/client/o;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/transsion/transfer/impl/client/o;->o(Lcom/transsion/transfer/impl/client/o;Z)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/k;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/transsion/transfer/impl/client/o$b;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {p3}, Lcom/transsion/transfer/impl/client/o;->i(Lcom/transsion/transfer/impl/client/o;)Lcom/transsion/transfer/impl/client/o$c;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o$b;->b:Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {p3, v0, p2, p1}, Lcom/transsion/transfer/impl/client/o$c;->a(Lcom/transsion/transfer/impl/entity/FileData;Ljava/lang/Integer;Ljava/lang/Exception;)V

    return-void
.end method
