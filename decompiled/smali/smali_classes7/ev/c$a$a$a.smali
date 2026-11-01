.class Lev/c$a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/w$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev/c$a$a;->b([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lev/c$a$a;


# direct methods
.method constructor <init>(Lev/c$a$a;)V
    .locals 0

    iput-object p1, p0, Lev/c$a$a$a;->a:Lev/c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lev/c$a$a$a;->b([B)V

    return-void
.end method

.method public b([B)V
    .locals 3

    iget-object v0, p0, Lev/c$a$a$a;->a:Lev/c$a$a;

    iget-object v0, v0, Lev/c$a$a;->a:Lev/c$a;

    iget-boolean v1, v0, Lev/c$a;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lev/c$a;->e:Lev/c;

    iget-object v0, v0, Lev/c;->j:Ljava/util/zip/CRC32;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_0
    iget-object p1, p0, Lev/c$a$a$a;->a:Lev/c$a$a;

    iget-object p1, p1, Lev/c$a$a;->a:Lev/c$a;

    invoke-static {p1}, Lev/c$a;->c(Lev/c$a;)V

    return-void
.end method
