.class final Lcom/bykv/vk/openvk/preload/a/b/a/m$25;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/bykv/vk/openvk/preload/a/c/a;

.field private synthetic b:Lcom/bykv/vk/openvk/preload/a/r;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/r;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m$25;->a:Lcom/bykv/vk/openvk/preload/a/c/a;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m$25;->b:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/d;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m$25;->a:Lcom/bykv/vk/openvk/preload/a/c/a;

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/preload/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m$25;->b:Lcom/bykv/vk/openvk/preload/a/r;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
