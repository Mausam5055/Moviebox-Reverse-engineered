.class final Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

.field d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

.field e:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

.field f:Ljava/util/List;

.field g:I

.field h:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

.field i:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;

.field j:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->g:I

    return-object p0
.end method

.method b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cache == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method c(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "urls is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->i:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;

    return-object p0
.end method

.method e(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->h:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    return-object p0
.end method

.method g(Ljava/lang/Object;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->j:Ljava/lang/Object;

    return-object p0
.end method

.method h(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawKey == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method i(Ljava/util/List;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->f:Ljava/util/List;

    return-object p0
.end method

.method j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method k(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
