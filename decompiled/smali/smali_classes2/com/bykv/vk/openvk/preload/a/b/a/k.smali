.class public final Lcom/bykv/vk/openvk/preload/a/b/a/k;
.super Lcom/bykv/vk/openvk/preload/a/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/a/b/a/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/a/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bykv/vk/openvk/preload/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/bykv/vk/openvk/preload/a/d;

.field private final d:Lcom/bykv/vk/openvk/preload/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bykv/vk/openvk/preload/a/s;

.field private f:Lcom/bykv/vk/openvk/preload/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/a/o;Lcom/bykv/vk/openvk/preload/a/h;Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/o<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/a/h<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/a/d;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/a/s;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/r;-><init>()V

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/a/k$a;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/a/b/a/k$a;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->a:Lcom/bykv/vk/openvk/preload/a/o;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->b:Lcom/bykv/vk/openvk/preload/a/h;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->c:Lcom/bykv/vk/openvk/preload/a/d;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->d:Lcom/bykv/vk/openvk/preload/a/c/a;

    iput-object p5, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->e:Lcom/bykv/vk/openvk/preload/a/s;

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

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->f:Lcom/bykv/vk/openvk/preload/a/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->c:Lcom/bykv/vk/openvk/preload/a/d;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->e:Lcom/bykv/vk/openvk/preload/a/s;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->d:Lcom/bykv/vk/openvk/preload/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/s;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->f:Lcom/bykv/vk/openvk/preload/a/r;

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

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->b:Lcom/bykv/vk/openvk/preload/a/h;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/k;->b()Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Lcom/bykv/vk/openvk/preload/a/i;

    move-result-object p1

    instance-of p1, p1, Lcom/bykv/vk/openvk/preload/a/k;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->b:Lcom/bykv/vk/openvk/preload/a/h;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->d:Lcom/bykv/vk/openvk/preload/a/c/a;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/preload/a/h;->a()Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->a:Lcom/bykv/vk/openvk/preload/a/o;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/k;->b()Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->h()Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    :cond_1
    iget-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;->d:Lcom/bykv/vk/openvk/preload/a/c/a;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/a/o;->a()Lcom/bykv/vk/openvk/preload/a/i;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/bykv/vk/openvk/preload/geckox/h/a;->a(Lcom/bykv/vk/openvk/preload/a/i;Lcom/bykv/vk/openvk/preload/a/d/c;)V

    return-void
.end method
