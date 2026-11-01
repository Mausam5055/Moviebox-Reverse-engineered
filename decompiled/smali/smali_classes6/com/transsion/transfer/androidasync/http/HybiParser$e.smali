.class Lcom/transsion/transfer/androidasync/http/HybiParser$e;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/HybiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/HybiParser;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$e;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$e;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->a(Lcom/transsion/transfer/androidasync/http/HybiParser;)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->f(Lcom/transsion/transfer/androidasync/http/HybiParser;[B)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$e;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->d(Lcom/transsion/transfer/androidasync/http/HybiParser;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->h([B)V

    :try_start_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$e;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->h(Lcom/transsion/transfer/androidasync/http/HybiParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$e;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->H(Ljava/lang/Exception;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$e;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->g(Lcom/transsion/transfer/androidasync/http/HybiParser;I)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$e;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->C()V

    return-void
.end method
