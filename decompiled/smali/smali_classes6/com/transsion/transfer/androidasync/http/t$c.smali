.class Lcom/transsion/transfer/androidasync/http/t$c;
.super Lbv/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/t;->q(Lcom/transsion/transfer/androidasync/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/j;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/t;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/t;Lcom/transsion/transfer/androidasync/j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$c;->b:Lcom/transsion/transfer/androidasync/http/t;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/t$c;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-direct {p0}, Lbv/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lbv/d$a;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$c;->a:Lcom/transsion/transfer/androidasync/j;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/t$c;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    return-void
.end method
