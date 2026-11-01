.class Lcom/transsion/transfer/androidasync/http/HybiParser$b;
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

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$b;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$b;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->e()B

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->j(Lcom/transsion/transfer/androidasync/http/HybiParser;B)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$b;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->C()V

    return-void
.end method
