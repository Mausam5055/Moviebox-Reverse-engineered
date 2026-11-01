.class public final Lcom/bykv/vk/openvk/preload/b/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/b/h$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/bykv/vk/openvk/preload/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/bykv/vk/openvk/preload/b/b/a;

.field private c:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/bykv/vk/openvk/preload/b/h$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Lcom/bykv/vk/openvk/preload/b/h$a;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/b/h;->a:Ljava/lang/Class;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/b/h$a;->b(Lcom/bykv/vk/openvk/preload/b/h$a;)Lcom/bykv/vk/openvk/preload/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/b/h;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/b/h$a;->c(Lcom/bykv/vk/openvk/preload/b/h$a;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/b/h;->c:[Ljava/lang/Object;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/b/h;->a:Ljava/lang/Class;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Interceptor class == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/bykv/vk/openvk/preload/b/h$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/b/h;-><init>(Lcom/bykv/vk/openvk/preload/b/h$a;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/bykv/vk/openvk/preload/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/b/h;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    return-object v0
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/b/h;->c:[Ljava/lang/Object;

    return-object v0
.end method
