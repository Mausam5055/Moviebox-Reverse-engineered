.class public Lcom/alibaba/fastjson/util/h;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/reflect/Constructor;

.field public final d:Ljava/lang/reflect/Constructor;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/reflect/Method;

.field public final g:I

.field public final h:[Lcom/alibaba/fastjson/util/d;

.field public final i:[Lcom/alibaba/fastjson/util/d;

.field public final j:I

.field public final k:Lx4/d;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:[Ljava/lang/reflect/Type;

.field public p:[Ljava/lang/String;

.field public q:Z

.field public r:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lx4/d;Ljava/util/List;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/util/h;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/alibaba/fastjson/util/h;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alibaba/fastjson/util/h;->c:Ljava/lang/reflect/Constructor;

    iput-object p4, p0, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    iput-object p5, p0, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->f0(Ljava/lang/Class;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson/util/h;->j:I

    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->f:Ljava/lang/reflect/Method;

    iput-object p7, p0, Lcom/alibaba/fastjson/util/h;->k:Lx4/d;

    const/4 p2, 0x0

    if-eqz p7, :cond_3

    invoke-interface {p7}, Lx4/d;->typeName()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p7}, Lx4/d;->typeKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson/util/h;->m:Ljava/lang/String;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    :goto_1
    invoke-interface {p7}, Lx4/d;->orders()[Ljava/lang/String;

    move-result-object p6

    array-length p7, p6

    if-nez p7, :cond_2

    move-object p6, p2

    :cond_2
    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->n:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson/util/h;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson/util/h;->n:[Ljava/lang/String;

    :goto_2
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p6

    new-array p6, p6, [Lcom/alibaba/fastjson/util/d;

    iput-object p6, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    invoke-interface {p8, p6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length p7, p6

    new-array p7, p7, [Lcom/alibaba/fastjson/util/d;

    iget-object v0, p0, Lcom/alibaba/fastjson/util/h;->n:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p8

    invoke-direct {v0, p8}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length p8, p6

    move v2, v1

    :goto_3
    if-ge v2, p8, :cond_4

    aget-object v3, p6, v2

    iget-object v4, v3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object p6, p0, Lcom/alibaba/fastjson/util/h;->n:[Ljava/lang/String;

    array-length p8, p6

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, p8, :cond_6

    aget-object v4, p6, v2

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/d;

    if-eqz v5, :cond_5

    add-int/lit8 v6, v3, 0x1

    aput-object v5, p7, v3

    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_5
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    if-eqz p8, :cond_8

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/alibaba/fastjson/util/d;

    add-int/lit8 v0, v3, 0x1

    aput-object p8, p7, v3

    move v3, v0

    goto :goto_5

    :cond_7
    array-length p8, p6

    invoke-static {p6, v1, p7, v1, p8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_8
    iget-object p6, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    invoke-static {p6, p7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_9

    iget-object p7, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    :cond_9
    iput-object p7, p0, Lcom/alibaba/fastjson/util/h;->i:[Lcom/alibaba/fastjson/util/d;

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    iput p3, p0, Lcom/alibaba/fastjson/util/h;->g:I

    goto :goto_6

    :cond_a
    if-eqz p5, :cond_b

    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    iput p3, p0, Lcom/alibaba/fastjson/util/h;->g:I

    goto :goto_6

    :cond_b
    iput v1, p0, Lcom/alibaba/fastjson/util/h;->g:I

    :goto_6
    if-eqz p4, :cond_12

    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->t0(Ljava/lang/Class;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/h;->q:Z

    if-eqz p3, :cond_f

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->a0(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/h;->r:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    move p3, v1

    :goto_7
    iget-object p4, p0, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;

    array-length p4, p4

    if-ge p3, p4, :cond_12

    array-length p4, p1

    if-ge p3, p4, :cond_12

    aget-object p4, p1, p3

    array-length p5, p4

    move p6, v1

    :goto_8
    if-ge p6, p5, :cond_d

    aget-object p7, p4, p6

    instance-of p8, p7, Lx4/b;

    if-eqz p8, :cond_c

    check-cast p7, Lx4/b;

    goto :goto_9

    :cond_c
    add-int/lit8 p6, p6, 0x1

    goto :goto_8

    :cond_d
    move-object p7, p2

    :goto_9
    if-eqz p7, :cond_e

    invoke-interface {p7}, Lx4/b;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_e

    iget-object p5, p0, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;

    aput-object p4, p5, p3

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_f
    iget-object p1, p0, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    array-length p1, p1

    iget-object p2, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length p2, p2

    if-eq p1, p2, :cond_10

    goto :goto_b

    :cond_10
    :goto_a
    iget-object p1, p0, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    array-length p2, p1

    if-ge v1, p2, :cond_12

    aget-object p1, p1, v1

    iget-object p2, p0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    aget-object p2, p2, v1

    iget-object p2, p2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    if-eq p1, p2, :cond_11

    :goto_b
    invoke-static {p4}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;

    goto :goto_c

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    :goto_c
    return-void
.end method

.method static a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/d;

    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/d;->h:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/d;->h:Z

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/d;->a(Lcom/alibaba/fastjson/util/d;)I

    move-result v2

    if-gez v2, :cond_2

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/h;
    .locals 6

    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/h;->c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/h;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/h;
    .locals 57

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v9, p5

    const/4 v15, 0x1

    const-class v0, Lx4/d;

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lx4/d;

    if-eqz v12, :cond_0

    invoke-interface {v12}, Lx4/d;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v0, v1, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    invoke-static {v13, v12}, Lcom/alibaba/fastjson/util/h;->f(Ljava/lang/Class;Lx4/d;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/h;->d(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v16

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->t0(Ljava/lang/Class;)Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v17, :cond_2

    array-length v1, v0

    if-ne v1, v15, :cond_1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v10, :cond_3

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/h;->h(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_2
    move-object/from16 v18, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/alibaba/fastjson/util/h;->h(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_2

    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eqz p3, :cond_6

    move-object v0, v13

    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v13, v14, v11, v5, v1}, Lcom/alibaba/fastjson/util/h;->e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_4
    if-eqz v18, :cond_5

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    :cond_5
    new-instance v9, Lcom/alibaba/fastjson/util/h;

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, v18

    move-object v8, v5

    move-object/from16 v5, v20

    move-object/from16 v6, v19

    move-object v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lx4/d;Ljava/util/List;)V

    return-object v9

    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move v1, v15

    :goto_6
    const-class v3, Ljava/util/Collection;

    const-class v2, Ljava/lang/Object;

    move-object/from16 p2, v11

    const-class v11, Ljava/lang/String;

    const-class v15, Lx4/b;

    if-nez v18, :cond_9

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v1, :cond_37

    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/Class;

    if-eqz v6, :cond_b

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/h;->g([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    if-eqz v4, :cond_b

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    :cond_b
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_c

    invoke-static {v0}, Lcom/alibaba/fastjson/util/h;->g([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :cond_c
    move-object/from16 v24, v4

    if-eqz v24, :cond_18

    if-nez v1, :cond_18

    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v0, v9

    if-lez v0, :cond_16

    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/TypeUtils;->d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_8
    array-length v1, v9

    if-ge v4, v1, :cond_16

    array-length v1, v6

    if-ge v4, v1, :cond_16

    aget-object v1, v6, v4

    array-length v14, v1

    move-object/from16 v26, v2

    const/4 v2, 0x0

    :goto_9
    move-object/from16 v27, v3

    if-ge v2, v14, :cond_e

    aget-object v3, v1, v2

    move-object/from16 p5, v1

    instance-of v1, v3, Lx4/b;

    if-eqz v1, :cond_d

    check-cast v3, Lx4/b;

    goto :goto_a

    :cond_d
    const/4 v1, 0x1

    add-int/2addr v2, v1

    move-object/from16 v1, p5

    move-object/from16 v3, v27

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    :goto_a
    aget-object v14, v9, v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v28, v1, v4

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-interface {v3}, Lx4/b;->ordinal()I

    move-result v2

    invoke-interface {v3}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v29

    invoke-interface {v3}, Lx4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v30

    invoke-interface {v3}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v3

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v2

    goto :goto_b

    :cond_f
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_b
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_c

    :cond_10
    move-object v2, v3

    goto :goto_d

    :cond_11
    :goto_c
    if-nez v0, :cond_12

    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    :cond_12
    aget-object v2, v0, v4

    :goto_d
    if-nez v1, :cond_15

    if-nez v0, :cond_14

    if-eqz v17, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->a0(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_13
    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    :cond_14
    :goto_e
    array-length v3, v0

    if-le v3, v4, :cond_15

    aget-object v1, v0, v4

    invoke-static {v13, v1, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    :cond_15
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    new-instance v3, Lcom/alibaba/fastjson/util/d;

    move-object v0, v3

    move-object v1, v2

    move-object/from16 v34, v15

    move-object/from16 v15, v26

    move-object/from16 v2, p0

    move-object/from16 p5, v9

    move-object/from16 v35, v27

    move-object v9, v3

    move-object v3, v14

    move/from16 v22, v4

    const/4 v14, 0x0

    move-object/from16 v4, v28

    move-object v14, v5

    move-object/from16 v5, v33

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-object/from16 v27, v15

    move-object v15, v7

    move/from16 v7, v30

    move-object/from16 v28, v11

    move-object v11, v8

    move/from16 v8, v31

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    invoke-static {v14, v9}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    const/4 v0, 0x1

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v9, p5

    move-object v8, v11

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v6, v23

    move-object/from16 v2, v27

    move-object/from16 v11, v28

    move-object/from16 v0, v32

    move-object/from16 v15, v34

    move-object/from16 v3, v35

    goto/16 :goto_8

    :cond_16
    move-object/from16 v27, v2

    move-object/from16 v35, v3

    move-object v14, v5

    move-object/from16 v28, v11

    move-object/from16 v34, v15

    move-object v15, v7

    move-object v11, v8

    :cond_17
    move-object/from16 v38, v27

    move-object/from16 v29, v28

    move-object/from16 v37, v35

    move-object/from16 v27, v11

    move-object/from16 v11, v34

    goto/16 :goto_21

    :cond_18
    move-object/from16 v27, v2

    move-object/from16 v35, v3

    move-object v14, v5

    move-object/from16 v28, v11

    move-object/from16 v34, v15

    move-object v15, v7

    move-object v11, v8

    invoke-static {v13, v15, v9}, Lcom/alibaba/fastjson/util/h;->i(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v20

    if-eqz v20, :cond_22

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v0, v8

    if-lez v0, :cond_17

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->e0(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;

    move-result-object v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_f
    array-length v0, v8

    if-ge v7, v0, :cond_21

    aget-object v0, v15, v7

    array-length v1, v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v1, :cond_1a

    aget-object v2, v0, v4

    instance-of v3, v2, Lx4/b;

    if-eqz v3, :cond_19

    move-object v0, v2

    check-cast v0, Lx4/b;

    goto :goto_11

    :cond_19
    const/4 v2, 0x1

    add-int/2addr v4, v2

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_1c

    if-eqz v9, :cond_1b

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->s0(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_12

    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_12
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lx4/b;->ordinal()I

    move-result v2

    invoke-interface {v0}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    invoke-interface {v0}, Lx4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v0

    move/from16 v18, v0

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_13

    :cond_1d
    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_13
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_15

    :cond_1e
    :goto_14
    move-object/from16 v19, v6

    goto :goto_16

    :cond_1f
    :goto_15
    if-nez v6, :cond_20

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v6

    :cond_20
    aget-object v0, v6, v7

    move-object v1, v0

    goto :goto_14

    :goto_16
    aget-object v3, v8, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v4, v0, v7

    invoke-static {v13, v1, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    new-instance v6, Lcom/alibaba/fastjson/util/d;

    move-object v0, v6

    move-object/from16 v2, p0

    move-object v9, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    invoke-static {v14, v9}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    const/4 v0, 0x1

    add-int/lit8 v7, v16, 0x1

    move/from16 v9, p5

    move-object/from16 v8, v17

    move-object/from16 v6, v19

    goto/16 :goto_f

    :cond_21
    new-instance v9, Lcom/alibaba/fastjson/util/h;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v5, v20

    move-object v7, v12

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lx4/d;Ljava/util/List;)V

    return-object v9

    :cond_22
    if-nez v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v17, :cond_23

    array-length v1, v0

    if-lez v1, :cond_23

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->a0(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->c0([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v24, v0

    move-object v7, v1

    move-object/from16 v5, v27

    move-object/from16 v8, v28

    goto/16 :goto_1a

    :cond_23
    array-length v1, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_17
    if-ge v4, v1, :cond_2d

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const-string v5, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    array-length v5, v3

    const/4 v7, 0x2

    if-ne v5, v7, :cond_25

    const/4 v5, 0x0

    aget-object v7, v3, v5

    move-object/from16 v8, v28

    if-ne v7, v8, :cond_24

    const/4 v5, 0x1

    aget-object v3, v3, v5

    if-ne v3, v8, :cond_24

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object/from16 v24, v2

    move-object/from16 v5, v27

    goto/16 :goto_1a

    :cond_24
    :goto_18
    move-object/from16 v23, v0

    move-object/from16 v5, v27

    goto/16 :goto_19

    :cond_25
    move-object/from16 v8, v28

    goto :goto_18

    :cond_26
    move-object/from16 v8, v28

    const-string v5, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    array-length v5, v3

    const/4 v7, 0x3

    if-ne v5, v7, :cond_24

    const/4 v5, 0x0

    aget-object v7, v3, v5

    move-object/from16 v5, v27

    move-object/from16 v23, v0

    if-ne v7, v5, :cond_2c

    const/4 v7, 0x1

    aget-object v0, v3, v7

    if-ne v0, v5, :cond_2c

    const/4 v0, 0x2

    aget-object v3, v3, v0

    move-object/from16 v0, v35

    if-ne v3, v0, :cond_27

    invoke-virtual {v2, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "principal"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "credentials"

    aput-object v1, v3, v7

    const-string v1, "authorities"

    const/4 v4, 0x2

    aput-object v1, v3, v4

    move-object/from16 v35, v0

    move-object/from16 v24, v2

    move-object v7, v3

    goto :goto_1a

    :cond_27
    move-object/from16 v35, v0

    goto :goto_19

    :cond_28
    move-object/from16 v23, v0

    move-object/from16 v5, v27

    move-object/from16 v0, v35

    const-string v7, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    array-length v7, v3

    move-object/from16 v35, v0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_2c

    const/4 v7, 0x0

    aget-object v3, v3, v7

    if-ne v3, v8, :cond_2c

    new-array v1, v0, [Ljava/lang/String;

    const-string v3, "authority"

    aput-object v3, v1, v7

    move-object v7, v1

    move-object/from16 v24, v2

    goto :goto_1a

    :cond_29
    move-object/from16 v35, v0

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_2c

    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    array-length v3, v0

    if-nez v3, :cond_2a

    goto :goto_19

    :cond_2a
    if-eqz v24, :cond_2b

    if-eqz v6, :cond_2b

    array-length v3, v0

    array-length v7, v6

    if-gt v3, v7, :cond_2b

    goto :goto_19

    :cond_2b
    move-object v6, v0

    move-object/from16 v24, v2

    :cond_2c
    :goto_19
    const/4 v0, 0x1

    add-int/2addr v4, v0

    move-object/from16 v27, v5

    move-object/from16 v28, v8

    move-object/from16 v0, v23

    goto/16 :goto_17

    :cond_2d
    move-object/from16 v5, v27

    move-object/from16 v8, v28

    move-object v7, v6

    :goto_1a
    if-eqz v7, :cond_2e

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    goto :goto_1b

    :cond_2e
    const/4 v6, 0x0

    :goto_1b
    if-eqz v7, :cond_36

    array-length v0, v6

    array-length v1, v7

    if-ne v0, v1, :cond_36

    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/TypeUtils;->d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v22

    const/4 v4, 0x0

    :goto_1c
    array-length v0, v6

    if-ge v4, v0, :cond_35

    aget-object v0, v22, v4

    aget-object v1, v7, v4

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_30

    move/from16 v23, v2

    aget-object v2, v0, v3

    move-object/from16 p5, v0

    instance-of v0, v2, Lx4/b;

    if-eqz v0, :cond_2f

    move-object v0, v2

    check-cast v0, Lx4/b;

    goto :goto_1e

    :cond_2f
    const/4 v0, 0x1

    add-int/2addr v3, v0

    move-object/from16 v0, p5

    move/from16 v2, v23

    goto :goto_1d

    :cond_30
    const/4 v0, 0x0

    :goto_1e
    aget-object v3, v6, v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v23, v2, v4

    invoke-static {v13, v1, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_31

    if-nez v0, :cond_31

    move-object/from16 v27, v11

    move-object/from16 v11, v34

    invoke-static {v2, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lx4/b;

    goto :goto_1f

    :cond_31
    move-object/from16 v27, v11

    move-object/from16 v11, v34

    :goto_1f
    if-nez v0, :cond_33

    const-string v0, "org.springframework.security.core.userdetails.User"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v30, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    goto :goto_20

    :cond_32
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    goto :goto_20

    :cond_33
    invoke-interface {v0}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_34

    move-object/from16 v1, v28

    :cond_34
    invoke-interface {v0}, Lx4/b;->ordinal()I

    move-result v28

    invoke-interface {v0}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v29

    invoke-interface {v0}, Lx4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v0

    move/from16 v30, v0

    :goto_20
    new-instance v0, Lcom/alibaba/fastjson/util/d;

    move-object/from16 p5, v0

    move-object/from16 v37, v35

    move-object/from16 v31, v2

    move-object/from16 v2, p0

    move/from16 v32, v4

    move-object/from16 v4, v23

    move-object/from16 v38, v5

    move-object/from16 v5, v31

    move-object/from16 v23, v6

    move/from16 v6, v28

    move-object/from16 v28, v7

    move/from16 v7, v29

    move-object/from16 v29, v8

    move/from16 v8, v30

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    const/4 v0, 0x1

    add-int/lit8 v4, v32, 0x1

    move-object/from16 v34, v11

    move-object/from16 v6, v23

    move-object/from16 v11, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    move-object/from16 v5, v38

    goto/16 :goto_1c

    :cond_35
    move-object/from16 v38, v5

    move-object/from16 v29, v8

    move-object/from16 v27, v11

    move-object/from16 v11, v34

    move-object/from16 v37, v35

    if-nez v17, :cond_38

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.servlet.http.Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v9, Lcom/alibaba/fastjson/util/h;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v4, v24

    move-object v7, v12

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lx4/d;Ljava/util/List;)V

    return-object v9

    :cond_36
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    move-object/from16 v38, v2

    move-object/from16 v37, v3

    move-object v14, v5

    move-object/from16 v27, v8

    move-object/from16 v29, v11

    move-object v11, v15

    move-object v15, v7

    const/16 v24, 0x0

    :cond_38
    :goto_21
    if-eqz v18, :cond_39

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    :cond_39
    const-string v9, "set"

    if-eqz v10, :cond_4d

    const-class v8, Lx4/c;

    invoke-static {v10, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lx4/c;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Lx4/c;->withPrefix()Ljava/lang/String;

    move-result-object v6

    goto :goto_22

    :cond_3a
    const/4 v6, 0x0

    :goto_22
    if-nez v6, :cond_3b

    const-string v6, "with"

    :cond_3b
    move-object v7, v6

    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v5, :cond_47

    aget-object v2, v6, v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    :goto_24
    move-object/from16 v43, p2

    move/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v22, v7

    move-object/from16 v40, v8

    move-object/from16 v48, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    const/4 v0, 0x1

    move-object/from16 v27, v12

    goto/16 :goto_2b

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_24

    :cond_3d
    invoke-static {v2, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lx4/b;

    if-nez v0, :cond_3e

    invoke-static {v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->j0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lx4/b;

    move-result-object v0

    :cond_3e
    move-object/from16 v22, v0

    if-eqz v22, :cond_41

    invoke-interface/range {v22 .. v22}, Lx4/b;->deserialize()Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_24

    :cond_3f
    invoke-interface/range {v22 .. v22}, Lx4/b;->ordinal()I

    move-result v23

    invoke-interface/range {v22 .. v22}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v28

    invoke-interface/range {v22 .. v22}, Lx4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v30

    invoke-interface/range {v22 .. v22}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface/range {v22 .. v22}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/alibaba/fastjson/util/d;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v3

    move-object/from16 v39, v3

    move-object/from16 v3, v33

    move/from16 v33, v4

    move-object/from16 v4, p0

    move/from16 v34, v5

    move-object/from16 v5, p1

    move-object/from16 v35, v6

    move/from16 v6, v23

    move-object/from16 p5, v7

    move/from16 v7, v28

    move-object/from16 v40, v8

    move/from16 v8, v30

    move-object/from16 v41, v9

    move-object/from16 v9, v22

    move-object/from16 v42, v10

    move-object/from16 v10, v31

    move-object/from16 v43, p2

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    move-object/from16 v11, v32

    move-object/from16 v27, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILx4/b;Lx4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v39

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    move-object/from16 v22, p5

    move-object/from16 v48, v41

    :goto_25
    const/4 v0, 0x1

    goto/16 :goto_2b

    :cond_40
    move-object/from16 v43, p2

    move/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 p5, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    move-object/from16 v27, v12

    move/from16 v6, v23

    move/from16 v7, v28

    move/from16 v8, v30

    goto :goto_26

    :cond_41
    move-object/from16 v43, p2

    move/from16 v33, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 p5, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    move-object/from16 v27, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_26
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v41

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_27
    move-object/from16 v11, p5

    :goto_28
    const/4 v0, 0x0

    goto :goto_2a

    :cond_42
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_27

    :cond_43
    move-object/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    :goto_29
    move-object/from16 v22, v11

    move-object/from16 v48, v12

    goto :goto_25

    :cond_44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_45

    goto :goto_29

    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_46

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_29

    :cond_46
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/alibaba/fastjson/util/d;

    const/16 v23, 0x0

    const/16 v28, 0x0

    const/4 v3, 0x0

    move-object v0, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, v22

    move-object/from16 v47, v10

    move-object/from16 v10, v23

    move-object/from16 v22, v11

    move-object/from16 v11, v28

    move-object/from16 v48, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILx4/b;Lx4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v47

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    goto/16 :goto_25

    :goto_2b
    add-int/lit8 v4, v33, 0x1

    move-object/from16 v7, v22

    move-object/from16 v12, v27

    move/from16 v5, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v40

    move-object/from16 v10, v42

    move-object/from16 p2, v43

    move-object/from16 v27, v44

    move-object/from16 v29, v45

    move-object/from16 v11, v46

    move-object/from16 v9, v48

    goto/16 :goto_23

    :cond_47
    move-object/from16 v43, p2

    move-object v0, v8

    move-object/from16 v48, v9

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    move-object/from16 v27, v12

    move-object v12, v10

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lx4/c;

    if-eqz v0, :cond_48

    invoke-interface {v0}, Lx4/c;->buildMethod()Ljava/lang/String;

    move-result-object v6

    goto :goto_2c

    :cond_48
    const/4 v6, 0x0

    :goto_2c
    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_49

    goto :goto_2e

    :cond_49
    :goto_2d
    const/4 v11, 0x0

    goto :goto_2f

    :cond_4a
    :goto_2e
    const-string v6, "build"

    goto :goto_2d

    :goto_2f
    :try_start_1
    invoke-virtual {v12, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez v19, :cond_4b

    :try_start_2
    const-string v0, "create"

    invoke-virtual {v12, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4b
    if-eqz v19, :cond_4c

    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->M0(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_30

    :cond_4c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "buildMethod not found."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    move-object/from16 v43, p2

    move-object/from16 v48, v9

    move-object/from16 v46, v11

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    const/4 v11, 0x0

    move-object/from16 v27, v12

    move-object v12, v10

    :goto_30
    array-length v10, v15

    const/4 v9, 0x0

    :goto_31
    const-string v8, "get"

    const/4 v7, 0x4

    if-ge v9, v10, :cond_75

    aget-object v2, v15, v9

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    :goto_32
    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v25, v15

    move-object/from16 v33, v38

    :goto_33
    move-object/from16 v53, v43

    move-object/from16 v32, v45

    move-object/from16 v52, v46

    move-object/from16 v41, v48

    const/4 v0, 0x1

    const/16 v26, 0x0

    const/16 v29, 0x2

    :goto_34
    const/16 v36, 0x3

    move-object v15, v13

    goto/16 :goto_4c

    :cond_4e
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_32

    :cond_4f
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v6, v38

    if-ne v1, v6, :cond_50

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v25, v15

    goto :goto_33

    :cond_50
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v3, v1

    if-eqz v3, :cond_74

    array-length v3, v1

    const/4 v5, 0x2

    if-le v3, v5, :cond_51

    move/from16 v29, v5

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v32, v45

    move-object/from16 v52, v46

    move-object/from16 v41, v48

    :goto_35
    const/4 v0, 0x1

    :goto_36
    const/16 v26, 0x0

    goto :goto_34

    :cond_51
    move-object/from16 v4, v46

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lx4/b;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v28, 0x0

    if-eqz v21, :cond_54

    array-length v3, v1

    if-ne v3, v5, :cond_54

    const/4 v3, 0x0

    aget-object v5, v1, v3

    move-object/from16 v3, v45

    if-ne v5, v3, :cond_53

    const/4 v5, 0x1

    aget-object v11, v1, v5

    if-ne v11, v6, :cond_52

    new-instance v11, Lcom/alibaba/fastjson/util/d;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v1, ""

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v32, v3

    move-object v3, v5

    move-object v8, v4

    move-object/from16 v4, p0

    const/16 v29, 0x2

    move-object/from16 v5, p1

    move-object/from16 v33, v6

    move/from16 v6, v22

    move/from16 v7, v23

    move-object/from16 v49, v8

    move/from16 v8, v28

    move/from16 v34, v9

    move-object/from16 v9, v21

    move/from16 v35, v10

    move-object/from16 v10, v30

    move-object/from16 v50, v11

    const/16 v30, 0x0

    move-object/from16 v11, v31

    move-object/from16 v31, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILx4/b;Lx4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v50

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    :goto_37
    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v41, v48

    move-object/from16 v52, v49

    goto :goto_35

    :cond_52
    move-object/from16 v32, v3

    move-object/from16 v49, v4

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v31, v12

    const/16 v29, 0x2

    const/16 v30, 0x0

    goto :goto_38

    :cond_53
    move-object/from16 v32, v3

    move-object/from16 v49, v4

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    const/16 v29, 0x2

    goto :goto_38

    :cond_54
    move-object/from16 v49, v4

    move/from16 v29, v5

    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v45

    :goto_38
    array-length v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_55

    move v0, v4

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v41, v48

    move-object/from16 v52, v49

    goto/16 :goto_36

    :cond_55
    if-nez v21, :cond_56

    invoke-static {v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->j0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lx4/b;

    move-result-object v3

    move-object v9, v3

    goto :goto_39

    :cond_56
    move-object/from16 v9, v21

    :goto_39
    if-nez v9, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_57

    :goto_3a
    goto :goto_37

    :cond_57
    if-eqz v9, :cond_5a

    invoke-interface {v9}, Lx4/b;->deserialize()Z

    move-result v3

    if-nez v3, :cond_58

    goto :goto_3a

    :cond_58
    invoke-interface {v9}, Lx4/b;->ordinal()I

    move-result v6

    invoke-interface {v9}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    invoke-interface {v9}, Lx4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v11

    invoke-interface {v9}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v9}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Lcom/alibaba/fastjson/util/d;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v10

    move v8, v11

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILx4/b;Lx4/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v13}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    const/4 v0, 0x1

    const/16 v26, 0x0

    const/16 v36, 0x3

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v41, v48

    :goto_3b
    move-object/from16 v52, v49

    move-object/from16 v15, p0

    goto/16 :goto_4c

    :cond_59
    move/from16 v22, v6

    move/from16 v23, v10

    move/from16 v28, v11

    :cond_5a
    move-object/from16 v13, v48

    if-nez v9, :cond_5c

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    goto :goto_3d

    :cond_5b
    :goto_3c
    const/4 v0, 0x1

    const/16 v26, 0x0

    const/16 v36, 0x3

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    goto :goto_3b

    :cond_5c
    :goto_3d
    if-eqz v31, :cond_5d

    goto :goto_3c

    :cond_5d
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v17, :cond_5f

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_3e
    array-length v5, v15

    if-ge v3, v5, :cond_60

    aget-object v5, v15, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    aget-object v5, v15, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_3e

    :cond_5f
    move-object/from16 v6, v30

    :cond_60
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    const-string v5, "is"

    const-string v8, "g"

    if-nez v3, :cond_61

    const/16 v3, 0x200

    if-le v4, v3, :cond_62

    :cond_61
    move-object/from16 v12, p0

    move-object/from16 v11, v44

    goto/16 :goto_46

    :cond_62
    const/16 v3, 0x5f

    if-ne v4, v3, :cond_67

    if-eqz v17, :cond_65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_3f
    move-object/from16 v12, p0

    move-object/from16 v11, v44

    goto :goto_40

    :cond_63
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :goto_40
    invoke-static {v12, v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    :cond_64
    :goto_41
    move v10, v3

    goto/16 :goto_47

    :cond_65
    const/4 v3, 0x3

    move-object/from16 v12, p0

    move-object/from16 v11, v44

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_66

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_64

    move-object v0, v4

    goto :goto_41

    :cond_66
    move v10, v3

    move-object v0, v4

    goto/16 :goto_47

    :cond_67
    const/4 v3, 0x3

    move-object/from16 v12, p0

    move-object/from16 v11, v44

    const/16 v6, 0x66

    if-ne v4, v6, :cond_68

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_42
    move v10, v3

    :goto_43
    move-object/from16 v6, v30

    goto/16 :goto_47

    :cond_68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x5

    if-lt v4, v6, :cond_69

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_69
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_6a

    move-object/from16 v44, v11

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v52, v49

    const/4 v0, 0x1

    const/16 v26, 0x0

    const/16 v36, 0x3

    :goto_44
    move-object v15, v12

    goto/16 :goto_4c

    :cond_6a
    :goto_45
    const/4 v10, 0x3

    goto :goto_47

    :goto_46
    if-eqz v17, :cond_6b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v30

    goto :goto_45

    :cond_6b
    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    if-eqz v3, :cond_6c

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_6c
    const/4 v10, 0x3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :goto_47
    if-nez v6, :cond_6d

    invoke-static {v12, v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    :cond_6d
    const/4 v8, 0x0

    if-nez v6, :cond_6e

    aget-object v1, v1, v8

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_6e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    goto :goto_48

    :cond_6e
    move-object v3, v6

    :goto_48
    if-eqz v3, :cond_72

    move-object/from16 v7, v49

    invoke-static {v3, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lx4/b;

    if-eqz v21, :cond_71

    invoke-interface/range {v21 .. v21}, Lx4/b;->deserialize()Z

    move-result v1

    if-nez v1, :cond_6f

    move-object/from16 v52, v7

    move/from16 v26, v8

    move/from16 v36, v10

    move-object/from16 v44, v11

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    const/4 v0, 0x1

    goto/16 :goto_44

    :cond_6f
    invoke-interface/range {v21 .. v21}, Lx4/b;->ordinal()I

    move-result v6

    invoke-interface/range {v21 .. v21}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v22

    invoke-interface/range {v21 .. v21}, Lx4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v23

    invoke-interface/range {v21 .. v21}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface/range {v21 .. v21}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/alibaba/fastjson/util/d;

    const/16 v25, 0x0

    move-object v0, v5

    move-object/from16 v4, p0

    move-object/from16 v51, v5

    move-object/from16 v5, p1

    move-object/from16 v52, v7

    move/from16 v7, v22

    move/from16 v26, v8

    move/from16 v8, v23

    move/from16 v36, v10

    move-object/from16 v10, v21

    move-object/from16 v41, v13

    move-object v13, v11

    move-object/from16 v11, v25

    move-object/from16 v25, v15

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILx4/b;Lx4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v51

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    move-object/from16 v44, v13

    move-object/from16 v53, v43

    :goto_49
    const/4 v0, 0x1

    goto/16 :goto_4c

    :cond_70
    move-object/from16 v52, v7

    move/from16 v26, v8

    move/from16 v36, v10

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object v13, v11

    move-object v15, v12

    move-object/from16 v10, v21

    move/from16 v7, v22

    move/from16 v8, v23

    :goto_4a
    move-object/from16 v12, v43

    goto :goto_4b

    :cond_71
    move-object/from16 v52, v7

    move/from16 v26, v8

    move/from16 v36, v10

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object v13, v11

    move-object v15, v12

    move-object/from16 v10, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v28

    goto :goto_4a

    :cond_72
    move/from16 v26, v8

    move/from16 v36, v10

    move-object/from16 v41, v13

    move-object/from16 v25, v15

    move-object/from16 v52, v49

    move-object v13, v11

    move-object v15, v12

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v28

    move-object/from16 v10, v30

    goto :goto_4a

    :goto_4b
    if-eqz v12, :cond_73

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_73
    move-object v1, v0

    new-instance v11, Lcom/alibaba/fastjson/util/d;

    const/16 v21, 0x0

    move-object v0, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v44, v13

    move-object v13, v11

    move-object/from16 v11, v21

    move-object/from16 v53, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILx4/b;Lx4/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v13}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    goto :goto_49

    :cond_74
    move-object/from16 v33, v6

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v25, v15

    move-object/from16 v53, v43

    move-object/from16 v32, v45

    move-object/from16 v52, v46

    move-object/from16 v41, v48

    const/16 v26, 0x0

    const/16 v29, 0x2

    const/16 v36, 0x3

    move-object v15, v13

    goto :goto_49

    :goto_4c
    add-int/lit8 v9, v34, 0x1

    move-object v13, v15

    move-object/from16 v15, v25

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v45, v32

    move-object/from16 v38, v33

    move/from16 v10, v35

    move-object/from16 v48, v41

    move-object/from16 v46, v52

    move-object/from16 v43, v53

    goto/16 :goto_31

    :cond_75
    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object v15, v13

    move-object/from16 v53, v43

    move-object/from16 v52, v46

    const/16 v26, 0x0

    const/16 v36, 0x3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    move-object/from16 v13, p1

    move/from16 v11, v36

    move-object/from16 v12, v53

    invoke-static {v15, v13, v12, v14, v0}, Lcom/alibaba/fastjson/util/h;->e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v9, v10

    move/from16 v6, v26

    :goto_4d
    if-ge v6, v9, :cond_83

    aget-object v2, v10, v6

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_77

    :cond_76
    :goto_4e
    move/from16 v33, v6

    move/from16 v23, v7

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move/from16 v21, v11

    move-object/from16 v56, v12

    move-object/from16 v32, v37

    :goto_4f
    move-object/from16 v54, v44

    move-object/from16 v29, v52

    :goto_50
    const/4 v0, 0x1

    goto/16 :goto_54

    :cond_77
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_78

    goto :goto_4e

    :cond_78
    if-nez v31, :cond_76

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_79

    goto :goto_4e

    :cond_79
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v5, v37

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-class v3, Ljava/util/Map;

    if-nez v1, :cond_7a

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eq v1, v4, :cond_7a

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eq v1, v4, :cond_7a

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-ne v1, v4, :cond_7b

    :cond_7a
    move-object/from16 v4, v52

    goto :goto_51

    :cond_7b
    move-object/from16 v32, v5

    move/from16 v33, v6

    move/from16 v23, v7

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move/from16 v21, v11

    move-object/from16 v56, v12

    goto :goto_4f

    :goto_51
    invoke-static {v2, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lx4/b;

    if-eqz v17, :cond_7c

    invoke-interface/range {v17 .. v17}, Lx4/b;->deserialize()Z

    move-result v1

    if-eqz v1, :cond_7c

    move-object/from16 v29, v4

    move-object/from16 v32, v5

    move/from16 v33, v6

    move/from16 v23, v7

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move/from16 v21, v11

    move-object/from16 v56, v12

    move-object/from16 v54, v44

    goto/16 :goto_50

    :cond_7c
    if-eqz v17, :cond_7d

    invoke-interface/range {v17 .. v17}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7d

    invoke-interface/range {v17 .. v17}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v30

    move-object/from16 v1, v44

    goto :goto_53

    :cond_7d
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v44

    invoke-static {v15, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_80

    invoke-static {v7, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lx4/b;

    if-eqz v21, :cond_7e

    invoke-interface/range {v21 .. v21}, Lx4/b;->deserialize()Z

    move-result v21

    if-nez v21, :cond_7e

    move-object/from16 v54, v1

    move-object/from16 v29, v4

    move-object/from16 v32, v5

    move/from16 v33, v6

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move/from16 v21, v11

    move-object/from16 v56, v12

    const/4 v0, 0x1

    :goto_52
    const/16 v23, 0x4

    goto/16 :goto_54

    :cond_7e
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_7f

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_80

    :cond_7f
    move-object v3, v7

    goto :goto_53

    :cond_80
    move-object/from16 v3, v30

    :goto_53
    if-eqz v12, :cond_81

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_81
    move-object v7, v0

    invoke-static {v14, v7}, Lcom/alibaba/fastjson/util/h;->j(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/d;

    move-result-object v0

    if-eqz v0, :cond_82

    move-object/from16 v54, v1

    move-object/from16 v29, v4

    move-object/from16 v32, v5

    move/from16 v33, v6

    move-object/from16 v26, v8

    move/from16 v28, v9

    move-object/from16 v17, v10

    move-object/from16 v56, v12

    const/4 v0, 0x1

    const/16 v21, 0x3

    goto :goto_52

    :cond_82
    new-instance v11, Lcom/alibaba/fastjson/util/d;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object v0, v11

    move-object/from16 v54, v1

    move-object v1, v7

    move-object/from16 v29, v4

    move-object/from16 v4, p0

    move-object/from16 v32, v5

    move-object/from16 v5, p1

    move/from16 v33, v6

    move/from16 v6, v23

    const/16 v23, 0x4

    move/from16 v7, v26

    move-object/from16 v26, v8

    move/from16 v8, v28

    move/from16 v28, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v55, v11

    const/16 v21, 0x3

    move-object/from16 v11, v22

    move-object/from16 v56, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILx4/b;Lx4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v55

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    goto/16 :goto_50

    :goto_54
    add-int/lit8 v6, v33, 0x1

    move-object/from16 v10, v17

    move/from16 v11, v21

    move/from16 v7, v23

    move-object/from16 v8, v26

    move/from16 v9, v28

    move-object/from16 v52, v29

    move-object/from16 v37, v32

    move-object/from16 v44, v54

    move-object/from16 v12, v56

    goto/16 :goto_4d

    :cond_83
    move-object/from16 v56, v12

    move-object/from16 v54, v44

    const/4 v0, 0x1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_85

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->z0(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_84

    goto :goto_55

    :cond_84
    move/from16 v0, p3

    :goto_55
    if-eqz v0, :cond_85

    move-object v12, v15

    :goto_56
    if-eqz v12, :cond_85

    move-object/from16 v1, v54

    move-object/from16 v0, v56

    invoke-static {v15, v13, v0, v14, v1}, Lcom/alibaba/fastjson/util/h;->e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    goto :goto_56

    :cond_85
    new-instance v9, Lcom/alibaba/fastjson/util/h;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, v18

    move-object/from16 v4, v24

    move-object/from16 v5, v20

    move-object/from16 v6, v19

    move-object/from16 v7, v27

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lx4/d;Ljava/util/List;)V

    return-object v9
.end method

.method private static d(Ljava/lang/Class;)Ljava/util/Map;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    if-eqz p0, :cond_4

    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    aget-object v5, v2, v3

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    aget-object v4, v2, v3

    aget-object v5, v0, v3

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private static e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/h;->d(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v15

    array-length v14, v1

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_0
    if-ge v13, v14, :cond_9

    aget-object v5, v1, v13

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v2, p3

    move/from16 v17, v13

    move/from16 v18, v14

    goto/16 :goto_3

    :cond_1
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/util/d;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lx4/b;

    invoke-static {v5, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lx4/b;

    if-eqz v12, :cond_7

    invoke-interface {v12}, Lx4/b;->deserialize()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v12}, Lx4/b;->ordinal()I

    move-result v3

    invoke-interface {v12}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    invoke-interface {v12}, Lx4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v6

    invoke-interface {v12}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v12}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v2

    :cond_6
    move v8, v3

    move v9, v4

    move v10, v6

    goto :goto_2

    :cond_7
    move/from16 v8, v16

    move v9, v8

    move v10, v9

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    move-object v3, v2

    new-instance v11, Lcom/alibaba/fastjson/util/d;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    move-object v2, v11

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move/from16 v17, v13

    move-object/from16 v13, v18

    move/from16 v18, v14

    move-object v14, v15

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILx4/b;Lx4/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/h;->a(Ljava/util/List;Lcom/alibaba/fastjson/util/d;)Z

    :goto_3
    add-int/lit8 v13, v17, 0x1

    move/from16 v14, v18

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public static f(Ljava/lang/Class;Lx4/d;)Ljava/lang/Class;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->A0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p1}, Lx4/d;->builder()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static g([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 13

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "multi-JSONCreator"

    if-ge v3, v0, :cond_2

    aget-object v5, p0, v3

    const-class v6, Lx4/a;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lx4/a;

    if-eqz v6, :cond_1

    if-nez v1, :cond_0

    move-object v1, v5

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    array-length v0, p0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_9

    aget-object v5, p0, v3

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    array-length v7, v6

    if-nez v7, :cond_4

    goto :goto_5

    :cond_4
    array-length v7, v6

    move v8, v2

    :goto_3
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    array-length v10, v9

    move v11, v2

    :goto_4
    if-ge v11, v10, :cond_7

    aget-object v12, v9, v11

    instance-of v12, v12, Lx4/b;

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    if-nez v1, :cond_8

    move-object v1, v5

    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return-object v1
.end method

.method static h(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    array-length v0, p1

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    aget-object v5, v5, v2

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v1
.end method

.method private static i(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-class v5, Lx4/a;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lx4/a;

    if-eqz v5, :cond_3

    if-nez v1, :cond_2

    move-object v1, v4

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "multi-JSONCreator"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_6

    if-eqz p2, :cond_6

    array-length p0, p1

    :goto_2
    if-ge v2, p0, :cond_6

    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->s0(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v1, p2

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v1
.end method

.method private static j(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/d;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/d;

    iget-object v1, v0, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/d;->e()Lx4/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
