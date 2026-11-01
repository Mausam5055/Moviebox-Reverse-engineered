.class final Lcom/bykv/vk/openvk/preload/a/b/c$1;
.super Lcom/bykv/vk/openvk/preload/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/a/b/c;->a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/a/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bykv/vk/openvk/preload/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic b:Z

.field private synthetic c:Z

.field private synthetic d:Lcom/bykv/vk/openvk/preload/a/d;

.field private synthetic e:Lcom/bykv/vk/openvk/preload/a/c/a;

.field private synthetic f:Lcom/bykv/vk/openvk/preload/a/b/c;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/c;ZZLcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->f:Lcom/bykv/vk/openvk/preload/a/b/c;

    iput-boolean p2, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->b:Z

    iput-boolean p3, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->c:Z

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->d:Lcom/bykv/vk/openvk/preload/a/d;

    iput-object p5, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->e:Lcom/bykv/vk/openvk/preload/a/c/a;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/r;-><init>()V

    return-void
.end method

.method private b()Lcom/bykv/vk/openvk/preload/a/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->a:Lcom/bykv/vk/openvk/preload/a/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->d:Lcom/bykv/vk/openvk/preload/a/d;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->f:Lcom/bykv/vk/openvk/preload/a/b/c;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->e:Lcom/bykv/vk/openvk/preload/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/s;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->a:Lcom/bykv/vk/openvk/preload/a/r;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->n()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/c$1;->b()Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c$1;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->h()Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/c$1;->b()Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
