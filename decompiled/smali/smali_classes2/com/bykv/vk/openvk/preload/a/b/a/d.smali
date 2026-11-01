.class public final Lcom/bykv/vk/openvk/preload/a/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/a/s;


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/b/b;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/d;->a:Lcom/bykv/vk/openvk/preload/a/b/b;

    return-void
.end method

.method static a(Lcom/bykv/vk/openvk/preload/a/b/b;Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/a/a;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/b/b;",
            "Lcom/bykv/vk/openvk/preload/a/d;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "*>;",
            "Lcom/bykv/vk/openvk/preload/a/a/a;",
            ")",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/bykv/vk/openvk/preload/a/a/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/b;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/b/h;

    move-result-object p0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/preload/a/b/h;->a()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/bykv/vk/openvk/preload/a/r;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bykv/vk/openvk/preload/a/r;

    goto :goto_2

    :cond_0
    instance-of v0, p0, Lcom/bykv/vk/openvk/preload/a/s;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/bykv/vk/openvk/preload/a/s;

    invoke-interface {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/s;->a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object p0

    goto :goto_2

    :cond_1
    instance-of v0, p0, Lcom/bykv/vk/openvk/preload/a/o;

    if-nez v0, :cond_3

    instance-of v1, p0, Lcom/bykv/vk/openvk/preload/a/h;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/o;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    instance-of v0, p0, Lcom/bykv/vk/openvk/preload/a/h;

    if-eqz v0, :cond_5

    move-object v1, p0

    check-cast v1, Lcom/bykv/vk/openvk/preload/a/h;

    :cond_5
    move-object v4, v1

    new-instance p0, Lcom/bykv/vk/openvk/preload/a/b/a/k;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/bykv/vk/openvk/preload/a/b/a/k;-><init>(Lcom/bykv/vk/openvk/preload/a/o;Lcom/bykv/vk/openvk/preload/a/h;Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/s;)V

    :goto_2
    if-eqz p0, :cond_6

    invoke-interface {p3}, Lcom/bykv/vk/openvk/preload/a/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/r;->a()Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object p0

    :cond_6
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 2
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

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/bykv/vk/openvk/preload/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/a/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/d;->a:Lcom/bykv/vk/openvk/preload/a/b/b;

    invoke-static {v1, p1, p2, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/d;->a(Lcom/bykv/vk/openvk/preload/a/b/b;Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/a/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object p1

    return-object p1
.end method
