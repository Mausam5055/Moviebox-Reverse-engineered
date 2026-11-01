.class final Lcom/bykv/vk/openvk/preload/a/b/i$2;
.super Lcom/bykv/vk/openvk/preload/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/a/b/i;->a()Lcom/bykv/vk/openvk/preload/a/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/reflect/Method;

.field private synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/i$2;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Lcom/bykv/vk/openvk/preload/a/b/i$2;->b:I

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/a/b/i;->b(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/i$2;->a:Ljava/lang/reflect/Method;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/b/i$2;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
