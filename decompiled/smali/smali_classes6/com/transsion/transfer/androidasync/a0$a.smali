.class Lcom/transsion/transfer/androidasync/a0$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->g(Lcom/transsion/transfer/androidasync/s;Lcom/transsion/transfer/androidasync/ByteBufferList;Lbv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/s;

.field final synthetic b:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field final synthetic c:Lbv/a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/s;Lcom/transsion/transfer/androidasync/ByteBufferList;Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$a;->a:Lcom/transsion/transfer/androidasync/s;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/a0$a;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/a0$a;->c:Lbv/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->a:Lcom/transsion/transfer/androidasync/s;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$a;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->c:Lbv/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->a:Lcom/transsion/transfer/androidasync/s;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->o(Lbv/j;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$a;->c:Lbv/a;

    invoke-interface {v0, v1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
