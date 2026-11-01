.class Lcom/transsion/transfer/androidasync/w$k;
.super Lcom/transsion/transfer/androidasync/w$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field b:B

.field c:Lbv/d;


# direct methods
.method public constructor <init>(BLbv/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/w$l;-><init>(I)V

    iput-byte p1, p0, Lcom/transsion/transfer/androidasync/w$k;->b:B

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/w$k;->c:Lbv/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/w$l;
    .locals 7

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->E()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->D()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget-byte v6, p0, Lcom/transsion/transfer/androidasync/w$k;->b:B

    if-ne v2, v6, :cond_0

    move v2, v1

    goto :goto_2

    :cond_0
    move v2, v4

    :goto_2
    if-nez v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    if-eqz v2, :cond_2

    invoke-virtual {p2, v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2, v0, v5}, Lcom/transsion/transfer/androidasync/ByteBufferList;->g(Lcom/transsion/transfer/androidasync/ByteBufferList;I)V

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->e()B

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    goto :goto_0

    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/w$k;->c:Lbv/d;

    invoke-interface {p2, p1, v0}, Lbv/d;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    return-object p0
.end method
