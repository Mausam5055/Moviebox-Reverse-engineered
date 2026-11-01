.class final Lcom/bykv/vk/openvk/preload/a/b/g$a$1;
.super Lcom/bykv/vk/openvk/preload/a/b/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/a/b/g$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/g$a;)V
    .locals 0

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/a/b/g$a;->a:Lcom/bykv/vk/openvk/preload/a/b/g;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/g$c;-><init>(Lcom/bykv/vk/openvk/preload/a/b/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/g$c;->a()Lcom/bykv/vk/openvk/preload/a/b/g$d;

    move-result-object v0

    return-object v0
.end method
