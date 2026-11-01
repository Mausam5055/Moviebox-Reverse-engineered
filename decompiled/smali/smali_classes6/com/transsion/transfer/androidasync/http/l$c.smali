.class Lcom/transsion/transfer/androidasync/http/l$c;
.super Lbv/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/l;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/l;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/l;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l$c;->a:Lcom/transsion/transfer/androidasync/http/l;

    invoke-direct {p0}, Lbv/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lbv/d$a;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/l$c;->a:Lcom/transsion/transfer/androidasync/http/l;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/l;->O(Lcom/transsion/transfer/androidasync/http/l;)Lcom/transsion/transfer/androidasync/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    return-void
.end method
