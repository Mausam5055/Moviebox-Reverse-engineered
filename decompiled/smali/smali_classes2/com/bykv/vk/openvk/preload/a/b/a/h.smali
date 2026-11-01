.class public final Lcom/bykv/vk/openvk/preload/a/b/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/a/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/a/b/a/h$a;,
        Lcom/bykv/vk/openvk/preload/a/b/a/h$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/b/b;

.field private final b:Lcom/bykv/vk/openvk/preload/a/c;

.field private final c:Lcom/bykv/vk/openvk/preload/a/b/c;

.field private final d:Lcom/bykv/vk/openvk/preload/a/b/b/b;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/b;Lcom/bykv/vk/openvk/preload/a/c;Lcom/bykv/vk/openvk/preload/a/b/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bykv/vk/openvk/preload/a/b/b/b;->a()Lcom/bykv/vk/openvk/preload/a/b/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/h;->d:Lcom/bykv/vk/openvk/preload/a/b/b/b;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/h;->a:Lcom/bykv/vk/openvk/preload/a/b/b;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/h;->b:Lcom/bykv/vk/openvk/preload/a/c;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/h;->c:Lcom/bykv/vk/openvk/preload/a/b/c;

    return-void
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/bykv/vk/openvk/preload/a/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/a/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/h;->b:Lcom/bykv/vk/openvk/preload/a/c;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/preload/a/c;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/a/a/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/a/a/b;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/a/b/a/h$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v12

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v13

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v15, v1, :cond_c

    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    array-length v9, v10

    const/4 v8, 0x0

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_b

    aget-object v6, v10, v7

    const/4 v5, 0x1

    invoke-direct {v0, v6, v5}, Lcom/bykv/vk/openvk/preload/a/b/a/h;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    invoke-direct {v0, v6, v8}, Lcom/bykv/vk/openvk/preload/a/b/a/h;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v1, :cond_2

    if-eqz v16, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v29, v7

    move/from16 v21, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 p3, v14

    move-object/from16 p2, v15

    goto/16 :goto_8

    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/bykv/vk/openvk/preload/a/b/a/h;->d:Lcom/bykv/vk/openvk/preload/a/b/b/b;

    invoke-virtual {v2, v6}, Lcom/bykv/vk/openvk/preload/a/b/b/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual {v14}, Lcom/bykv/vk/openvk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v15, v3}, Lcom/bykv/vk/openvk/preload/a/b/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    invoke-direct {v0, v6}, Lcom/bykv/vk/openvk/preload/a/b/a/h;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/16 v18, 0x0

    move v2, v8

    move-object/from16 p2, v15

    move-object/from16 v15, v18

    :goto_3
    if-ge v2, v3, :cond_9

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 p3, v14

    move-object/from16 v14, v19

    check-cast v14, Ljava/lang/String;

    if-eqz v2, :cond_3

    move/from16 v19, v8

    goto :goto_4

    :cond_3
    move/from16 v19, v1

    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v5

    instance-of v8, v5, Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v22, 0x1

    goto :goto_5

    :cond_4
    const/16 v22, 0x0

    :goto_5
    const-class v5, Lcom/bykv/vk/openvk/preload/a/a/a;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/bykv/vk/openvk/preload/a/a/a;

    if-eqz v5, :cond_5

    iget-object v8, v0, Lcom/bykv/vk/openvk/preload/a/b/a/h;->a:Lcom/bykv/vk/openvk/preload/a/b/b;

    invoke-static {v8, v11, v1, v5}, Lcom/bykv/vk/openvk/preload/a/b/a/d;->a(Lcom/bykv/vk/openvk/preload/a/b/b;Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/a/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v5

    goto :goto_6

    :cond_5
    move-object/from16 v5, v18

    :goto_6
    if-eqz v5, :cond_6

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    :goto_7
    if-nez v5, :cond_7

    invoke-virtual {v11, v1}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v5

    :cond_7
    move-object/from16 v23, v5

    new-instance v5, Lcom/bykv/vk/openvk/preload/a/b/a/h$1;

    move-object/from16 v24, v1

    move-object v1, v5

    move/from16 v25, v2

    move-object v2, v14

    move/from16 v26, v3

    move/from16 v3, v19

    move-object/from16 v27, v4

    move/from16 v4, v16

    move-object v0, v5

    const/16 v20, 0x1

    move-object v5, v6

    move-object/from16 v28, v6

    move v6, v8

    move/from16 v29, v7

    move-object/from16 v7, v23

    const/16 v21, 0x0

    move-object/from16 v8, p1

    move/from16 v23, v9

    move-object/from16 v9, v24

    move-object/from16 v24, v10

    move/from16 v10, v22

    invoke-direct/range {v1 .. v10}, Lcom/bykv/vk/openvk/preload/a/b/a/h$1;-><init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/bykv/vk/openvk/preload/a/r;Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;Z)V

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/b/a/h$b;

    if-nez v15, :cond_8

    move-object v15, v0

    :cond_8
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v14, p3

    move/from16 v1, v19

    move/from16 v5, v20

    move/from16 v8, v21

    move/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move/from16 v7, v29

    goto/16 :goto_3

    :cond_9
    move/from16 v29, v7

    move/from16 v21, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 p3, v14

    if-nez v15, :cond_a

    :goto_8
    add-int/lit8 v7, v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v8, v21

    move/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_1

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/bykv/vk/openvk/preload/a/b/a/h$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 p3, v14

    move-object/from16 p2, v15

    invoke-virtual/range {p3 .. p3}, Lcom/bykv/vk/openvk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Lcom/bykv/vk/openvk/preload/a/b/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bykv/vk/openvk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_c
    return-object v12
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/h;->c:Lcom/bykv/vk/openvk/preload/a/b/c;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Ljava/lang/reflect/Field;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 3
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

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/h;->a:Lcom/bykv/vk/openvk/preload/a/b/b;

    invoke-virtual {v1, p2}, Lcom/bykv/vk/openvk/preload/a/b/b;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/b/h;

    move-result-object v1

    new-instance v2, Lcom/bykv/vk/openvk/preload/a/b/a/h$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/h;->a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/bykv/vk/openvk/preload/a/b/a/h$a;-><init>(Lcom/bykv/vk/openvk/preload/a/b/h;Ljava/util/Map;)V

    return-object v2
.end method
