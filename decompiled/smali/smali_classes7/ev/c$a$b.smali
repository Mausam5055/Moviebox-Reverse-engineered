.class Lev/c$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev/c$a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lev/c$a;


# direct methods
.method constructor <init>(Lev/c$a;)V
    .locals 0

    iput-object p1, p0, Lev/c$a$b;->a:Lev/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 4

    iget-object p1, p0, Lev/c$a$b;->a:Lev/c$a;

    iget-boolean p1, p1, Lev/c$a;->b:Z

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->E()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->D()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lev/c$a$b;->a:Lev/c$a;

    iget-object v0, v0, Lev/c$a;->e:Lev/c;

    iget-object v0, v0, Lev/c;->j:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    iget-object p1, p0, Lev/c$a$b;->a:Lev/c$a;

    invoke-static {p1}, Lev/c$a;->b(Lev/c$a;)V

    return-void
.end method
