.class Lcom/transsion/transfer/androidasync/http/HybiParser$c;
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

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$c;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$c;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->b(Lcom/transsion/transfer/androidasync/http/HybiParser;)I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->h([B)V

    :try_start_0
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$c;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-static {p2, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->i(Lcom/transsion/transfer/androidasync/http/HybiParser;[B)V
    :try_end_0
    .catch Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$c;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->H(Ljava/lang/Exception;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$c;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->C()V

    return-void
.end method
