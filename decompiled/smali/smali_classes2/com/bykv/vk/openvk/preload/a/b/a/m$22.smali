.class final Lcom/bykv/vk/openvk/preload/a/b/a/m$22;
.super Lcom/bykv/vk/openvk/preload/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/a/r<",
        "Lcom/bykv/vk/openvk/preload/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/r;-><init>()V

    return-void
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/d/c;Lcom/bykv/vk/openvk/preload/a/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_b

    instance-of v0, p2, Lcom/bykv/vk/openvk/preload/a/k;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p2, Lcom/bykv/vk/openvk/preload/a/n;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    check-cast p2, Lcom/bykv/vk/openvk/preload/a/n;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/n;->a()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Ljava/lang/Number;)Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/n;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/n;->c()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/a/d/c;->d(Z)Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/n;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/a/d/c;->b(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not a JSON Primitive: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of v0, p2, Lcom/bykv/vk/openvk/preload/a/g;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->d()Lcom/bykv/vk/openvk/preload/a/d/c;

    if-eqz v0, :cond_6

    check-cast p2, Lcom/bykv/vk/openvk/preload/a/g;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/g;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/i;

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/m$22;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Lcom/bykv/vk/openvk/preload/a/i;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->e()Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not a JSON Array: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    instance-of v0, p2, Lcom/bykv/vk/openvk/preload/a/l;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->f()Lcom/bykv/vk/openvk/preload/a/d/c;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/bykv/vk/openvk/preload/a/l;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/l;->d()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/a/d/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/i;

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/m$22;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Lcom/bykv/vk/openvk/preload/a/i;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->g()Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not a JSON Object: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->h()Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void
.end method

.method private b(Lcom/bykv/vk/openvk/preload/a/d/a;)Lcom/bykv/vk/openvk/preload/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/b/a/m$30;->a:[I

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/l;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/a/l;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->c()V

    :goto_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/a/m$22;->b(Lcom/bykv/vk/openvk/preload/a/d/a;)Lcom/bykv/vk/openvk/preload/a/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/preload/a/l;->a(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/a/i;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->d()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/g;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/a/g;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/a/m$22;->b(Lcom/bykv/vk/openvk/preload/a/d/a;)Lcom/bykv/vk/openvk/preload/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/a/g;->a(Lcom/bykv/vk/openvk/preload/a/i;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->b()V

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->j()V

    sget-object p1, Lcom/bykv/vk/openvk/preload/a/k;->a:Lcom/bykv/vk/openvk/preload/a/k;

    return-object p1

    :pswitch_3
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/n;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/n;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/n;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/n;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/n;

    new-instance v1, Lcom/bykv/vk/openvk/preload/a/b/f;

    invoke-direct {v1, p1}, Lcom/bykv/vk/openvk/preload/a/b/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/preload/a/n;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/a/m$22;->b(Lcom/bykv/vk/openvk/preload/a/d/a;)Lcom/bykv/vk/openvk/preload/a/i;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/bykv/vk/openvk/preload/a/i;

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/b/a/m$22;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Lcom/bykv/vk/openvk/preload/a/i;)V

    return-void
.end method
