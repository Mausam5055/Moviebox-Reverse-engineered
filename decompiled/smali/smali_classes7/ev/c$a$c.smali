.class Lev/c$a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/w$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev/c$a;->d()V
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

    iput-object p1, p0, Lev/c$a$c;->a:Lev/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lev/c$a$c;->b([B)V

    return-void
.end method

.method public b([B)V
    .locals 4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lev/c;->O([BILjava/nio/ByteOrder;)S

    move-result p1

    iget-object v0, p0, Lev/c$a$c;->a:Lev/c$a;

    iget-object v0, v0, Lev/c$a;->e:Lev/c;

    iget-object v0, v0, Lev/c;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-short v0, v0

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lev/c$a$c;->a:Lev/c$a;

    iget-object p1, p1, Lev/c$a;->e:Lev/c;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "CRC mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lev/d;->M(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lev/c$a$c;->a:Lev/c$a;

    iget-object p1, p1, Lev/c$a;->e:Lev/c;

    iget-object p1, p1, Lev/c;->j:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    iget-object p1, p0, Lev/c$a$c;->a:Lev/c$a;

    iget-object v0, p1, Lev/c$a;->e:Lev/c;

    iput-boolean v1, v0, Lev/c;->i:Z

    iget-object p1, p1, Lev/c$a;->c:Lcom/transsion/transfer/androidasync/p;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    return-void
.end method
