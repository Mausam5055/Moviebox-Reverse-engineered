.class public Lz4/k3;
.super Lz4/o;


# direct methods
.method public constructor <init>(Ly4/h;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Lz4/o;-><init>(Ly4/h;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private s(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v10, v2, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    if-nez v12, :cond_0

    move-object v9, v10

    goto :goto_1

    :cond_0
    array-length v12, v11

    const-class v13, Ljava/lang/String;

    if-ne v12, v1, :cond_1

    aget-object v12, v11, v5

    if-ne v12, v13, :cond_1

    move-object v8, v10

    goto :goto_1

    :cond_1
    array-length v12, v11

    if-ne v12, v0, :cond_2

    aget-object v12, v11, v5

    if-ne v12, v13, :cond_2

    aget-object v11, v11, v1

    const-class v12, Ljava/lang/Throwable;

    if-ne v11, v12, :cond_2

    move-object v7, v10

    :cond_2
    :goto_1
    add-int/2addr v6, v1

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    aput-object p2, v0, v1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_4
    if-eqz v8, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_6
    return-object v4
.end method


# virtual methods
.method public b()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    invoke-interface {v3}, Ly4/b;->Z()V

    return-object v5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ly4/a;->u()I

    move-result v4

    const/4 v7, 0x2

    const-string v8, "syntax error"

    if-ne v4, v7, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ly4/a;->E0(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v4

    const/16 v7, 0xc

    if-ne v4, v7, :cond_17

    :goto_0
    const-class v4, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    instance-of v7, v2, Ljava/lang/Class;

    if-eqz v7, :cond_2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    move-object v7, v5

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ly4/a;->v()Ly4/i;

    move-result-object v12

    invoke-interface {v3, v12}, Ly4/b;->i(Ly4/i;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xd

    const/16 v14, 0x10

    if-nez v12, :cond_5

    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v15

    if-ne v15, v13, :cond_4

    invoke-interface {v3, v14}, Ly4/b;->c0(I)V

    goto/16 :goto_5

    :cond_4
    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v15

    if-ne v15, v14, :cond_5

    sget-object v15, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v15}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_2

    :cond_5
    const/4 v15, 0x4

    invoke-interface {v3, v15}, Ly4/b;->q(I)V

    sget-object v13, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v2

    if-ne v2, v15, :cond_6

    invoke-interface {v3}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ly4/a;->m()Ly4/h;

    move-result-object v12

    invoke-interface {v3}, Ly4/b;->r()I

    move-result v13

    invoke-virtual {v12, v2, v4, v13}, Ly4/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v3, v14}, Ly4/b;->c0(I)V

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v13, "message"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v10

    if-ne v10, v6, :cond_8

    move-object v10, v5

    goto :goto_3

    :cond_8
    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v10

    if-ne v10, v15, :cond_9

    invoke-interface {v3}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-interface {v3}, Ly4/b;->Z()V

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v13, "cause"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v1, v0, v5, v13}, Lz4/k3;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    goto :goto_4

    :cond_b
    const-string v13, "stackTrace"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-class v11, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v11}, Ly4/a;->m0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/StackTraceElement;

    goto :goto_4

    :cond_c
    if-nez v7, :cond_d

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_3

    invoke-interface {v3, v14}, Ly4/b;->c0(I)V

    :goto_5
    if-nez v2, :cond_e

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v10, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_16

    :try_start_0
    invoke-direct {v1, v10, v9, v2}, Lz4/k3;->s(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v10, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_f
    :goto_6
    if-eqz v11, :cond_10

    invoke-virtual {v3, v11}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_10
    if-eqz v7, :cond_15

    if-eqz v2, :cond_12

    iget-object v4, v1, Lz4/o;->c:Ljava/lang/Class;

    if-ne v2, v4, :cond_11

    move-object v5, v1

    goto :goto_7

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ly4/a;->m()Ly4/h;

    move-result-object v4

    invoke-virtual {v4, v2}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v2

    instance-of v4, v2, Lz4/o;

    if-eqz v4, :cond_12

    move-object v5, v2

    check-cast v5, Lz4/o;

    :cond_12
    :goto_7
    if-eqz v5, :cond_15

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6}, Lz4/o;->j(Ljava/lang/String;)Lz4/l;

    move-result-object v6

    if-eqz v6, :cond_13

    iget-object v7, v6, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v8, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v7, v7, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    invoke-virtual/range {p1 .. p1}, Ly4/a;->m()Ly4/h;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Ly4/h;)Ljava/lang/Object;

    move-result-object v4

    :cond_14
    invoke-virtual {v6, v3, v4}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_15
    return-object v3

    :goto_9
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "create instance error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type not match, not Throwable. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
