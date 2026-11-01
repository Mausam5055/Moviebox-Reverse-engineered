.class final Lcom/bykv/vk/openvk/preload/a/b/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/b/i;

.field private synthetic b:Ljava/lang/Class;

.field private synthetic c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/b$6;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/b$6;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bykv/vk/openvk/preload/a/b/i;->a()Lcom/bykv/vk/openvk/preload/a/b/i;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/b$6;->a:Lcom/bykv/vk/openvk/preload/a/b/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/b$6;->a:Lcom/bykv/vk/openvk/preload/a/b/i;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/b$6;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/a/b/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/a/b/b$6;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
