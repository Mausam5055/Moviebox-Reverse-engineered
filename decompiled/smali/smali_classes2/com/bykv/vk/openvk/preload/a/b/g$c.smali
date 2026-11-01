.class abstract Lcom/bykv/vk/openvk/preload/a/b/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bykv/vk/openvk/preload/a/b/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/g$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bykv/vk/openvk/preload/a/b/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/g$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private c:I

.field private synthetic d:Lcom/bykv/vk/openvk/preload/a/b/g;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/g;)V
    .locals 1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->d:Lcom/bykv/vk/openvk/preload/a/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/g;->c:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/a/b/g$d;->d:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->a:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->b:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    iget p1, p1, Lcom/bykv/vk/openvk/preload/a/b/g;->b:I

    iput p1, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->c:I

    return-void
.end method


# virtual methods
.method final a()Lcom/bykv/vk/openvk/preload/a/b/g$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bykv/vk/openvk/preload/a/b/g$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->a:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->d:Lcom/bykv/vk/openvk/preload/a/b/g;

    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/a/b/g;->c:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/bykv/vk/openvk/preload/a/b/g;->b:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/a/b/g$d;->d:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->a:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->b:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->a:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->d:Lcom/bykv/vk/openvk/preload/a/b/g;

    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/a/b/g;->c:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->b:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->d:Lcom/bykv/vk/openvk/preload/a/b/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bykv/vk/openvk/preload/a/b/g;->a(Lcom/bykv/vk/openvk/preload/a/b/g$d;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->b:Lcom/bykv/vk/openvk/preload/a/b/g$d;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->d:Lcom/bykv/vk/openvk/preload/a/b/g;

    iget v0, v0, Lcom/bykv/vk/openvk/preload/a/b/g;->b:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/b/g$c;->c:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
