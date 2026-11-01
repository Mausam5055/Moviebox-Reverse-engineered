.class Lev/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/w$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev/c$a;->f([B)V
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

    iput-object p1, p0, Lev/c$a$a;->a:Lev/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lev/c$a$a;->b([B)V

    return-void
.end method

.method public b([B)V
    .locals 3

    iget-object v0, p0, Lev/c$a$a;->a:Lev/c$a;

    iget-boolean v1, v0, Lev/c$a;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lev/c$a;->e:Lev/c;

    iget-object v0, v0, Lev/c;->j:Ljava/util/zip/CRC32;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v2, v0}, Lev/c;->O([BILjava/nio/ByteOrder;)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lev/c$a$a;->a:Lev/c$a;

    iget-object v0, v0, Lev/c$a;->d:Lcom/transsion/transfer/androidasync/w;

    new-instance v1, Lev/c$a$a$a;

    invoke-direct {v1, p0}, Lev/c$a$a$a;-><init>(Lev/c$a$a;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/transfer/androidasync/w;->b(ILcom/transsion/transfer/androidasync/w$j;)Lcom/transsion/transfer/androidasync/w;

    return-void
.end method
