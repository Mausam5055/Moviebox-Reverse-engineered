.class final Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

.field b:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

.field c:Ljava/net/Socket;

.field d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    return-object p0
.end method

.method b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method c(Ljava/net/Socket;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->c:Ljava/net/Socket;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method d()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
