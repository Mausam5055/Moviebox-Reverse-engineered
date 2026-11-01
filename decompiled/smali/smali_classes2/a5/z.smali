.class public La5/z;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;
.implements Lz4/b2;


# static fields
.field public static final a:La5/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/z;

    invoke-direct {v0}, La5/z;-><init>()V

    sput-object v0, La5/z;->a:La5/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Ly4/a;->f:Ly4/b;

    const/16 p2, 0x10

    invoke-interface {p1, p2}, Ly4/b;->c0(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class v0, Lcom/alibaba/fastjson/JSONArray;

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    invoke-virtual {p1, p2}, Ly4/a;->d0(Ljava/util/Collection;)V

    return-object p2

    :cond_1
    iget-object v0, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->Z()V

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->H(Ljava/lang/reflect/Type;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->G(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->V(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3}, Ly4/a;->c0(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0
.end method

.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9

    iget-object v0, p1, La5/o0;->k:La5/j1;

    if-nez p2, :cond_0

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, p1}, La5/j1;->p0(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p5, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->V(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p4

    :goto_1
    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    iget-object v8, p1, La5/o0;->r:La5/e1;

    const/4 v3, 0x0

    invoke-virtual {p1, v8, p2, p3, v3}, La5/o0;->w(La5/e1;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class p3, Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Set"

    invoke-virtual {v0, p2}, La5/j1;->d(Ljava/lang/CharSequence;)La5/j1;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class p3, Ljava/util/TreeSet;

    if-ne p3, p2, :cond_4

    const-string p2, "TreeSet"

    invoke-virtual {v0, p2}, La5/j1;->d(Ljava/lang/CharSequence;)La5/j1;

    :cond_4
    :goto_2
    const/16 p2, 0x5b

    :try_start_0
    invoke-virtual {v0, p2}, La5/j1;->b(C)La5/j1;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 p3, v3, 0x1

    if-eqz v3, :cond_5

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, La5/j1;->b(C)La5/j1;

    goto :goto_4

    :catchall_0
    move-exception p2

    goto/16 :goto_6

    :cond_5
    :goto_4
    if-nez v4, :cond_6

    invoke-virtual {v0}, La5/j1;->m0()V

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, La5/j1;->h0(I)V

    goto :goto_5

    :cond_7
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_8

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, La5/j1;->l0(J)V

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, La5/j1;->write(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v1}, La5/o0;->q(Ljava/lang/Class;)La5/z0;

    move-result-object v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p5, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, v2, La5/p0;

    if-eqz v1, :cond_9

    check-cast v2, La5/p0;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, La5/p0;->x(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_5

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, La5/z0;->d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :cond_a
    :goto_5
    move v3, p3

    goto :goto_3

    :cond_b
    const/16 p2, 0x5d

    invoke-virtual {v0, p2}, La5/j1;->b(C)La5/j1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v8, p1, La5/o0;->r:La5/e1;

    return-void

    :goto_6
    iput-object v8, p1, La5/o0;->r:La5/e1;

    throw p2
.end method
