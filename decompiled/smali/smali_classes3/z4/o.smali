.class public Lz4/o;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/b2;


# instance fields
.field private final a:[Lz4/l;

.field protected final b:[Lz4/l;

.field protected final c:Ljava/lang/Class;

.field public final d:Lcom/alibaba/fastjson/util/h;

.field private e:Ljava/util/concurrent/ConcurrentMap;

.field private final f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private transient h:[J

.field private transient i:[S


# direct methods
.method public constructor <init>(Ly4/h;Lcom/alibaba/fastjson/util/h;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->a:Ljava/lang/Class;

    iput-object v0, p0, Lz4/o;->c:Ljava/lang/Class;

    iput-object p2, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->k:Lx4/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lx4/d;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ly4/h$c;

    if-eq v0, v1, :cond_0

    :try_start_0
    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->k:Lx4/d;

    invoke-interface {v0}, Lx4/d;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->i:[Lcom/alibaba/fastjson/util/d;

    array-length v1, v0

    new-array v1, v1, [Lz4/l;

    iput-object v1, p0, Lz4/o;->b:[Lz4/l;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v4, p2, Lcom/alibaba/fastjson/util/h;->i:[Lcom/alibaba/fastjson/util/d;

    aget-object v4, v4, v3

    invoke-virtual {p1, p1, p2, v4}, Ly4/h;->k(Ly4/h;Lcom/alibaba/fastjson/util/h;Lcom/alibaba/fastjson/util/d;)Lz4/l;

    move-result-object v5

    iget-object v6, p0, Lz4/o;->b:[Lz4/l;

    aput-object v5, v6, v3

    const/16 v6, 0x80

    if-le v0, v6, :cond_2

    iget-object v6, p0, Lz4/o;->g:Ljava/util/Map;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lz4/o;->g:Ljava/util/Map;

    :cond_1
    iget-object v6, p0, Lz4/o;->g:Ljava/util/Map;

    iget-object v7, v4, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v4, v4, Lcom/alibaba/fastjson/util/d;->u:[Ljava/lang/String;

    array-length v6, v4

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_3
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iput-object v2, p0, Lz4/o;->f:Ljava/util/Map;

    iget-object p1, p2, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length v0, p1

    new-array v0, v0, [Lz4/l;

    iput-object v0, p0, Lz4/o;->a:[Lz4/l;

    array-length p1, p1

    :goto_2
    if-ge v1, p1, :cond_6

    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lz4/o;->j(Ljava/lang/String;)Lz4/l;

    move-result-object v0

    iget-object v2, p0, Lz4/o;->a:[Lz4/l;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public constructor <init>(Ly4/h;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 6

    iget-object v2, p1, Ly4/h;->f:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v3, p1, Ly4/h;->m:Z

    iget-boolean v4, p1, Ly4/h;->o:Z

    invoke-virtual {p1}, Ly4/h;->v()Z

    move-result v5

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/h;->c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/h;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lz4/o;-><init>(Ly4/h;Lcom/alibaba/fastjson/util/h;)V

    return-void
.end method

.method private d(Ly4/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p1, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected static l(Ly4/h;Lcom/alibaba/fastjson/util/h;Ljava/lang/String;)Lz4/o;
    .locals 6

    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->k:Lx4/d;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lx4/d;->seeAlso()[Ljava/lang/Class;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v3

    instance-of v4, v3, Lz4/o;

    if-eqz v4, :cond_2

    check-cast v3, Lz4/o;

    iget-object v4, v3, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v5, v4, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    :cond_1
    invoke-static {p0, v4, p2}, Lz4/o;->l(Ly4/h;Lcom/alibaba/fastjson/util/h;Ljava/lang/String;)Lz4/o;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static m(I[I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    div-int/lit8 v1, p0, 0x20

    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget p1, p1, v1

    rem-int/lit8 p0, p0, 0x20

    const/4 v1, 0x1

    shl-int p0, v1, p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method protected a(Ly4/b;I)V
    .locals 0

    invoke-interface {p1}, Ly4/b;->q0()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lz4/o;->g(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/Map;Ly4/h;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v1, v0, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    if-nez v1, :cond_14

    iget-object v0, p0, Lz4/o;->c:Ljava/lang/Class;

    invoke-virtual {p0, v4, v0}, Lz4/o;->f(Ly4/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5}, Lz4/o;->q(Ljava/lang/String;)Lz4/l;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v5, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v7, v6, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    iget-object v8, v6, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    iget-object v9, v6, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/d;->e()Lx4/b;

    move-result-object v10

    iget-object v11, v6, Lcom/alibaba/fastjson/util/d;->g:Ljava/lang/Class;

    if-eqz v11, :cond_3

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v10, :cond_3

    invoke-interface {v10}, Lx4/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Void;

    if-eq v9, v10, :cond_3

    :cond_1
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_2

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONValidator;->m(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONValidator;->q()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    new-instance v1, Ly4/a;

    invoke-direct {v1, v6}, Ly4/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v0, v8, v4}, Lz4/l;->d(Ly4/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_e

    iget-object v9, v6, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    if-nez v9, :cond_e

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v9, :cond_4

    invoke-virtual {v7, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_4
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v9, :cond_e

    invoke-virtual {v7, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_5
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_6

    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_e

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_6
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_7

    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_e

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v7, v0, v5, v6}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_0

    :cond_7
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v11, 0xa

    if-ne v9, v10, :cond_a

    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_8

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    :cond_8
    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_e

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_9

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->L0(Ljava/lang/String;)F

    move-result v1

    goto :goto_2

    :cond_9
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :goto_2
    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    :cond_a
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_d

    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_b

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v7, v0, v5, v6}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    :cond_b
    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_e

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_c

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->K0(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_3

    :cond_c
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    :goto_3
    invoke-virtual {v7, v0, v5, v6}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_e

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->t:Ljava/lang/String;

    if-eqz v6, :cond_f

    const-class v7, Ljava/util/Date;

    if-ne v8, v7, :cond_f

    invoke-static {v1, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->p(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_4

    :cond_f
    if-eqz v6, :cond_10

    instance-of v7, v8, Ljava/lang/Class;

    if-eqz v7, :cond_10

    move-object v7, v8

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "java.time.LocalDateTime"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {v1, v6}, Lz4/y1;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_10
    instance-of v6, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_11

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->g(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Ly4/h;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_11
    invoke-static {v1, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Ly4/h;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    invoke-virtual {v5, v0, v1}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    iget-object p1, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->f:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_13

    :try_start_0
    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "build object error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_13
    return-object v0

    :cond_14
    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/Object;

    move v6, v3

    move-object v7, v4

    :goto_5
    if-ge v6, v1, :cond_1f

    aget-object v8, v0, v6

    iget-object v9, v8, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1e

    iget-object v10, v8, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_6

    :cond_15
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_16

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_6

    :cond_16
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_17

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    goto :goto_6

    :cond_17
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_18

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    goto :goto_6

    :cond_18
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_19

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_6

    :cond_19
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1a

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_6

    :cond_1a
    sget-object v11, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1b

    const/16 v9, 0x30

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    goto :goto_6

    :cond_1b
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1c

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1c
    :goto_6
    if-nez v7, :cond_1d

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :cond_1d
    iget-object v8, v8, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    aput-object v9, v5, v6

    add-int/2addr v6, v2

    goto :goto_5

    :cond_1f
    if-eqz v7, :cond_21

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v6}, Lz4/o;->q(Ljava/lang/String;)Lz4/l;

    move-result-object v6

    if-eqz v6, :cond_20

    iget-object v6, v6, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_20

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput-object v0, v5, v6

    goto :goto_7

    :cond_21
    iget-object p1, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v0, p1, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_29

    iget-boolean p1, p1, Lcom/alibaba/fastjson/util/h;->q:Z

    if-eqz p1, :cond_24

    move p1, v3

    move v0, p1

    :goto_8
    if-ge p1, v1, :cond_25

    aget-object v6, v5, p1

    if-nez v6, :cond_22

    iget-object v6, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    if-eqz v6, :cond_23

    array-length v7, v6

    if-ge p1, v7, :cond_23

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_23

    move v0, v2

    goto :goto_9

    :cond_22
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    if-eq v7, v8, :cond_23

    invoke-static {v6, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;Ly4/h;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, p1

    :cond_23
    :goto_9
    add-int/2addr p1, v2

    goto :goto_8

    :cond_24
    move v0, v3

    :cond_25
    const-string p1, "create instance error, "

    if-eqz v0, :cond_28

    iget-object p2, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/h;->r:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_28

    :try_start_1
    invoke-virtual {p2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_a
    if-ge v3, v1, :cond_27

    aget-object v0, v5, v3

    if-eqz v0, :cond_26

    iget-object v4, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    if-eqz v4, :cond_26

    array-length v6, v4

    if-ge v3, v6, :cond_26

    aget-object v4, v4, v3

    invoke-virtual {v4, p2, v0}, Lcom/alibaba/fastjson/util/d;->o(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception p2

    goto :goto_c

    :cond_26
    :goto_b
    add-int/2addr v3, v2

    goto :goto_a

    :cond_27
    move-object v4, p2

    goto :goto_d

    :goto_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :try_start_2
    iget-object p2, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, p1

    goto :goto_d

    :catch_2
    move-exception p2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_29
    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2a

    :try_start_3
    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_d

    :catch_3
    move-exception p1

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create factory method error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2a
    :goto_d
    return-object v4
.end method

.method public f(Ly4/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "create instance error, class "

    instance-of v3, p2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lz4/o;->c:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    new-array v1, v1, [Ljava/lang/Class;

    aput-object p2, v1, v0

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v3, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v4, v3, Lcom/alibaba/fastjson/util/h;->c:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    iget-object v6, v3, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    if-nez v6, :cond_1

    return-object v5

    :cond_1
    iget-object v6, v3, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_2

    iget v7, v3, Lcom/alibaba/fastjson/util/h;->g:I

    if-lez v7, :cond_2

    return-object v5

    :cond_2
    :try_start_0
    iget v3, v3, Lcom/alibaba/fastjson/util/h;->g:I

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v6, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Ly4/a;->n()Ly4/g;

    move-result-object v3
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "can\'t create non-static inner class instance."

    if-eqz v3, :cond_e

    :try_start_1
    iget-object v7, v3, Ly4/g;->a:Ljava/lang/Object;

    if-eqz v7, :cond_e

    instance-of v7, p2, Ljava/lang/Class;

    if-eqz v7, :cond_d

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v7, 0x24

    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {p2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object v7, v3, Ly4/g;->a:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v3, v3, Ly4/g;->b:Ly4/g;

    if-eqz v3, :cond_6

    iget-object v9, v3, Ly4/g;->a:Ljava/lang/Object;

    if-eqz v9, :cond_6

    const-string v9, "java.util.ArrayList"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "java.util.List"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "java.util.Collection"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "java.util.Map"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "java.util.HashMap"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    iget-object v7, v3, Ly4/g;->a:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object v5, v3, Ly4/g;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    move-object v5, v7

    :cond_7
    :goto_0
    move-object v7, v5

    :cond_8
    if-eqz v7, :cond_c

    instance-of p2, v7, Ljava/util/Collection;

    if-eqz p2, :cond_9

    move-object p2, v7

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    :cond_9
    new-array p2, v1, [Ljava/lang/Object;

    aput-object v7, p2, v0

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-eqz p1, :cond_b

    iget-object p1, p1, Ly4/a;->f:Ly4/b;

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {p1, v3}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length v3, p1

    :goto_2
    if-ge v0, v3, :cond_b

    aget-object v4, p1, v0

    iget-object v5, v4, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_a

    :try_start_2
    const-string v5, ""

    invoke-virtual {v4, p2, v5}, Lcom/alibaba/fastjson/util/d;->o(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz4/o;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    :goto_3
    add-int/2addr v0, v1

    goto :goto_2

    :cond_b
    return-object p2

    :cond_c
    :try_start_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz4/o;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_5
    throw p1
.end method

.method public g(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lz4/o;->h(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected h(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    const-class v1, Lcom/alibaba/fastjson/a;

    if-eq v0, v1, :cond_96

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    if-ne v0, v1, :cond_0

    goto/16 :goto_47

    :cond_0
    iget-object v1, v9, Ly4/a;->f:Ly4/b;

    move-object v11, v1

    check-cast v11, Ly4/c;

    invoke-virtual/range {p1 .. p1}, Ly4/a;->m()Ly4/h;

    move-result-object v12

    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v1

    const/16 v2, 0x8

    const/16 v13, 0x10

    const/4 v14, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {v11, v13}, Ly4/c;->c0(I)V

    return-object v14

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ly4/a;->n()Ly4/g;

    move-result-object v2

    if-eqz p4, :cond_2

    if-eqz v2, :cond_2

    iget-object v2, v2, Ly4/g;->b:Ly4/g;

    :cond_2
    move-object v15, v2

    const/16 v7, 0xd

    if-ne v1, v7, :cond_4

    :try_start_0
    invoke-virtual {v11, v13}, Ly4/c;->c0(I)V

    if-nez p4, :cond_3

    invoke-virtual/range {p0 .. p2}, Lz4/o;->f(Ly4/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v5, p4

    goto/16 :goto_46

    :cond_3
    move-object/from16 v0, p4

    :goto_0
    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :cond_4
    const/16 v2, 0xe

    if-ne v1, v2, :cond_6

    :try_start_1
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    iget-object v5, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget v5, v5, Lcom/alibaba/fastjson/util/h;->j:I

    and-int/2addr v5, v4

    if-nez v5, :cond_5

    invoke-virtual {v11, v3}, Ly4/c;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_5

    and-int v3, p5, v4

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p4}, Lz4/o;->i(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :cond_6
    const/16 v3, 0xc

    const-class v6, Ljava/lang/Integer;

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x4

    if-eq v1, v3, :cond_f

    if-eq v1, v13, :cond_f

    :try_start_2
    invoke-virtual {v11}, Ly4/c;->U()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v14

    :cond_7
    if-ne v1, v7, :cond_a

    :try_start_3
    invoke-virtual {v11}, Ly4/c;->k0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_8

    :try_start_4
    invoke-virtual {v11}, Ly4/c;->Z()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v14

    :cond_8
    :try_start_5
    iget-object v3, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/h;->k:Lx4/d;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Lx4/d;->seeAlso()[Ljava/lang/Class;

    move-result-object v3

    array-length v13, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v13, :cond_a

    aget-object v4, v3, v7

    const-class v14, Ljava/lang/Enum;

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v14, :cond_9

    :try_start_6
    invoke-static {v4, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v5, p4

    const/4 v14, 0x0

    goto/16 :goto_46

    :catch_0
    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x0

    goto :goto_1

    :cond_a
    if-ne v1, v2, :cond_b

    :try_start_7
    invoke-virtual {v11}, Ly4/c;->d()C

    move-result v0

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_b

    invoke-virtual {v11}, Ly4/c;->next()C

    invoke-virtual {v11}, Ly4/c;->Z()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    const/4 v1, 0x0

    return-object v1

    :cond_b
    :try_start_8
    iget-object v0, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v2, v0, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length v2, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x0

    :try_start_9
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    if-ne v0, v6, :cond_c

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    invoke-virtual {v11}, Ly4/c;->o()I

    move-result v0

    invoke-virtual {v11}, Ly4/c;->Z()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v8, v12, v0}, Lz4/o;->d(Ly4/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_c
    if-ne v0, v5, :cond_d

    const/4 v0, 0x4

    if-ne v1, v0, :cond_d

    :try_start_a
    invoke-virtual {v11}, Ly4/c;->k0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ly4/c;->Z()V

    invoke-direct {v8, v12, v0}, Lz4/o;->d(Ly4/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :goto_2
    :try_start_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ly4/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ly4/c;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    instance-of v1, v10, Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v1, ", fieldName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, ", fastjson-version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.83"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_f
    :try_start_c
    iget v1, v9, Ly4/a;->k:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    const/4 v4, 0x0

    :try_start_d
    iput v4, v9, Ly4/a;->k:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    :cond_10
    const/4 v4, 0x0

    :goto_3
    :try_start_e
    iget-object v1, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v14, v1, Lcom/alibaba/fastjson/util/h;->m:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move v3, v4

    move v7, v3

    const/4 v4, 0x0

    const/16 v17, 0x0

    :goto_4
    :try_start_f
    iget-object v13, v8, Lz4/o;->b:[Lz4/l;

    array-length v0, v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    if-ge v7, v0, :cond_13

    const/16 v0, 0x10

    if-ge v3, v0, :cond_13

    :try_start_10
    aget-object v0, v13, v7

    iget-object v13, v0, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    move/from16 p4, v7

    iget-object v7, v13, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/d;->e()Lx4/b;

    move-result-object v21

    if-eqz v21, :cond_11

    move-object/from16 p6, v7

    instance-of v7, v0, Lz4/f;

    if-eqz v7, :cond_12

    move-object v7, v0

    check-cast v7, Lz4/f;

    iget-boolean v7, v7, Lz4/f;->d:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :goto_5
    move-object/from16 v32, v2

    move-object/from16 v2, p6

    move-object/from16 p6, v32

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v5, v1

    :goto_6
    move-object v14, v4

    goto/16 :goto_46

    :cond_11
    move-object/from16 p6, v7

    :cond_12
    const/4 v7, 0x0

    goto :goto_5

    :cond_13
    move/from16 p4, v7

    move-object/from16 p6, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v21, 0x0

    :goto_7
    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    if-eqz v0, :cond_3c

    move-object/from16 v27, v1

    :try_start_11
    iget-object v1, v13, Lcom/alibaba/fastjson/util/d;->p:[C

    if-eqz v7, :cond_14

    invoke-virtual {v11, v1}, Ly4/c;->O0([C)Z

    move-result v7

    if-eqz v7, :cond_14

    move-object/from16 v28, v12

    :goto_8
    const/4 v1, 0x0

    const/4 v7, 0x1

    :goto_9
    const/4 v12, 0x0

    goto/16 :goto_18

    :catchall_3
    move-exception v0

    move-object v14, v4

    move-object/from16 v5, v27

    goto/16 :goto_46

    :cond_14
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v28, v12

    const/4 v12, -0x2

    if-eq v2, v7, :cond_39

    if-ne v2, v6, :cond_15

    goto/16 :goto_16

    :cond_15
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v7, :cond_36

    const-class v7, Ljava/lang/Long;

    if-ne v2, v7, :cond_16

    goto/16 :goto_14

    :cond_16
    if-ne v2, v5, :cond_19

    invoke-virtual {v11, v1}, Ly4/c;->g1([C)Ljava/lang/String;

    move-result-object v1

    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_17

    :goto_a
    const/4 v7, 0x1

    const/4 v12, 0x1

    goto/16 :goto_18

    :cond_17
    if-ne v7, v12, :cond_18

    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, p2

    move/from16 v30, p4

    move/from16 v19, v3

    move-object v13, v5

    move-object/from16 v20, v17

    move-object/from16 v21, v28

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v18, 0x4

    move-object/from16 v17, p6

    move-object/from16 v28, v6

    goto/16 :goto_45

    :cond_18
    :goto_c
    const/4 v7, 0x0

    goto :goto_9

    :cond_19
    const-class v7, Ljava/util/Date;

    if-ne v2, v7, :cond_1b

    iget-object v7, v13, Lcom/alibaba/fastjson/util/d;->t:Ljava/lang/String;

    if-nez v7, :cond_1b

    invoke-virtual {v11, v1}, Ly4/c;->X0([C)Ljava/util/Date;

    move-result-object v1

    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_1a

    goto :goto_a

    :cond_1a
    if-ne v7, v12, :cond_18

    goto :goto_b

    :cond_1b
    const-class v7, Ljava/math/BigDecimal;

    if-ne v2, v7, :cond_1d

    invoke-virtual {v11, v1}, Ly4/c;->Y0([C)Ljava/math/BigDecimal;

    move-result-object v1

    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_1c

    goto :goto_a

    :cond_1c
    if-ne v7, v12, :cond_18

    goto :goto_b

    :cond_1d
    const-class v7, Ljava/math/BigInteger;

    if-ne v2, v7, :cond_1f

    invoke-virtual {v11, v1}, Ly4/c;->V0([C)Ljava/math/BigInteger;

    move-result-object v1

    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_1e

    goto :goto_a

    :cond_1e
    if-ne v7, v12, :cond_18

    goto :goto_b

    :cond_1f
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v7, :cond_33

    const-class v7, Ljava/lang/Boolean;

    if-ne v2, v7, :cond_20

    goto/16 :goto_12

    :cond_20
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v7, :cond_30

    const-class v7, Ljava/lang/Float;

    if-ne v2, v7, :cond_21

    goto/16 :goto_10

    :cond_21
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v7, :cond_2d

    const-class v7, Ljava/lang/Double;

    if-ne v2, v7, :cond_22

    goto/16 :goto_e

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-virtual/range {p1 .. p1}, Ly4/a;->m()Ly4/h;

    move-result-object v7

    invoke-virtual {v7, v2}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v7

    instance-of v7, v7, Lz4/h;

    if-eqz v7, :cond_25

    if-eqz v21, :cond_23

    invoke-interface/range {v21 .. v21}, Lx4/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object v7

    const-class v12, Ljava/lang/Void;

    if-ne v7, v12, :cond_25

    :cond_23
    instance-of v7, v0, Lz4/f;

    if-eqz v7, :cond_3d

    move-object v7, v0

    check-cast v7, Lz4/f;

    iget-object v7, v7, Lz4/f;->c:Lz4/b2;

    invoke-virtual {v8, v11, v1, v7}, Lz4/o;->p(Ly4/c;[CLz4/b2;)Ljava/lang/Enum;

    move-result-object v1

    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_24

    goto/16 :goto_a

    :cond_24
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_25
    const-class v7, [I

    if-ne v2, v7, :cond_27

    invoke-virtual {v11, v1}, Ly4/c;->e1([C)[I

    move-result-object v1

    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_26

    goto/16 :goto_a

    :cond_26
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_27
    const-class v7, [F

    if-ne v2, v7, :cond_29

    invoke-virtual {v11, v1}, Ly4/c;->b1([C)[F

    move-result-object v1

    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_28

    goto/16 :goto_a

    :cond_28
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_29
    const-class v7, [[F

    if-ne v2, v7, :cond_2b

    invoke-virtual {v11, v1}, Ly4/c;->c1([C)[[F

    move-result-object v1

    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_2a

    goto/16 :goto_a

    :cond_2a
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_2b
    invoke-virtual {v11, v1}, Ly4/c;->O0([C)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto/16 :goto_8

    :cond_2c
    move/from16 v21, v3

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    :goto_d
    move-object/from16 v5, v27

    move-object/from16 v6, v28

    const/16 v1, 0xd

    goto/16 :goto_27

    :cond_2d
    :goto_e
    invoke-virtual {v11, v1}, Ly4/c;->Z0([C)D

    move-result-wide v30

    cmpl-double v1, v30, v25

    if-nez v1, :cond_2e

    iget v1, v11, Ly4/c;->n:I

    const/4 v7, 0x5

    if-ne v1, v7, :cond_2e

    const/4 v1, 0x0

    goto :goto_f

    :cond_2e
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_f
    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_2f

    goto/16 :goto_a

    :cond_2f
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_30
    :goto_10
    invoke-virtual {v11, v1}, Ly4/c;->a1([C)F

    move-result v1

    cmpl-float v7, v1, v24

    if-nez v7, :cond_31

    iget v7, v11, Ly4/c;->n:I

    const/4 v12, 0x5

    if-ne v7, v12, :cond_31

    const/4 v1, 0x0

    goto :goto_11

    :cond_31
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_11
    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_32

    goto/16 :goto_a

    :cond_32
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_33
    :goto_12
    invoke-virtual {v11, v1}, Ly4/c;->W0([C)Z

    move-result v1

    iget v7, v11, Ly4/c;->n:I

    const/4 v12, 0x5

    if-ne v7, v12, :cond_34

    const/4 v1, 0x0

    goto :goto_13

    :cond_34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_13
    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_35

    goto/16 :goto_a

    :cond_35
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_36
    :goto_14
    invoke-virtual {v11, v1}, Ly4/c;->f1([C)J

    move-result-wide v30

    cmp-long v1, v30, v22

    if-nez v1, :cond_37

    iget v1, v11, Ly4/c;->n:I

    const/4 v7, 0x5

    if-ne v1, v7, :cond_37

    const/4 v1, 0x0

    goto :goto_15

    :cond_37
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_15
    iget v7, v11, Ly4/c;->n:I

    if-lez v7, :cond_38

    goto/16 :goto_a

    :cond_38
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_39
    :goto_16
    invoke-virtual {v11, v1}, Ly4/c;->d1([C)I

    move-result v1

    if-nez v1, :cond_3a

    iget v7, v11, Ly4/c;->n:I

    const/4 v12, 0x5

    if-ne v7, v12, :cond_3a

    const/4 v1, 0x0

    goto :goto_17

    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_17
    iget v7, v11, Ly4/c;->n:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-lez v7, :cond_3b

    goto/16 :goto_a

    :cond_3b
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_3c
    move-object/from16 v27, v1

    move-object/from16 v28, v12

    :cond_3d
    const/4 v1, 0x0

    goto/16 :goto_c

    :goto_18
    if-nez v7, :cond_5c

    move/from16 v21, v3

    :try_start_12
    iget-object v3, v9, Ly4/a;->b:Ly4/i;

    invoke-virtual {v11, v3}, Ly4/c;->i(Ly4/i;)Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-nez v3, :cond_3f

    move-object/from16 v29, v6

    :try_start_13
    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v6

    move-object/from16 v30, v5

    const/16 v5, 0xd

    if-ne v6, v5, :cond_3e

    const/16 v5, 0x10

    invoke-virtual {v11, v5}, Ly4/c;->c0(I)V

    :goto_19
    move-object/from16 v5, v27

    goto/16 :goto_26

    :cond_3e
    const/16 v5, 0x10

    if-ne v6, v5, :cond_40

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v11, v5}, Ly4/c;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v5, :cond_40

    goto/16 :goto_d

    :cond_3f
    move-object/from16 v30, v5

    move-object/from16 v29, v6

    :cond_40
    :try_start_14
    const-string v5, "$ref"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-ne v5, v3, :cond_4e

    if-eqz v15, :cond_4e

    const/4 v5, 0x4

    :try_start_15
    invoke-virtual {v11, v5}, Ly4/c;->q(I)V

    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v0

    if-ne v0, v5, :cond_4d

    invoke-virtual {v11}, Ly4/c;->k0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v0, v15, Ly4/g;->a:Ljava/lang/Object;

    move-object v1, v0

    :goto_1a
    const/16 v0, 0xd

    goto/16 :goto_1f

    :cond_41
    const-string v1, ".."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, v15, Ly4/g;->b:Ly4/g;

    iget-object v2, v1, Ly4/g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_42

    :goto_1b
    move-object v1, v2

    goto :goto_1a

    :cond_42
    new-instance v2, Ly4/a$a;

    invoke-direct {v2, v1, v0}, Ly4/a$a;-><init>(Ly4/g;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ly4/a;->i(Ly4/a$a;)V

    const/4 v0, 0x1

    iput v0, v9, Ly4/a;->k:I

    goto :goto_1e

    :cond_43
    const-string v1, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    move-object v1, v15

    :goto_1c
    iget-object v2, v1, Ly4/g;->b:Ly4/g;

    if-eqz v2, :cond_44

    move-object v1, v2

    goto :goto_1c

    :cond_44
    iget-object v2, v1, Ly4/g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_45

    goto :goto_1b

    :cond_45
    new-instance v2, Ly4/a$a;

    invoke-direct {v2, v1, v0}, Ly4/a$a;-><init>(Ly4/g;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ly4/a;->i(Ly4/a$a;)V

    const/4 v0, 0x1

    iput v0, v9, Ly4/a;->k:I

    goto :goto_1e

    :cond_46
    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_48

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_47

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :cond_47
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_1d

    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_49
    invoke-virtual {v9, v0}, Ly4/a;->x0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4a

    goto :goto_1a

    :cond_4a
    new-instance v1, Ly4/a$a;

    invoke-direct {v1, v15, v0}, Ly4/a$a;-><init>(Ly4/g;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ly4/a;->i(Ly4/a$a;)V

    const/4 v0, 0x1

    iput v0, v9, Ly4/a;->k:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :goto_1e
    move-object/from16 v1, v27

    goto :goto_1a

    :goto_1f
    :try_start_16
    invoke-virtual {v11, v0}, Ly4/c;->c0(I)V

    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v2

    if-ne v2, v0, :cond_4c

    const/16 v0, 0x10

    invoke-virtual {v11, v0}, Ly4/c;->c0(I)V

    invoke-virtual {v9, v15, v1, v10}, Ly4/a;->z0(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-eqz v4, :cond_4b

    iput-object v1, v4, Ly4/g;->a:Ljava/lang/Object;

    :cond_4b
    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v1

    :cond_4c
    :try_start_17
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :cond_4d
    :try_start_18
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    if-eqz v14, :cond_50

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-nez v5, :cond_4f

    goto :goto_21

    :cond_4f
    :goto_20
    const/4 v0, 0x4

    goto :goto_22

    :cond_50
    :goto_21
    :try_start_19
    sget-object v5, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v5, v3, :cond_5b

    goto :goto_20

    :goto_22
    invoke-virtual {v11, v0}, Ly4/c;->q(I)V

    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v1

    if-ne v1, v0, :cond_5a

    invoke-virtual {v11}, Ly4/c;->k0()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v11, v1}, Ly4/c;->c0(I)V

    iget-object v1, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v9, v1}, Ly4/a;->x(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_51
    move-object/from16 v5, v27

    move-object/from16 v6, v28

    goto/16 :goto_25

    :cond_52
    iget-object v1, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    move-object/from16 v6, v28

    invoke-static {v6, v1, v0}, Lz4/o;->l(Ly4/h;Lcom/alibaba/fastjson/util/h;Ljava/lang/String;)Lz4/o;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-nez v1, :cond_56

    :try_start_1a
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "java.util.HashMap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "java.util.LinkedHashMap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_23

    :cond_53
    invoke-virtual {v11}, Ly4/c;->r()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Ly4/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ly4/a;->m()Ly4/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v2

    move-object/from16 v32, v2

    move-object v2, v1

    move-object/from16 v1, v32

    goto :goto_24

    :cond_54
    :goto_23
    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_55

    invoke-virtual {v11}, Ly4/c;->Z()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto/16 :goto_19

    :cond_55
    move-object/from16 v5, v27

    goto :goto_27

    :cond_56
    const/4 v2, 0x0

    :goto_24
    :try_start_1b
    invoke-interface {v1, v9, v2, v10}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v1, Lz4/o;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    if-eqz v3, :cond_57

    :try_start_1c
    check-cast v1, Lz4/o;

    if-eqz v14, :cond_57

    invoke-virtual {v1, v14}, Lz4/o;->j(Ljava/lang/String;)Lz4/l;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v1, v2, v0}, Lz4/l;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :cond_57
    if-eqz v4, :cond_58

    move-object/from16 v5, v27

    iput-object v5, v4, Ly4/g;->a:Ljava/lang/Object;

    :cond_58
    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v2

    :catchall_4
    move-exception v0

    move-object/from16 v5, v27

    goto/16 :goto_6

    :goto_25
    :try_start_1d
    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_59

    invoke-virtual {v11}, Ly4/c;->Z()V

    :goto_26
    move-object/from16 v12, p2

    move-object/from16 v29, v5

    move-object/from16 v0, v17

    move-object/from16 v13, v30

    const/16 p6, 0x0

    goto/16 :goto_36

    :catchall_5
    move-exception v0

    goto/16 :goto_6

    :cond_59
    :goto_27
    move-object/from16 v12, p2

    move v0, v1

    move-object/from16 v27, v5

    move-object/from16 v20, v17

    move/from16 v19, v21

    move-object/from16 v28, v29

    move-object/from16 v13, v30

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v18, 0x4

    move/from16 v30, p4

    move-object/from16 v17, p6

    move-object/from16 v21, v6

    goto/16 :goto_45

    :cond_5a
    move-object/from16 v5, v27

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :cond_5b
    move-object/from16 v5, v27

    move-object/from16 v6, v28

    const/16 v16, 0xd

    goto :goto_28

    :cond_5c
    move/from16 v21, v3

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    const/16 v16, 0xd

    const/4 v3, 0x0

    :goto_28
    if-nez v5, :cond_5f

    if-nez v17, :cond_5f

    :try_start_1e
    invoke-virtual/range {p0 .. p2}, Lz4/o;->f(Ly4/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    if-nez v5, :cond_5d

    move-object/from16 v27, v4

    :try_start_1f
    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v28, v6

    iget-object v6, v8, Lz4/o;->a:[Lz4/l;

    array-length v6, v6

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v17, v4

    goto :goto_2a

    :catchall_6
    move-exception v0

    :goto_29
    move-object/from16 v14, v27

    goto/16 :goto_46

    :cond_5d
    move-object/from16 v27, v4

    move-object/from16 v28, v6

    :goto_2a
    invoke-virtual {v9, v15, v5, v10}, Ly4/a;->z0(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-nez p6, :cond_5e

    :try_start_20
    iget-object v6, v8, Lz4/o;->a:[Lz4/l;

    array-length v6, v6

    div-int/lit8 v6, v6, 0x20

    const/16 v20, 0x1

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    move-object/from16 v27, v4

    move-object/from16 v32, v6

    move-object v6, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v32

    goto :goto_2d

    :cond_5e
    move-object/from16 v27, v4

    :goto_2b
    move-object v6, v5

    move-object/from16 v5, v17

    move-object/from16 v17, p6

    goto :goto_2d

    :catchall_7
    move-exception v0

    :goto_2c
    move-object/from16 v27, v4

    goto :goto_29

    :cond_5f
    move-object/from16 v27, v4

    move-object/from16 v28, v6

    goto :goto_2b

    :goto_2d
    if-eqz v7, :cond_68

    if-nez v12, :cond_60

    move-object/from16 v12, p2

    :try_start_21
    invoke-virtual {v0, v9, v6, v12, v5}, Lz4/l;->d(Ly4/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move-object/from16 v20, v5

    move/from16 v0, v16

    move/from16 v19, v21

    move-object/from16 v21, v28

    move-object/from16 v28, v29

    move-object/from16 v13, v30

    const/16 p6, 0x0

    const/16 v18, 0x4

    move/from16 v30, p4

    move-object/from16 v29, v6

    goto/16 :goto_34

    :catchall_8
    move-exception v0

    move-object v5, v6

    goto :goto_29

    :cond_60
    move-object/from16 v12, p2

    if-nez v6, :cond_62

    iget-object v0, v13, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    :goto_2e
    move-object/from16 v7, v30

    goto :goto_2f

    :cond_62
    if-nez v1, :cond_63

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    invoke-virtual {v0, v6, v1}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_63
    move-object/from16 v7, v30

    if-ne v2, v7, :cond_65

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int v3, p5, v2

    if-nez v3, :cond_64

    iget-object v3, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget v3, v3, Lcom/alibaba/fastjson/util/h;->j:I

    and-int/2addr v3, v2

    if-nez v3, :cond_64

    iget v3, v13, Lcom/alibaba/fastjson/util/d;->j:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_65

    :cond_64
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_65
    invoke-virtual {v0, v6, v1}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2f
    if-eqz v17, :cond_66

    div-int/lit8 v0, p4, 0x20

    rem-int/lit8 v1, p4, 0x20

    aget v2, v17, v0

    const/4 v4, 0x1

    shl-int v1, v4, v1

    or-int/2addr v1, v2

    aput v1, v17, v0

    goto :goto_30

    :cond_66
    const/4 v4, 0x1

    :goto_30
    iget v0, v11, Ly4/c;->n:I

    const/4 v13, 0x4

    if-ne v0, v13, :cond_67

    move-object/from16 v20, v5

    move-object/from16 v29, v6

    move-object v13, v7

    const/16 p6, 0x0

    goto/16 :goto_35

    :cond_67
    move/from16 v30, p4

    move-object/from16 v20, v5

    move/from16 v18, v13

    move/from16 v0, v16

    move/from16 v19, v21

    move-object/from16 v21, v28

    move-object/from16 v28, v29

    const/16 p6, 0x0

    move-object/from16 v29, v6

    move-object v13, v7

    goto :goto_34

    :cond_68
    move-object/from16 v12, p2

    move-object/from16 v7, v30

    const/4 v4, 0x1

    const/4 v13, 0x4

    if-nez v5, :cond_69

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, v8, Lz4/o;->a:[Lz4/l;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    goto :goto_31

    :cond_69
    move-object v0, v5

    :goto_31
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v19, v21

    move v13, v4

    const/16 p6, 0x0

    move-object v4, v6

    move-object/from16 v20, v5

    move-object/from16 v5, p2

    move-object/from16 v21, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v6

    move-object v6, v0

    move/from16 v30, p4

    move-object v13, v7

    move/from16 v0, v16

    const/16 v18, 0x4

    move-object/from16 v7, v17

    :try_start_22
    invoke-virtual/range {v1 .. v7}, Lz4/o;->n(Ly4/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v1

    if-ne v1, v0, :cond_6a

    invoke-virtual {v11}, Ly4/c;->Z()V

    goto :goto_35

    :catchall_9
    move-exception v0

    move-object/from16 v14, v27

    :goto_32
    move-object/from16 v5, v29

    goto/16 :goto_46

    :cond_6a
    move/from16 v1, p6

    const/16 v2, 0x10

    :goto_33
    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_44

    :cond_6b
    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_94

    :goto_34
    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6c

    move/from16 v1, p6

    goto :goto_33

    :cond_6c
    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v1

    if-ne v1, v0, :cond_92

    invoke-virtual {v11, v2}, Ly4/c;->c0(I)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :goto_35
    move-object/from16 v0, v20

    move-object/from16 v4, v27

    :goto_36
    if-nez v29, :cond_8d

    if-nez v0, :cond_6f

    :try_start_23
    invoke-virtual/range {p0 .. p2}, Lz4/o;->f(Ly4/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    if-nez v4, :cond_6d

    :try_start_24
    invoke-virtual {v9, v15, v1, v10}, Ly4/a;->z0(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    :cond_6d
    if-eqz v4, :cond_6e

    iput-object v1, v4, Ly4/g;->a:Ljava/lang/Object;

    :cond_6e
    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v1

    :catchall_a
    move-exception v0

    move-object v14, v4

    goto :goto_32

    :cond_6f
    :try_start_25
    iget-object v1, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v2, v1, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    const-string v3, ""

    if-eqz v2, :cond_7a

    :try_start_26
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    move/from16 v5, p6

    :goto_37
    array-length v6, v2

    if-ge v5, v6, :cond_84

    aget-object v6, v2, v5

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_78

    iget-object v7, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v10, v7, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    aget-object v10, v10, v5

    iget-object v7, v7, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    aget-object v7, v7, v5

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_70

    invoke-static/range {p6 .. p6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    goto :goto_38

    :cond_70
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_71

    invoke-static/range {p6 .. p6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto :goto_38

    :cond_71
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_72

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_38

    :cond_72
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_73

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_38

    :cond_73
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_74

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_38

    :cond_74
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_75

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_38

    :cond_75
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_76

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_38

    :cond_76
    if-ne v10, v13, :cond_77

    iget v7, v7, Lcom/alibaba/fastjson/util/d;->j:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_77

    move-object v6, v3

    :cond_77
    :goto_38
    move/from16 v11, p6

    goto :goto_39

    :cond_78
    iget-object v7, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    if-eqz v7, :cond_77

    array-length v10, v7

    if-ge v5, v10, :cond_77

    aget-object v7, v7, v5

    instance-of v10, v7, Ljava/lang/Class;

    if-eqz v10, :cond_77

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_77

    instance-of v10, v6, Ljava/util/List;

    if-eqz v10, :cond_77

    move-object v10, v6

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_77

    move/from16 v11, p6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    :cond_79
    :goto_39
    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 p6, v11

    goto/16 :goto_37

    :cond_7a
    move/from16 v11, p6

    iget-object v1, v1, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length v5, v1

    new-array v6, v5, [Ljava/lang/Object;

    move v7, v11

    :goto_3a
    if-ge v7, v5, :cond_83

    aget-object v10, v1, v7

    iget-object v12, v10, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_82

    iget-object v14, v10, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7b

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    goto :goto_3b

    :cond_7b
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7c

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    goto :goto_3b

    :cond_7c
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7d

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_3b

    :cond_7d
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7e

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_3b

    :cond_7e
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    goto :goto_3b

    :cond_7f
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_80

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_3b

    :cond_80
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_81

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3b

    :cond_81
    if-ne v14, v13, :cond_82

    iget v10, v10, Lcom/alibaba/fastjson/util/d;->j:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_82

    move-object v12, v3

    :cond_82
    :goto_3b
    aput-object v12, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x0

    goto :goto_3a

    :cond_83
    move-object v1, v6

    :cond_84
    iget-object v3, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v5, v3, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_8a

    iget-boolean v3, v3, Lcom/alibaba/fastjson/util/h;->q:Z

    if-eqz v3, :cond_88

    const/4 v3, 0x0

    :goto_3c
    array-length v5, v1

    if-ge v3, v5, :cond_88

    aget-object v5, v1, v3

    if-nez v5, :cond_87

    iget-object v5, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v6, v5, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    if-eqz v6, :cond_87

    array-length v7, v6

    if-ge v3, v7, :cond_87

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    if-ne v3, v13, :cond_88

    :try_start_27
    iget-object v3, v5, Lcom/alibaba/fastjson/util/h;->r:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_88

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    const/4 v5, 0x0

    :goto_3d
    :try_start_28
    array-length v6, v1

    if-ge v5, v6, :cond_86

    aget-object v6, v1, v5

    if-eqz v6, :cond_85

    iget-object v7, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    if-eqz v7, :cond_85

    array-length v10, v7

    if-ge v5, v10, :cond_85

    aget-object v7, v7, v5

    invoke-virtual {v7, v3, v6}, Lcom/alibaba/fastjson/util/d;->o(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_2
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    goto :goto_3e

    :catchall_b
    move-exception v0

    move-object v5, v3

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto :goto_41

    :cond_85
    :goto_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_86
    move-object v1, v3

    goto :goto_3f

    :catch_3
    move-exception v0

    move-object/from16 v3, v29

    goto :goto_41

    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_88
    :try_start_29
    iget-object v3, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    :goto_3f
    if-eqz v2, :cond_8c

    :try_start_2a
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_89
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Lz4/o;->j(Ljava/lang/String;)Lz4/l;

    move-result-object v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    goto :goto_40

    :goto_41
    :try_start_2b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instance error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    :cond_8a
    :try_start_2c
    iget-object v0, v3, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    if-eqz v0, :cond_8b

    const/4 v2, 0x0

    :try_start_2d
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_4
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    move-object v1, v0

    goto :goto_42

    :catch_4
    move-exception v0

    move-object v1, v0

    :try_start_2e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create factory method error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    :cond_8b
    move-object/from16 v1, v29

    :cond_8c
    :goto_42
    if-eqz v4, :cond_8e

    :try_start_2f
    iput-object v1, v4, Ly4/g;->a:Ljava/lang/Object;

    goto :goto_43

    :cond_8d
    move-object/from16 v1, v29

    :cond_8e
    :goto_43
    iget-object v0, v8, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->f:Ljava/lang/reflect/Method;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    if-nez v0, :cond_90

    if-eqz v4, :cond_8f

    iput-object v1, v4, Ly4/g;->a:Ljava/lang/Object;

    :cond_8f
    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v1

    :cond_90
    const/4 v3, 0x0

    :try_start_30
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_5
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    if-eqz v4, :cond_91

    iput-object v1, v4, Ly4/g;->a:Ljava/lang/Object;

    :cond_91
    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :catch_5
    move-exception v0

    move-object v2, v0

    :try_start_31
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "build object error"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2

    :cond_92
    move/from16 v1, p6

    const/4 v3, 0x0

    :try_start_32
    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_93

    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_93

    :goto_44
    move-object/from16 v4, v27

    move-object/from16 v27, v29

    :goto_45
    add-int/lit8 v7, v30, 0x1

    move-object v0, v12

    move-object v5, v13

    move-object/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v17, v20

    move-object/from16 v12, v21

    move-object/from16 v1, v27

    move-object/from16 v6, v28

    goto/16 :goto_4

    :cond_93
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, unexpect token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ly4/c;->q0()I

    move-result v2

    invoke-static {v2}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_9

    :catchall_c
    move-exception v0

    move-object v5, v1

    goto/16 :goto_2c

    :catchall_d
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v5, p4

    move-object v14, v3

    :goto_46
    if-eqz v14, :cond_95

    iput-object v5, v14, Ly4/g;->a:Ljava/lang/Object;

    :cond_95
    invoke-virtual {v9, v15}, Ly4/a;->B0(Ly4/g;)V

    throw v0

    :cond_96
    :goto_47
    invoke-virtual/range {p1 .. p1}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_12

    iget-object v1, p1, Ly4/a;->b:Ly4/i;

    invoke-interface {v0, v1}, Ly4/b;->m0(Ly4/i;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ly4/a;->m()Ly4/h;

    move-result-object v3

    iget-object v4, p0, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    invoke-static {v3, v4, v1}, Lz4/o;->l(Ly4/h;Lcom/alibaba/fastjson/util/h;Ljava/lang/String;)Lz4/o;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ly4/a;->m()Ly4/h;

    move-result-object v4

    invoke-interface {v0}, Ly4/b;->r()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5}, Ly4/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ly4/a;->m()Ly4/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v3

    :cond_0
    instance-of v1, v3, Lz4/o;

    if-eqz v1, :cond_1

    check-cast v3, Lz4/o;

    invoke-virtual {v3, p1, p2, p3, p4}, Lz4/o;->i(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lz4/o;->f(Ly4/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lz4/o;->b:[Lz4/l;

    array-length p3, p3

    const/4 p4, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge p4, p3, :cond_11

    add-int/lit8 v3, p3, -0x1

    const/16 v4, 0x5d

    if-ne p4, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/16 v3, 0x2c

    :goto_1
    iget-object v5, p0, Lz4/o;->b:[Lz4/l;

    aget-object v5, v5, p4

    iget-object v6, v5, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    invoke-interface {v0, v3}, Ly4/b;->g0(C)I

    move-result v1

    invoke-virtual {v5, p2, v1}, Lz4/l;->f(Ljava/lang/Object;I)V

    goto/16 :goto_4

    :cond_3
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_4

    invoke-interface {v0, v3}, Ly4/b;->r0(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lz4/l;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    invoke-interface {v0, v3}, Ly4/b;->x0(C)J

    move-result-wide v3

    invoke-virtual {v5, p2, v3, v4}, Lz4/l;->g(Ljava/lang/Object;J)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ly4/b;->d()C

    move-result v1

    const/16 v4, 0x22

    if-eq v1, v4, :cond_8

    const/16 v4, 0x6e

    if-ne v1, v4, :cond_6

    goto :goto_2

    :cond_6
    const/16 v4, 0x30

    if-lt v1, v4, :cond_7

    const/16 v4, 0x39

    if-gt v1, v4, :cond_7

    invoke-interface {v0, v3}, Ly4/b;->g0(C)I

    move-result v1

    move-object v3, v5

    check-cast v3, Lz4/f;

    invoke-virtual {p1}, Ly4/a;->m()Ly4/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lz4/f;->k(Ly4/h;)Lz4/b2;

    move-result-object v3

    check-cast v3, Lz4/h;

    invoke-virtual {v3, v1}, Lz4/h;->d(I)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0, v3}, Lz4/o;->o(Ly4/b;C)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p1}, Ly4/a;->v()Ly4/i;

    move-result-object v1

    invoke-interface {v0, v6, v1, v3}, Ly4/b;->T(Ljava/lang/Class;Ly4/i;C)Ljava/lang/Enum;

    move-result-object v1

    :goto_3
    invoke-virtual {v5, p2, v1}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_9
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_a

    invoke-interface {v0, v3}, Ly4/b;->V(C)Z

    move-result v1

    invoke-virtual {v5, p2, v1}, Lz4/l;->j(Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_a
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_b

    invoke-interface {v0, v3}, Ly4/b;->m(C)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_c

    invoke-interface {v0, v3}, Ly4/b;->s(C)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    const-class v7, Ljava/util/Date;

    if-ne v6, v7, :cond_d

    invoke-interface {v0}, Ly4/b;->d()C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_d

    invoke-interface {v0, v3}, Ly4/b;->x0(C)J

    move-result-wide v3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, p2, v1}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    const-class v7, Ljava/math/BigDecimal;

    if-ne v6, v7, :cond_e

    invoke-interface {v0, v3}, Ly4/b;->t(C)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    invoke-interface {v0, v2}, Ly4/b;->c0(I)V

    iget-object v6, v5, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v7, v6, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v7, v6}, Ly4/a;->p0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_f

    goto :goto_5

    :cond_f
    if-ne v3, v4, :cond_10

    move v1, v6

    :cond_10
    invoke-virtual {p0, v0, v1}, Lz4/o;->a(Ly4/b;I)V

    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_5
    invoke-interface {v0, v1}, Ly4/b;->c0(I)V

    return-object p2

    :cond_12
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/lang/String;)Lz4/l;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz4/o;->k(Ljava/lang/String;[I)Lz4/l;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;[I)Lz4/l;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lz4/o;->g:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/l;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lz4/o;->b:[Lz4/l;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_5

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lz4/o;->b:[Lz4/l;

    aget-object v4, v4, v3

    iget-object v4, v4, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-static {v3, p2}, Lz4/o;->m(I[I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    iget-object p1, p0, Lz4/o;->b:[Lz4/l;

    aget-object p1, p1, v3

    return-object p1

    :cond_5
    iget-object p2, p0, Lz4/o;->f:Ljava/util/Map;

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz4/l;

    return-object p1

    :cond_6
    return-object v0
.end method

.method public n(Ly4/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    const/16 v16, 0x0

    const/4 v9, 0x1

    iget-object v8, v0, Ly4/a;->f:Ly4/b;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-interface {v8, v2}, Ly4/b;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget v4, v4, Lcom/alibaba/fastjson/util/h;->j:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v8, v3}, Ly4/b;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget v2, v2, Lcom/alibaba/fastjson/util/h;->j:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v11, v15}, Lz4/o;->r(Ljava/lang/String;[I)Lz4/l;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v1, v11}, Lz4/o;->q(Ljava/lang/String;)Lz4/l;

    move-result-object v2

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1, v11}, Lz4/o;->j(Ljava/lang/String;)Lz4/l;

    move-result-object v2

    :goto_2
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    if-nez v2, :cond_4

    invoke-interface {v8, v3}, Ly4/b;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v1, Lz4/o;->d:Lcom/alibaba/fastjson/util/h;

    iget v4, v4, Lcom/alibaba/fastjson/util/h;->j:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v20, v8

    move/from16 v19, v9

    goto/16 :goto_b

    :cond_5
    :goto_3
    iget-object v3, v1, Lz4/o;->e:Ljava/util/concurrent/ConcurrentMap;

    if-nez v3, :cond_d

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v9, v4, v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iget-object v4, v1, Lz4/o;->c:Ljava/lang/Class;

    :goto_4
    if-eqz v4, :cond_c

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_c

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move/from16 v7, v16

    :goto_5
    if-ge v7, v6, :cond_b

    aget-object v10, v5, v7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lz4/o;->j(Ljava/lang/String;)Lz4/l;

    move-result-object v18

    if-eqz v18, :cond_7

    :cond_6
    :goto_6
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    :goto_7
    const/4 v2, 0x1

    goto :goto_9

    :cond_7
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    and-int/lit8 v19, v18, 0x10

    if-nez v19, :cond_6

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_8

    goto :goto_6

    :cond_8
    move-object/from16 v18, v2

    const-class v2, Lx4/b;

    invoke-static {v10, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lx4/b;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v5

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object v9, v2

    goto :goto_8

    :cond_9
    move-object/from16 v19, v5

    :cond_a
    :goto_8
    invoke-virtual {v3, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :goto_9
    add-int/2addr v7, v2

    move v9, v2

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    goto :goto_5

    :cond_b
    move-object/from16 v18, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v18, v2

    iput-object v3, v1, Lz4/o;->e:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_a

    :cond_d
    move-object/from16 v18, v2

    :goto_a
    iget-object v2, v1, Lz4/o;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    instance-of v3, v2, Lz4/l;

    if-eqz v3, :cond_e

    check-cast v2, Lz4/l;

    move-object/from16 v20, v8

    const/16 v19, 0x1

    goto :goto_c

    :cond_e
    move-object v7, v2

    check-cast v7, Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v10, Lcom/alibaba/fastjson/util/d;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v20, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, v17

    move-object v15, v10

    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    new-instance v2, Lz4/f;

    invoke-virtual/range {p1 .. p1}, Ly4/a;->m()Ly4/h;

    move-result-object v3

    iget-object v4, v1, Lz4/o;->c:Ljava/lang/Class;

    invoke-direct {v2, v3, v4, v15}, Lz4/f;-><init>(Ly4/h;Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V

    iget-object v3, v1, Lz4/o;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_f
    move-object/from16 v20, v8

    const/16 v19, 0x1

    :goto_b
    move-object/from16 v2, v18

    :goto_c
    const/4 v3, -0x1

    if-nez v2, :cond_1a

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v4, v20

    invoke-interface {v4, v2}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v5, v3

    move/from16 v2, v16

    :goto_d
    iget-object v6, v1, Lz4/o;->b:[Lz4/l;

    array-length v7, v6

    if-ge v2, v7, :cond_16

    aget-object v6, v6, v2

    iget-object v7, v6, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-boolean v8, v7, Lcom/alibaba/fastjson/util/d;->s:Z

    if-eqz v8, :cond_13

    instance-of v8, v6, Lz4/f;

    if-eqz v8, :cond_13

    iget-object v8, v7, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    const-string v9, "parse unwrapped field error."

    if-eqz v8, :cond_14

    move-object v8, v6

    check-cast v8, Lz4/f;

    invoke-virtual/range {p1 .. p1}, Ly4/a;->m()Ly4/h;

    move-result-object v10

    invoke-virtual {v8, v10}, Lz4/f;->k(Ly4/h;)Lz4/b2;

    move-result-object v10

    instance-of v15, v10, Lz4/o;

    if-eqz v15, :cond_11

    move-object v15, v10

    check-cast v15, Lz4/o;

    invoke-virtual {v15, v11}, Lz4/o;->j(Ljava/lang/String;)Lz4/l;

    move-result-object v15

    if-eqz v15, :cond_13

    :try_start_0
    iget-object v5, v7, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_10

    check-cast v10, Lz4/o;

    iget-object v5, v7, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v10, v0, v5}, Lz4/o;->f(Ly4/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v12, v5}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_f

    :cond_10
    :goto_e
    invoke-virtual {v8}, Lz4/f;->b()I

    move-result v6

    invoke-interface {v4, v6}, Ly4/b;->q(I)V

    invoke-virtual {v15, v0, v5, v13, v14}, Lz4/l;->d(Ly4/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :goto_f
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_11
    instance-of v8, v10, Lz4/z1;

    if-eqz v8, :cond_13

    check-cast v10, Lz4/z1;

    :try_start_1
    iget-object v5, v7, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_12

    iget-object v5, v7, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v10, v5}, Lz4/z1;->f(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6, v12, v5}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :catch_1
    move-exception v0

    goto :goto_12

    :cond_12
    :goto_10
    invoke-interface {v4}, Ly4/b;->u()V

    invoke-virtual/range {p1 .. p2}, Ly4/a;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_11
    move v5, v2

    goto :goto_13

    :goto_12
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_13
    :goto_13
    const/4 v8, 0x2

    goto :goto_14

    :cond_14
    iget-object v6, v7, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_15

    invoke-interface {v4}, Ly4/b;->u()V

    invoke-virtual/range {p1 .. p2}, Ly4/a;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :try_start_2
    iget-object v6, v7, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v11, v7, v16

    aput-object v5, v7, v19

    invoke-virtual {v6, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v5, v2

    goto :goto_14

    :catch_2
    move-exception v0

    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_15
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_16
    if-eq v5, v3, :cond_18

    move-object/from16 v6, p6

    if-eqz v6, :cond_17

    div-int/lit8 v0, v5, 0x20

    rem-int/lit8 v5, v5, 0x20

    aget v2, v6, v0

    shl-int v3, v19, v5

    or-int/2addr v2, v3

    aput v2, v6, v0

    :cond_17
    return v19

    :cond_18
    invoke-virtual {v0, v12, v11}, Ly4/a;->k0(Ljava/lang/Object;Ljava/lang/String;)V

    return v16

    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setter not found, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lz4/o;->c:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object/from16 v6, p6

    move-object/from16 v4, v20

    move/from16 v5, v16

    :goto_15
    iget-object v7, v1, Lz4/o;->b:[Lz4/l;

    array-length v8, v7

    if-ge v5, v8, :cond_1c

    aget-object v7, v7, v5

    if-ne v7, v2, :cond_1b

    goto :goto_16

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_1c
    move v5, v3

    :goto_16
    if-eq v5, v3, :cond_1d

    if-eqz v6, :cond_1d

    const-string v3, "_"

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {v5, v6}, Lz4/o;->m(I[I)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0, v12, v11}, Ly4/a;->k0(Ljava/lang/Object;Ljava/lang/String;)V

    return v16

    :cond_1d
    invoke-virtual {v2}, Lz4/l;->b()I

    move-result v3

    invoke-interface {v4, v3}, Ly4/b;->q(I)V

    invoke-virtual {v2, v0, v12, v13, v14}, Lz4/l;->d(Ly4/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    if-eqz v6, :cond_1e

    div-int/lit8 v0, v5, 0x20

    rem-int/lit8 v5, v5, 0x20

    aget v2, v6, v0

    shl-int v3, v19, v5

    or-int/2addr v2, v3

    aput v2, v6, v0

    :cond_1e
    return v19
.end method

.method protected o(Ly4/b;C)Ljava/lang/Enum;
    .locals 2

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal enum. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ly4/b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected p(Ly4/c;[CLz4/b2;)Ljava/lang/Enum;
    .locals 6

    instance-of v0, p3, Lz4/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p3, Lz4/h;

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    if-nez p3, :cond_1

    const/4 p2, -0x1

    iput p2, p1, Ly4/c;->n:I

    return-object v1

    :cond_1
    invoke-virtual {p1, p2}, Ly4/c;->T0([C)J

    move-result-wide v2

    iget p2, p1, Ly4/c;->n:I

    if-lez p2, :cond_5

    invoke-virtual {p3, v2, v3}, Lz4/h;->a(J)Ljava/lang/Enum;

    move-result-object p2

    if-nez p2, :cond_4

    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v0}, Ly4/c;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not match enum value, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lz4/h;->a:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object p2

    :cond_5
    return-object v1
.end method

.method public q(Ljava/lang/String;)Lz4/l;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz4/o;->r(Ljava/lang/String;[I)Lz4/l;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;[I)Lz4/l;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lz4/o;->k(Ljava/lang/String;[I)Lz4/l;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v2, p0, Lz4/o;->h:[J

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lz4/o;->b:[Lz4/l;

    array-length v2, v2

    new-array v2, v2, [J

    move v4, v3

    :goto_0
    iget-object v5, p0, Lz4/o;->b:[Lz4/l;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    iget-object v5, v5, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-wide v5, v5, Lcom/alibaba/fastjson/util/d;->v:J

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    iput-object v2, p0, Lz4/o;->h:[J

    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->L(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v2, p0, Lz4/o;->h:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_3

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->K(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v2, p0, Lz4/o;->h:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    :cond_3
    if-gez v2, :cond_4

    const-string v4, "is"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->K(Ljava/lang/String;)J

    move-result-wide v5

    iget-object p1, p0, Lz4/o;->h:[J

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    goto :goto_1

    :cond_4
    move v4, v3

    :cond_5
    :goto_1
    if-ltz v2, :cond_9

    iget-object p1, p0, Lz4/o;->i:[S

    const/4 v5, -0x1

    if-nez p1, :cond_8

    iget-object p1, p0, Lz4/o;->h:[J

    array-length p1, p1

    new-array p1, p1, [S

    invoke-static {p1, v5}, Ljava/util/Arrays;->fill([SS)V

    :goto_2
    iget-object v6, p0, Lz4/o;->b:[Lz4/l;

    array-length v7, v6

    if-ge v3, v7, :cond_7

    iget-object v7, p0, Lz4/o;->h:[J

    aget-object v6, v6, v3

    iget-object v6, v6, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-wide v8, v6, Lcom/alibaba/fastjson/util/d;->v:J

    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    if-ltz v6, :cond_6

    int-to-short v7, v3

    aput-short v7, p1, v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iput-object p1, p0, Lz4/o;->i:[S

    :cond_8
    iget-object p1, p0, Lz4/o;->i:[S

    aget-short p1, p1, v2

    if-eq p1, v5, :cond_9

    invoke-static {p1, p2}, Lz4/o;->m(I[I)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lz4/o;->b:[Lz4/l;

    aget-object v1, p2, p1

    :cond_9
    if-eqz v1, :cond_b

    iget-object p1, v1, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget p2, p1, Lcom/alibaba/fastjson/util/d;->j:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_a

    return-object v0

    :cond_a
    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    if-eqz v4, :cond_b

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_b

    const-class p2, Ljava/lang/Boolean;

    if-eq p1, p2, :cond_b

    goto :goto_3

    :cond_b
    move-object v0, v1

    :goto_3
    return-object v0
.end method
