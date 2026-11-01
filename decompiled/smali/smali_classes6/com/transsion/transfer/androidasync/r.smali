.class public Lcom/transsion/transfer/androidasync/r;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/d;


# instance fields
.field a:Lbv/d;

.field b:I

.field c:Lcom/transsion/transfer/androidasync/ByteBufferList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/r;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    return-void
.end method

.method private a(Lcom/transsion/transfer/androidasync/p;)Z
    .locals 2

    iget v0, p0, Lcom/transsion/transfer/androidasync/r;->b:I

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/r;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/r;->a:Lbv/d;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/r;->a:Lbv/d;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/r;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-interface {v0, p1, v1}, Lbv/d;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 3

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    iget v1, p0, Lcom/transsion/transfer/androidasync/r;->b:I

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/r;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/r;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p2, v1, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->g(Lcom/transsion/transfer/androidasync/ByteBufferList;I)V

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/r;->a(Lcom/transsion/transfer/androidasync/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/r;->a:Lbv/d;

    if-nez v0, :cond_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    return-void
.end method

.method public b(ILbv/d;)V
    .locals 0

    iput p1, p0, Lcom/transsion/transfer/androidasync/r;->b:I

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/r;->a:Lbv/d;

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/r;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    return-void
.end method
