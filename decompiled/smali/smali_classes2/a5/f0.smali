.class public La5/f0;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;


# static fields
.field public static a:La5/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/f0;

    invoke-direct {v0}, La5/f0;-><init>()V

    sput-object v0, La5/f0;->a:La5/f0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9

    iget-object p5, p1, La5/o0;->k:La5/j1;

    if-nez p2, :cond_0

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p5, p1}, La5/j1;->p0(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p5, v0}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p4

    aget-object p4, p4, v1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    move-object v0, p2

    check-cast v0, Ljava/util/Enumeration;

    iget-object v8, p1, La5/o0;->r:La5/e1;

    invoke-virtual {p1, v8, p2, p3, v1}, La5/o0;->w(La5/e1;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p2, 0x5b

    :try_start_0
    invoke-virtual {p5, p2}, La5/j1;->b(C)La5/j1;

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 p2, v1, 0x1

    if-eqz v1, :cond_2

    const/16 p3, 0x2c

    invoke-virtual {p5, p3}, La5/j1;->b(C)La5/j1;

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v4, :cond_3

    invoke-virtual {p5}, La5/j1;->m0()V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, La5/o0;->q(Ljava/lang/Class;)La5/z0;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    move-object v3, p1

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, La5/z0;->d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :goto_3
    move v1, p2

    goto :goto_1

    :cond_4
    const/16 p2, 0x5d

    invoke-virtual {p5, p2}, La5/j1;->b(C)La5/j1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v8, p1, La5/o0;->r:La5/e1;

    return-void

    :goto_4
    iput-object v8, p1, La5/o0;->r:La5/e1;

    throw p2
.end method
