.class public Lcom/transsion/transfer/androidasync/v;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/v$a;
    }
.end annotation


# instance fields
.field a:Ljava/nio/charset/Charset;

.field b:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field c:Lcom/transsion/transfer/androidasync/v$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/v;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/v;->a:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 2

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->e()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/v;->c:Lcom/transsion/transfer/androidasync/v$a;

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/v;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->z(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/v$a;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    return-void
.end method

.method public a(Lcom/transsion/transfer/androidasync/v$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/v;->c:Lcom/transsion/transfer/androidasync/v$a;

    return-void
.end method
