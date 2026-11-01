.class public Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder<",
        "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private sourceJSON:Lcom/google/gson/JsonObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->sourceJSON:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    const-class v3, Ljava/util/List;

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v2

    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_3

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v4, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v1, v4

    check-cast v1, Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    const-class v4, Ljava/util/TreeSet;

    const-class v5, Ljava/util/HashSet;

    const-class v6, Ljava/util/Set;

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    const-class v7, Ljava/util/Collection;

    if-eq v0, v7, :cond_4

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_a

    :cond_4
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    instance-of v3, p0, Ljava/lang/Iterable;

    if-eqz v3, :cond_a

    if-eq v0, v6, :cond_7

    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_7
    :goto_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :goto_3
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    return-object p1

    :cond_a
    const-class v1, Ljava/util/Map;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_b

    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_d

    :cond_b
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_d

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    return-object p1

    :cond_d
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_e

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v4, v1

    if-ne v4, v3, :cond_f

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v2, v4, v2

    instance-of v2, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_f

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_f
    const-class v2, Ljava/util/Map$Entry;

    if-ne v0, v2, :cond_11

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_11

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v3, :cond_11

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    array-length v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_10

    aget-object v0, v1, v3

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not cast to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return-object v0

    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not cast to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->value()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-gtz v3, :cond_1

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->name()[Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_1e

    array-length v3, v0

    if-lez v3, :cond_1e

    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    move v6, v5

    :goto_0
    const-class v10, Ljava/lang/Long;

    const-class v11, Ljava/lang/Double;

    const-class v12, Ljava/lang/Float;

    const-class v13, Ljava/lang/Integer;

    const-class v14, Ljava/lang/Boolean;

    const-class v15, Ljava/lang/String;

    if-ge v6, v4, :cond_11

    :try_start_1
    aget-object v9, v0, v6

    iget-object v7, v1, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->sourceJSON:Lcom/google/gson/JsonObject;

    if-nez v7, :cond_2

    move-object v7, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v16

    if-eqz v16, :cond_7

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v10, :cond_3

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v3, v9

    goto/16 :goto_4

    :cond_3
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v10, :cond_4

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_2

    :cond_4
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v10, :cond_5

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_2

    :cond_5
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v10, :cond_6

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_2

    :cond_6
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v10, :cond_f

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_2

    :cond_7
    if-ne v2, v15, :cond_8

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_8
    if-ne v2, v14, :cond_9

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_9
    if-ne v2, v13, :cond_a

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_a
    if-ne v2, v12, :cond_b

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_b
    if-ne v2, v11, :cond_c

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_c
    if-ne v2, v10, :cond_d

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_d
    const-class v10, Lcom/google/gson/JsonObject;

    if-ne v2, v10, :cond_e

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_e
    const-class v10, Lcom/google/gson/JsonArray;

    if-ne v2, v10, :cond_f

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :cond_f
    :goto_2
    if-eqz v8, :cond_10

    return-object v8

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_11
    if-nez v7, :cond_1d

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->required()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_12

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->booleanDefault()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_3

    :cond_12
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_13

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->intDefault()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_3

    :cond_13
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_14

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->floatDefault()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_3

    :cond_14
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_15

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->doubleDefault()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_3

    :cond_15
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_1d

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->longDefault()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_3

    :cond_16
    if-ne v2, v15, :cond_17

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->stringDefault()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_17
    if-ne v2, v14, :cond_18

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->booleanDefault()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_18
    if-ne v2, v13, :cond_19

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->intDefault()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_19
    if-ne v2, v12, :cond_1a

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->floatDefault()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_1a
    if-ne v2, v11, :cond_1b

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->doubleDefault()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_1b
    if-ne v2, v10, :cond_1d

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;->longDefault()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_1c
    new-instance v3, Lcom/cloud/tmc/kernel/bridge/extension/bind/RequiredParamNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " param is missing!"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/bind/RequiredParamNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1d
    :goto_3
    return-object v8

    :catch_1
    move-exception v0

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding targetType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->sourceJSON:Lcom/google/gson/JsonObject;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " key: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception!"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TmcKernel"

    invoke-static {v3, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;

    const-string v2, "bind key is null"

    invoke-direct {v0, v2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    check-cast p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;->bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
