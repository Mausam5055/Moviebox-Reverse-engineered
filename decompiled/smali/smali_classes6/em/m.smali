.class public Lem/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/json/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/json/m;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    instance-of v0, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    check-cast p3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p3

    const/4 v1, 0x1

    aget-object p3, p3, v1

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0}, Lem/m;->b()Ljava/util/HashMap;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    move-object v0, p4

    :cond_0
    if-ne p3, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p4, p3

    :goto_0
    invoke-virtual {p1, p2, v1, v0, p4}, Lcom/transsion/json/m;->l(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0}, Lem/m;->b()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p4, p4}, Lcom/transsion/json/m;->l(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
