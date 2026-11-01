.class Lcom/transsion/transfer/androidasync/http/HybiParser$a;
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

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->e()B

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->k(Lcom/transsion/transfer/androidasync/http/HybiParser;B)V
    :try_end_0
    .catch Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->H(Ljava/lang/Exception;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->C()V

    return-void
.end method
