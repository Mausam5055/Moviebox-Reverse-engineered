.class public Lorg/mvel2/util/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/Object;

.field public static final b:[Ljava/lang/Class;

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/util/Map;

.field private static final e:Ljava/util/Map;

.field private static final f:Ljava/util/HashMap;

.field private static final g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/mvel2/util/m;->b:[Ljava/lang/Class;

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/mvel2/util/m;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v2}, Ljava/util/WeakHashMap;-><init>(IF)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/mvel2/util/m;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/mvel2/util/m;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mvel2/util/m;->f:Ljava/util/HashMap;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/math/BigDecimal;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x6f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v5, Ljava/math/BigInteger;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v6, Ljava/lang/String;

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x65

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x6a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-class v10, Ljava/lang/Integer;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v12, 0x64

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v13, 0x69

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-class v14, Ljava/lang/Short;

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x68

    move-object/from16 v17, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x6c

    move-object/from16 v18, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v16, v15

    const-class v15, Ljava/lang/Float;

    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v12

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x67

    move-object/from16 v21, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x6d

    move-object/from16 v22, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v20, v12

    const-class v12, Ljava/lang/Double;

    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v8

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x66

    move-object/from16 v25, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v24, 0x6b

    move-object/from16 v26, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v24, v8

    const-class v8, Ljava/lang/Long;

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x7

    move-object/from16 v28, v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v27, v3

    const-class v3, Ljava/lang/Boolean;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x71

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v29, v3

    const-class v3, Ljava/lang/Byte;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v30, v3

    const-class v3, Ljava/lang/Character;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v5, Lorg/mvel2/compiler/BlankLiteral;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    const/16 v3, 0x1e

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v5}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lorg/mvel2/util/m;->g:Ljava/util/Map;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v5, Ljava/lang/Boolean;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x6b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x71

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Byte;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Character;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Lorg/mvel2/util/InternalNumber;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v30

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/mvel2/compiler/BlankLiteral;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A([CII[C)Z
    .locals 4

    array-length v0, p3

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    array-length v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/2addr p1, p2

    sub-int/2addr p1, v1

    :goto_0
    if-ltz v0, :cond_2

    add-int/lit8 p2, p1, -0x1

    aget-char p1, p0, p1

    add-int/lit8 v3, v0, -0x1

    aget-char v0, p3, v0

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    move p1, p2

    move v0, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static A0(CI)Ljava/lang/String;
    .locals 2

    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aput-char p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static B([CIIC)I
    .locals 1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_1

    aget-char v0, p0, p1

    if-ne v0, p3, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static B0(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public static C([C)I
    .locals 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_5

    aget-char v2, p0, v0

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    if-nez v1, :cond_2

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_3

    :cond_2
    if-ne v2, v3, :cond_4

    :cond_3
    return v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static C0(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-ne v4, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->C0(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p0

    invoke-interface {p0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2, p1}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1, p2}, Lorg/mvel2/util/m;->v(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p0
.end method

.method public static D0(Ljava/lang/String;Ljava/lang/String;)F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v2, p0

    array-length v3, p1

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    array-length v2, p0

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    array-length v2, p1

    int-to-float v2, v2

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_0
    array-length v3, p0

    if-ge v4, v3, :cond_3

    array-length v3, p1

    if-ge v4, v3, :cond_3

    aget-char v3, p0, v4

    aget-char v5, p1, v4

    if-ne v3, v5, :cond_2

    add-float/2addr v1, v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    div-float/2addr v1, v2

    return v1

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method public static E(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)Lorg/mvel2/integration/impl/ClassImportResolverFactory;
    .locals 2

    if-eqz p0, :cond_2

    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolverFactory;->getNextFactory()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lorg/mvel2/integration/impl/ClassImportResolverFactory;-><init>(Lorg/mvel2/ParserConfiguration;Lorg/mvel2/integration/VariableResolverFactory;Z)V

    invoke-static {p0, p1}, Lk10/e;->a(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object p0

    check-cast p0, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    return-object p0

    :cond_2
    new-instance p0, Lorg/mvel2/OptimizationFailure;

    const-string p1, "unable to import classes.  no variable resolver factory available."

    invoke-direct {p0, p1}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static E0([CI)I
    .locals 6

    :cond_0
    :goto_0
    array-length v0, p0

    if-eq p1, v0, :cond_9

    aget-char v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v2, 0xd

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, p1, 0x1

    array-length v4, p0

    if-eq v3, v4, :cond_7

    aget-char v0, p0, v3

    const/16 v4, 0x2a

    const/16 v5, 0x20

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_2

    goto :goto_4

    :cond_2
    aput-char v5, p0, p1

    move p1, v3

    :goto_1
    array-length v0, p0

    if-eq p1, v0, :cond_3

    aget-char v0, p0, p1

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, p1, 0x1

    aput-char v5, p0, p1

    move p1, v0

    goto :goto_1

    :cond_3
    array-length v0, p0

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aput-char v5, p0, p1

    move p1, v0

    goto :goto_0

    :cond_4
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-char v5, p0, p1

    move p1, v3

    :goto_2
    if-eq p1, v0, :cond_6

    aget-char v1, p0, p1

    if-ne v1, v4, :cond_5

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    if-eq v1, v2, :cond_6

    :cond_5
    add-int/lit8 v1, p1, 0x1

    aput-char v5, p0, p1

    move p1, v1

    goto :goto_2

    :cond_6
    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p1, 0x2

    aput-char v5, p0, v0

    aput-char v5, p0, p1

    move p1, v1

    goto :goto_0

    :cond_7
    :goto_3
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    :goto_4
    return p1
.end method

.method public static F(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassNotFoundException;)Ljava/lang/Class;
    .locals 4

    const/16 v0, 0x2e

    :catch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    throw p2
.end method

.method public static F0([CII)[C
    .locals 3

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    new-array p0, v0, [C

    return-object p0

    :cond_0
    sub-int/2addr p2, p1

    new-array v1, p2, [C

    :goto_0
    if-eq v0, p2, :cond_1

    add-int v2, v0, p1

    aget-char v2, p0, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static G([CIIC)I
    .locals 1

    add-int/2addr p2, p1

    :goto_0
    if-lt p2, p1, :cond_1

    aget-char v0, p0, p2

    if-ne v0, p3, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static G0(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-static {p0, p1, v0}, Lorg/mvel2/util/m;->F(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassNotFoundException;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static H0([C)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    invoke-direct {v0, p0}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([C)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CIILorg/mvel2/ParserContext;)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static J([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/mvel2/util/m;->K([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;ZZ)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CLorg/mvel2/ParserContext;)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static K([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;ZZ)Ljava/lang/reflect/Method;
    .locals 10

    array-length v0, p3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, -0x1

    move v3, v0

    :goto_0
    array-length v4, p3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_7

    aget-object v6, p3, v5

    if-eqz p5, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    if-nez v8, :cond_2

    array-length v8, p0

    if-nez v8, :cond_2

    if-eqz v1, :cond_5

    invoke-static {v6, v1}, Lorg/mvel2/util/m;->e0(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v8

    invoke-static {p0, v7, v8}, Lorg/mvel2/util/m;->Z([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p0, p4, v7, v8}, Lorg/mvel2/util/m;->S([Ljava/lang/Class;Z[Ljava/lang/Class;Z)I

    move-result v7

    if-eqz v7, :cond_6

    if-le v7, v2, :cond_4

    move-object v1, v6

    move v2, v7

    goto :goto_3

    :cond_4
    if-ne v7, v2, :cond_6

    invoke-static {v6, v1}, Lorg/mvel2/util/m;->e0(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v8, :cond_6

    :cond_5
    :goto_2
    move-object v1, v6

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    if-nez v3, :cond_b

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_b

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, p3

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/reflect/Method;

    move v5, v0

    :goto_4
    array-length v6, p3

    if-ge v5, v6, :cond_9

    aget-object v6, p3, v5

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    move v5, v0

    :goto_5
    array-length v6, v3

    if-ge v5, v6, :cond_a

    array-length v6, p3

    add-int/2addr v6, v5

    aget-object v7, v3, v5

    aput-object v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x1

    move-object p3, v4

    goto/16 :goto_0

    :cond_b
    :goto_6
    return-object v1
.end method

.method public static K0([CII)[C
    .locals 3

    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, v1, p1

    aget-char v2, p0, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static L([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Lorg/mvel2/util/m;->J([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static L0([CII)[C
    .locals 2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-array p0, v0, [C

    return-object p0

    :cond_0
    add-int/2addr p2, p1

    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 v1, p2, -0x1

    aget-char v1, p0, v1

    invoke-static {v1}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget-char v1, p0, p1

    invoke-static {v1}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ge p1, p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr p2, p1

    if-nez p2, :cond_3

    new-array p0, v0, [C

    return-object p0

    :cond_3
    invoke-static {p0, p1, p2}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static M([Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 8

    invoke-static {p1}, Lorg/mvel2/util/m;->P(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v5

    invoke-static {v4}, Lorg/mvel2/util/m;->O(Ljava/lang/reflect/Constructor;)[Ljava/lang/Class;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lorg/mvel2/util/m;->Z([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    array-length v7, p0

    if-nez v7, :cond_1

    array-length v7, v6

    if-nez v7, :cond_1

    return-object v4

    :cond_1
    invoke-static {p0, p2, v6, v5}, Lorg/mvel2/util/m;->S([Ljava/lang/Class;Z[Ljava/lang/Class;Z)I

    move-result v5

    if-eqz v5, :cond_2

    if-le v5, v3, :cond_2

    move-object v1, v4

    move v3, v5

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static M0([CII)I
    .locals 1

    array-length v0, p0

    if-le p2, v0, :cond_0

    array-length p2, p0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-lt p2, p1, :cond_1

    add-int/lit8 v0, p2, -0x1

    aget-char v0, p0, v0

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static N([Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1, p2}, Lorg/mvel2/util/m;->M([Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static N0([CI)I
    .locals 1

    :goto_0
    array-length v0, p0

    if-eq p1, v0, :cond_0

    aget-char v0, p0, p1

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static O(Ljava/lang/reflect/Constructor;)[Ljava/lang/Class;
    .locals 3

    sget-object v0, Lorg/mvel2/util/m;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static O0(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1f

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    goto/16 :goto_f

    :cond_0
    const-class v0, [Ljava/lang/Integer;

    const-class v1, [I

    if-eq p0, v0, :cond_1e

    if-ne p0, v1, :cond_1

    goto/16 :goto_e

    :cond_1
    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_1d

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    goto/16 :goto_d

    :cond_2
    const-class v0, [Ljava/lang/Long;

    const-class v1, [J

    if-eq p0, v0, :cond_1c

    if-ne p0, v1, :cond_3

    goto/16 :goto_c

    :cond_3
    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_1b

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    goto/16 :goto_b

    :cond_4
    const-class v0, [Ljava/lang/Character;

    const-class v1, [C

    if-eq p0, v0, :cond_1a

    if-ne p0, v1, :cond_5

    goto/16 :goto_a

    :cond_5
    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_19

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    goto/16 :goto_9

    :cond_6
    const-class v0, [Ljava/lang/Short;

    const-class v1, [S

    if-eq p0, v0, :cond_18

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_17

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    goto :goto_7

    :cond_8
    const-class v0, [Ljava/lang/Double;

    const-class v1, [D

    if-eq p0, v0, :cond_16

    if-ne p0, v1, :cond_9

    goto :goto_6

    :cond_9
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_15

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    goto :goto_5

    :cond_a
    const-class v0, [Ljava/lang/Float;

    const-class v1, [F

    if-eq p0, v0, :cond_14

    if-ne p0, v1, :cond_b

    goto :goto_4

    :cond_b
    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_13

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_c

    goto :goto_3

    :cond_c
    const-class v0, [Ljava/lang/Boolean;

    const-class v1, [Z

    if-eq p0, v0, :cond_12

    if-ne p0, v1, :cond_d

    goto :goto_2

    :cond_d
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_11

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    goto :goto_1

    :cond_e
    const-class v0, [Ljava/lang/Byte;

    const-class v1, [B

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_f

    goto :goto_0

    :cond_f
    return-object p0

    :cond_10
    :goto_0
    return-object v1

    :cond_11
    :goto_1
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_12
    :goto_2
    return-object v1

    :cond_13
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_14
    :goto_4
    return-object v1

    :cond_15
    :goto_5
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_16
    :goto_6
    return-object v1

    :cond_17
    :goto_7
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_18
    :goto_8
    return-object v1

    :cond_19
    :goto_9
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_1a
    :goto_a
    return-object v1

    :cond_1b
    :goto_b
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_1c
    :goto_c
    return-object v1

    :cond_1d
    :goto_d
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_1e
    :goto_e
    return-object v1

    :cond_1f
    :goto_f
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0
.end method

.method public static P(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 3

    sget-object v0, Lorg/mvel2/util/m;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static Q()Ljava/io/FileWriter;
    .locals 3

    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/mvel2/d;->x()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static R(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    invoke-virtual {p3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-ne p2, v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    array-length v6, p1

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    aget-object v7, p1, v5

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static S([Ljava/lang/Class;Z[Ljava/lang/Class;Z)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-eq v1, v3, :cond_d

    if-eqz p3, :cond_0

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_0

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_0
    aget-object v3, p2, v1

    :goto_1
    aget-object v4, p0, v1

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_e

    :goto_2
    add-int/lit8 v2, v2, 0x7

    goto/16 :goto_5

    :cond_1
    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    aget-object v5, p0, v1

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, p0, v1

    invoke-static {v4}, Lorg/mvel2/util/m;->O0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto :goto_2

    :cond_4
    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_5

    :cond_5
    aget-object v4, p0, v1

    invoke-static {v4, v3}, Lorg/mvel2/util/m;->l0(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v2, v2, 0x5

    goto :goto_5

    :cond_6
    aget-object v4, p0, v1

    invoke-static {v4, v3}, Lorg/mvel2/util/m;->k0(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v2, v2, 0x4

    goto :goto_5

    :cond_7
    invoke-static {v3}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    aget-object v5, p0, v1

    invoke-static {v5}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const-class v5, Ljava/lang/Object;

    if-eqz v4, :cond_8

    aget-object v4, p0, v1

    if-eq v5, v4, :cond_8

    invoke-static {v3, v4}, Lorg/mvel2/util/m;->C0(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    goto :goto_5

    :cond_8
    if-nez p1, :cond_b

    aget-object v4, p0, v1

    invoke-static {v3, v4}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_9

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_a

    aget-object v3, p0, v1

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_a

    goto :goto_3

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    if-eq v3, v5, :cond_c

    aget-object v3, p0, v1

    const-class v4, Lorg/mvel2/util/l;

    if-ne v3, v4, :cond_e

    :cond_c
    goto :goto_4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    move v0, v2

    :cond_e
    if-nez v0, :cond_f

    if-eqz p3, :cond_f

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    array-length p0, p0

    if-ne p1, p0, :cond_f

    add-int/lit8 v0, v0, 0x3

    :cond_f
    return v0
.end method

.method public static T(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static U(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-static {v1, v0, v2, v8}, Lorg/mvel2/util/m;->R(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object v4, v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eq v4, p1, :cond_4

    return-object v4

    :cond_4
    :goto_2
    if-eqz p0, :cond_6

    invoke-static {v1, v0, v2, p0}, Lorg/mvel2/util/m;->R(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object v4, p1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_2

    :cond_6
    return-object v4
.end method

.method public static V(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/mvel2/util/m;->U(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static W([CI)I
    .locals 11

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    aput-char v1, p0, v0

    aget-char v2, p0, p1

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-eq v2, v3, :cond_12

    const/16 v3, 0x27

    if-eq v2, v3, :cond_11

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_10

    const/16 v3, 0x62

    if-eq v2, v3, :cond_f

    const/16 v3, 0x66

    if-eq v2, v3, :cond_e

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_d

    const/16 v3, 0x72

    if-eq v2, v3, :cond_c

    const/16 v3, 0x74

    if-eq v2, v3, :cond_b

    const/16 v3, 0x75

    const/4 v5, 0x3

    if-eq v2, v3, :cond_5

    move v2, p1

    :cond_0
    aget-char v3, p0, v2

    const/16 v6, 0x30

    if-lt v3, v6, :cond_4

    const/16 v7, 0x38

    if-ge v3, v7, :cond_4

    const-string v7, "0"

    const/4 v8, 0x2

    if-eq v2, p1, :cond_1

    aget-char v9, p0, p1

    const/16 v10, 0x33

    if-le v9, v10, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    sub-int/2addr v2, p1

    add-int/2addr v2, v4

    invoke-direct {v5, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p0, v0

    aput-char v1, p0, p1

    add-int/2addr p1, v4

    aput-char v1, p0, p1

    return v8

    :cond_1
    sub-int v9, v2, p1

    if-ne v9, v8, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    add-int/2addr v9, v4

    invoke-direct {v3, p0, p1, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p0, v0

    aput-char v1, p0, p1

    add-int/lit8 v0, p1, 0x1

    aput-char v1, p0, v0

    add-int/2addr p1, v8

    aput-char v1, p0, p1

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    array-length v8, p0

    if-eq v2, v8, :cond_3

    if-lt v3, v6, :cond_3

    const/16 v6, 0x37

    if-le v3, v6, :cond_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    add-int/2addr v9, v4

    invoke-direct {v3, p0, p1, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p0, v0

    aput-char v1, p0, p1

    return v4

    :cond_4
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal escape sequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    :cond_5
    add-int/lit8 v2, p1, 0x4

    array-length v3, p0

    const-string v6, "illegal unicode escape sequence"

    if-gt v2, v3, :cond_a

    move v3, p1

    :cond_6
    :goto_0
    add-int/2addr v3, v4

    sub-int v7, v3, p1

    const/4 v8, 0x5

    if-eq v7, v8, :cond_9

    aget-char v7, p0, v3

    const/16 v8, 0x2f

    if-le v7, v8, :cond_7

    const/16 v8, 0x3a

    if-lt v7, v8, :cond_6

    :cond_7
    const/16 v8, 0x40

    if-le v7, v8, :cond_8

    const/16 v8, 0x47

    if-ge v7, v8, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Lorg/mvel2/CompileException;

    invoke-direct {p1, v6, p0, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v6, p1, 0x1

    const/4 v7, 0x4

    invoke-direct {v4, p0, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, p0, v0

    aput-char v1, p0, p1

    aput-char v1, p0, v6

    add-int/lit8 v0, p1, 0x2

    aput-char v1, p0, v0

    add-int/2addr p1, v5

    aput-char v1, p0, p1

    aput-char v1, p0, v2

    return v8

    :cond_a
    new-instance v0, Lorg/mvel2/CompileException;

    invoke-direct {v0, v6, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_b
    const/16 v0, 0x9

    aput-char v0, p0, p1

    return v4

    :cond_c
    const/16 v0, 0xd

    aput-char v0, p0, p1

    return v4

    :cond_d
    const/16 v0, 0xa

    aput-char v0, p0, p1

    return v4

    :cond_e
    const/16 v0, 0xc

    aput-char v0, p0, p1

    return v4

    :cond_f
    const/16 v0, 0x8

    aput-char v0, p0, p1

    return v4

    :cond_10
    aput-char v3, p0, p1

    return v4

    :cond_11
    aput-char v3, p0, p1

    return v4

    :cond_12
    aput-char v3, p0, p1

    return v4
.end method

.method public static X([CII)Ljava/lang/Object;
    .locals 8

    const/16 v0, 0x6c

    const/16 v1, 0x4c

    const/16 v2, 0x49

    const/16 v3, 0x42

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-eq p2, v5, :cond_4

    aget-char v6, p0, p1

    const/16 v7, 0x30

    if-ne v6, v7, :cond_4

    add-int/lit8 v6, p1, 0x1

    aget-char v6, p0, v6

    if-eq v6, v4, :cond_4

    add-int v4, p1, p2

    sub-int/2addr v4, v5

    aget-char v6, p0, v4

    invoke-static {v6}, Lorg/mvel2/util/m;->b0(I)Z

    move-result v6

    if-nez v6, :cond_3

    aget-char v4, p0, v4

    if-eq v4, v3, :cond_2

    if-eq v4, v2, :cond_1

    if-eq v4, v1, :cond_0

    if-eq v4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, v5

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/String;

    sub-int/2addr p2, v5

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/String;

    sub-int/2addr p2, v5

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    add-int v6, p1, p2

    sub-int/2addr v6, v5

    aget-char v7, p0, v6

    invoke-static {v7}, Lorg/mvel2/util/m;->b0(I)Z

    move-result v7

    if-nez v7, :cond_b

    aget-char v6, p0, v6

    if-eq v6, v4, :cond_a

    if-eq v6, v3, :cond_9

    const/16 v3, 0x44

    if-eq v6, v3, :cond_a

    const/16 v3, 0x46

    if-eq v6, v3, :cond_8

    if-eq v6, v2, :cond_7

    if-eq v6, v1, :cond_6

    const/16 v1, 0x64

    if-eq v6, v1, :cond_a

    const/16 v1, 0x66

    if-eq v6, v1, :cond_8

    if-ne v6, v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p2, Lorg/mvel2/CompileException;

    const-string v0, "unrecognized numeric literal"

    invoke-direct {p2, v0, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, v5

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/String;

    sub-int/2addr p2, v5

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, v5

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/String;

    sub-int/2addr p2, v5

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, v5

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1, p2}, Lorg/mvel2/util/m;->t0([CII)I

    move-result v0

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_c

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p1, Ljava/math/BigDecimal;

    sget-object p2, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-direct {p1, p0, p2}, Ljava/math/BigDecimal;-><init>([CLjava/math/MathContext;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Y([C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-char v3, p0, v1

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Lorg/mvel2/util/m;->W([CI)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    array-length v1, p0

    sub-int/2addr v1, v2

    new-array v1, v1, [C

    array-length v2, p0

    move v3, v0

    :goto_1
    if-ge v0, v2, :cond_4

    aget-char v4, p0, v0

    if-eqz v4, :cond_3

    add-int/lit8 v5, v3, 0x1

    aput-char v4, v1, v3

    move v3, v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static Z([Ljava/lang/Class;[Ljava/lang/Class;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v0

    array-length v2, p0

    if-gt v1, v2, :cond_2

    :cond_0
    if-nez p2, :cond_1

    array-length p1, p1

    array-length p0, p0

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/Class;)I
    .locals 1

    sget-object v0, Lorg/mvel2/util/m;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x32

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a0([CII)Z
    .locals 1

    add-int/lit8 v0, p1, 0x2

    if-le p2, v0, :cond_0

    add-int/lit8 v0, p2, -0x2

    invoke-static {p0, p1, v0}, Lorg/mvel2/util/m;->n0([CII)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-char p1, p0, v0

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    sub-int/2addr p2, p1

    aget-char p0, p0, p2

    const/16 p2, 0x5d

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;
    .locals 2

    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->isSingleNode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->getFirstNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->isThisVal()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lorg/mvel2/compiler/ExecutableLiteral;

    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mvel2/compiler/ExecutableLiteral;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->canSerializeAccessor()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/mvel2/compiler/ExecutableAccessorSafe;

    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/mvel2/compiler/ExecutableAccessorSafe;-><init>(Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/mvel2/compiler/ExecutableAccessor;

    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/mvel2/compiler/ExecutableAccessor;-><init>(Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;)V

    :goto_0
    return-object v1

    :cond_2
    return-object p0
.end method

.method public static b0(I)Z
    .locals 1

    const/16 v0, 0x2f

    if-le p0, v0, :cond_0

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c([CIC)I
    .locals 1

    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Lorg/mvel2/util/m;->d([CIIC)I

    move-result p0

    return p0
.end method

.method public static c0(I)Z
    .locals 1

    const/16 v0, 0x60

    if-le p0, v0, :cond_0

    const/16 v0, 0x7b

    if-lt p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x40

    if-le p0, v0, :cond_1

    const/16 v0, 0x5b

    if-lt p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x2f

    if-le p0, v0, :cond_2

    const/16 v0, 0x3a

    if-lt p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x24

    if-eq p0, v0, :cond_4

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d([CIIC)I
    .locals 9

    const/16 v0, 0x7b

    const/16 v1, 0x5b

    const/16 v2, 0x28

    if-eq p3, v2, :cond_2

    if-eq p3, v1, :cond_1

    if-eq p3, v0, :cond_0

    move v3, p3

    goto :goto_0

    :cond_0
    const/16 v3, 0x7d

    goto :goto_0

    :cond_1
    const/16 v3, 0x5d

    goto :goto_0

    :cond_2
    const/16 v3, 0x29

    :goto_0
    const/4 v4, 0x1

    if-ne p3, v3, :cond_4

    add-int/2addr p1, v4

    :goto_1
    if-ge p1, p2, :cond_f

    aget-char v3, p0, p1

    if-ne v3, p3, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr p1, v4

    move v5, v4

    :goto_2
    if-ge p1, p2, :cond_f

    if-ge p1, p2, :cond_9

    aget-char v6, p0, p1

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_9

    add-int/lit8 v6, p1, 0x1

    if-ne v6, p2, :cond_5

    return p1

    :cond_5
    aget-char v8, p0, v6

    if-ne v8, v7, :cond_6

    move p1, v6

    :goto_3
    if-ge p1, p2, :cond_9

    aget-char v6, p0, p1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    const/16 v6, 0x2a

    if-ne v8, v6, :cond_9

    add-int/lit8 p1, p1, 0x2

    :goto_4
    if-ge p1, p2, :cond_9

    aget-char v8, p0, p1

    if-eq v8, v6, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v8, p1, 0x1

    if-ge v8, p2, :cond_8

    aget-char v8, p0, v8

    if-ne v8, v7, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    :goto_6
    if-ne p1, p2, :cond_a

    return p1

    :cond_a
    aget-char v6, p0, p1

    const/16 v7, 0x27

    if-eq v6, v7, :cond_d

    const/16 v7, 0x22

    if-ne v6, v7, :cond_b

    goto :goto_7

    :cond_b
    if-ne v6, p3, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    if-ne v6, v3, :cond_e

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_e

    return p1

    :cond_d
    :goto_7
    invoke-static {v6, p0, p1, p2}, Lorg/mvel2/util/m;->h(C[CII)I

    move-result p1

    :cond_e
    :goto_8
    add-int/2addr p1, v4

    goto :goto_2

    :cond_f
    if-eq p3, v2, :cond_12

    if-eq p3, v1, :cond_11

    if-eq p3, v0, :cond_10

    new-instance p2, Lorg/mvel2/CompileException;

    const-string p3, "unterminated string literal"

    invoke-direct {p2, p3, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    :cond_10
    new-instance p2, Lorg/mvel2/CompileException;

    const-string p3, "unbalanced braces { ... }"

    invoke-direct {p2, p3, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    :cond_11
    new-instance p2, Lorg/mvel2/CompileException;

    const-string p3, "unbalanced braces [ ... ]"

    invoke-direct {p2, p3, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    :cond_12
    new-instance p2, Lorg/mvel2/CompileException;

    const-string p3, "unbalanced braces ( ... )"

    invoke-direct {p2, p3, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2
.end method

.method public static d0(C)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static e([CIICLorg/mvel2/ParserContext;)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/16 v5, 0x7b

    const/16 v6, 0x5b

    const/16 v7, 0x28

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    const/16 v8, 0x7d

    goto :goto_0

    :cond_1
    const/16 v8, 0x5d

    goto :goto_0

    :cond_2
    const/16 v8, 0x29

    :goto_0
    if-ne v3, v8, :cond_4

    add-int/lit8 v4, v1, 0x1

    :goto_1
    if-eq v4, v2, :cond_14

    aget-char v8, v0, v4

    if-ne v8, v3, :cond_3

    return v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v12, v10

    :goto_2
    if-ge v9, v2, :cond_14

    aget-char v13, v0, v9

    invoke-static {v13}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v13

    const/16 v14, 0xd

    const/16 v15, 0xa

    if-eqz v13, :cond_7

    aget-char v13, v0, v9

    if-eq v13, v15, :cond_5

    if-eq v13, v14, :cond_13

    goto :goto_6

    :cond_5
    if-eqz v4, :cond_6

    int-to-short v13, v9

    invoke-virtual {v4, v13}, Lorg/mvel2/ParserContext;->setLineOffset(I)V

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    if-ge v9, v2, :cond_d

    aget-char v13, v0, v9

    const/16 v5, 0x2f

    if-ne v13, v5, :cond_d

    add-int/lit8 v13, v9, 0x1

    if-ne v13, v2, :cond_8

    return v9

    :cond_8
    aget-char v6, v0, v13

    if-ne v6, v5, :cond_9

    move v9, v13

    :goto_3
    if-ge v9, v2, :cond_d

    aget-char v5, v0, v9

    if-eq v5, v15, :cond_d

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    const/16 v13, 0x2a

    if-ne v6, v13, :cond_d

    add-int/lit8 v9, v9, 0x2

    :goto_4
    if-eq v9, v2, :cond_d

    aget-char v6, v0, v9

    if-eq v6, v15, :cond_b

    if-eq v6, v14, :cond_b

    if-eq v6, v13, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v6, v9, 0x1

    if-ge v6, v2, :cond_b

    aget-char v6, v0, v6

    if-ne v6, v5, :cond_b

    goto :goto_6

    :cond_b
    if-eqz v4, :cond_c

    int-to-short v6, v9

    invoke-virtual {v4, v6}, Lorg/mvel2/ParserContext;->setLineOffset(I)V

    :cond_c
    add-int/lit8 v11, v11, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    if-ne v9, v2, :cond_e

    return v9

    :cond_e
    aget-char v5, v0, v9

    const/16 v6, 0x27

    if-eq v5, v6, :cond_12

    const/16 v6, 0x22

    if-ne v5, v6, :cond_f

    goto :goto_7

    :cond_f
    if-ne v5, v3, :cond_10

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_10
    if-ne v5, v8, :cond_13

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_13

    if-eqz v4, :cond_11

    invoke-virtual {v4, v11}, Lorg/mvel2/ParserContext;->incrementLineCount(I)I

    :cond_11
    return v9

    :cond_12
    :goto_7
    invoke-static {v5, v0, v9, v2}, Lorg/mvel2/util/m;->h(C[CII)I

    move-result v9

    :cond_13
    :goto_8
    add-int/2addr v9, v10

    const/16 v5, 0x7b

    const/16 v6, 0x5b

    goto/16 :goto_2

    :cond_14
    if-eq v3, v7, :cond_17

    const/16 v2, 0x5b

    if-eq v3, v2, :cond_16

    const/16 v2, 0x7b

    if-eq v3, v2, :cond_15

    new-instance v2, Lorg/mvel2/CompileException;

    const-string v3, "unterminated string literal"

    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v2

    :cond_15
    new-instance v2, Lorg/mvel2/CompileException;

    const-string v3, "unbalanced braces { ... }"

    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v2

    :cond_16
    new-instance v2, Lorg/mvel2/CompileException;

    const-string v3, "unbalanced braces [ ... ]"

    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v2

    :cond_17
    new-instance v2, Lorg/mvel2/CompileException;

    const-string v3, "unbalanced braces ( ... )"

    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v2
.end method

.method private static e0(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-class v0, [I

    const-class v1, [Ljava/lang/Integer;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Character;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-class v0, [C

    const-class v1, [Ljava/lang/Character;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const-class v0, [J

    const-class v1, [Ljava/lang/Long;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_6

    goto :goto_0

    :cond_6
    const-class v0, [S

    const-class v1, [Ljava/lang/Short;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_8

    goto :goto_0

    :cond_8
    const-class v0, [D

    const-class v1, [Ljava/lang/Double;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_9

    goto :goto_0

    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_a

    goto :goto_0

    :cond_a
    const-class v0, [F

    const-class v1, [Ljava/lang/Float;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_b

    goto :goto_0

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_c

    goto :goto_0

    :cond_c
    const-class v0, [Z

    const-class v1, [Ljava/lang/Boolean;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_d

    goto :goto_0

    :cond_d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_e

    goto :goto_0

    :cond_e
    const-class v0, [B

    const-class v1, [Ljava/lang/Byte;

    if-eq p0, v0, :cond_10

    if-ne p0, v1, :cond_f

    goto :goto_0

    :cond_f
    return-object p0

    :cond_10
    :goto_0
    return-object v1
.end method

.method public static f0(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p0, v2

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    return v5

    :cond_0
    invoke-static {v3}, Lorg/mvel2/util/m;->c0(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static g([CII)[Ljava/lang/String;
    .locals 6

    add-int v0, p1, p2

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_0
    if-ge v3, v0, :cond_5

    aget-char v4, p0, v3

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0x28

    if-eq v4, v5, :cond_2

    const/16 v5, 0x29

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_4

    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x1

    if-ne v5, v2, :cond_1

    add-int/2addr v3, v5

    sub-int p2, v3, p1

    invoke-static {p0, p1, p2}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object p1

    sub-int/2addr v0, v3

    invoke-static {p0, v3, v0}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    xor-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/mvel2/util/m;->h0(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v1, p0, [C

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/String;

    check-cast p0, [C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lorg/mvel2/util/m;->h0(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/math/BigDecimal;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/math/BigInteger;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/lang/Long;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_3

    instance-of p0, p0, Ljava/lang/Character;

    if-eqz p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static h(C[CII)I
    .locals 3

    :goto_0
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_1

    aget-char v1, p1, v0

    if-eq v1, p0, :cond_1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_0

    :cond_1
    if-ge v0, p3, :cond_2

    aget-char p2, p1, v0

    if-ne p2, p0, :cond_2

    return v0

    :cond_2
    new-instance p0, Lorg/mvel2/CompileException;

    const-string p2, "unterminated string literal"

    invoke-direct {p0, p2, p1, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p0
.end method

.method public static h0(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    :cond_0
    move v3, v1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x7e

    if-ne v3, v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/mvel2/util/m;->b0(I)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-lez v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method public static i([CIILorg/mvel2/ParserContext;)I
    .locals 2

    :goto_0
    array-length v0, p0

    if-eq p1, v0, :cond_4

    aget-char v0, p0, p1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, p2, v0, p3}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    move-result p1

    array-length v0, p0

    if-lt p1, v0, :cond_3

    :cond_1
    return p1

    :cond_2
    array-length v1, p0

    invoke-static {v0, p0, p1, v1}, Lorg/mvel2/util/m;->h(C[CII)I

    move-result p1

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return p1
.end method

.method public static i0([CII)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    add-int v3, v1, v2

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    aget-char v6, v0, v1

    if-eq v6, v4, :cond_0

    const/16 v7, 0x7e

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v1, 0x1

    aget-char v7, v0, v6

    if-ne v7, v4, :cond_1

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    add-int/2addr v6, v5

    :goto_1
    move v7, v5

    goto :goto_3

    :cond_2
    :goto_2
    move v6, v1

    goto :goto_1

    :goto_3
    if-ge v6, v3, :cond_15

    aget-char v9, v0, v6

    invoke-static {v9}, Lorg/mvel2/util/m;->b0(I)Z

    move-result v10

    if-nez v10, :cond_14

    const/16 v10, 0x2e

    if-eqz v7, :cond_3

    if-ne v9, v10, :cond_3

    move v8, v4

    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_3
    const-string v11, "invalid number literal: "

    const/16 v12, 0x6c

    const/16 v13, 0x66

    const/16 v14, 0x4c

    const/16 v15, 0x49

    const/16 v4, 0x46

    const/16 v8, 0x42

    if-eq v2, v5, :cond_6

    add-int/lit8 v5, v3, -0x1

    if-ne v6, v5, :cond_6

    if-eq v9, v10, :cond_5

    if-eq v9, v8, :cond_4

    const/16 v0, 0x44

    if-eq v9, v0, :cond_4

    if-eq v9, v4, :cond_4

    if-eq v9, v15, :cond_4

    if-eq v9, v14, :cond_4

    const/16 v0, 0x64

    if-eq v9, v0, :cond_4

    if-eq v9, v13, :cond_4

    if-eq v9, v12, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    new-instance v2, Lorg/mvel2/CompileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v2

    :cond_6
    add-int/lit8 v5, v1, 0x1

    if-ne v6, v5, :cond_e

    const/16 v5, 0x78

    if-ne v9, v5, :cond_e

    aget-char v5, v0, v1

    const/16 v10, 0x30

    if-ne v5, v10, :cond_e

    const/4 v5, 0x1

    add-int/2addr v6, v5

    :goto_4
    if-ge v6, v3, :cond_c

    aget-char v1, v0, v6

    invoke-static {v1}, Lorg/mvel2/util/m;->b0(I)Z

    move-result v5

    if-nez v5, :cond_b

    const/16 v5, 0x41

    if-lt v1, v5, :cond_7

    if-le v1, v4, :cond_b

    :cond_7
    const/16 v5, 0x61

    if-lt v1, v5, :cond_8

    if-le v1, v13, :cond_b

    :cond_8
    const/4 v0, 0x1

    sub-int/2addr v2, v0

    if-ne v6, v2, :cond_9

    if-eq v1, v8, :cond_a

    if-eq v1, v15, :cond_a

    if-eq v1, v14, :cond_a

    if-eq v1, v12, :cond_a

    :cond_9
    const/4 v0, 0x0

    nop

    :cond_a
    return v0

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v0, v2, -0x2

    if-lez v0, :cond_d

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    :goto_5
    return v5

    :cond_e
    if-eq v6, v1, :cond_12

    add-int/lit8 v4, v6, 0x1

    if-ge v4, v3, :cond_12

    const/16 v5, 0x45

    if-eq v9, v5, :cond_f

    const/16 v5, 0x65

    if-ne v9, v5, :cond_12

    :cond_f
    aget-char v5, v0, v4

    const/16 v8, 0x2d

    if-eq v5, v8, :cond_11

    const/16 v9, 0x2b

    if-ne v5, v9, :cond_10

    goto :goto_7

    :cond_10
    move v6, v4

    :goto_6
    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    :goto_7
    add-int/lit8 v6, v6, 0x2

    goto :goto_6

    :cond_12
    if-ne v6, v1, :cond_13

    const/4 v4, 0x0

    return v4

    :cond_13
    new-instance v3, Lorg/mvel2/CompileException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v3

    :cond_14
    move v8, v4

    :goto_8
    add-int/2addr v6, v5

    move v4, v8

    goto/16 :goto_3

    :cond_15
    const/4 v4, 0x0

    if-le v3, v1, :cond_16

    goto :goto_9

    :cond_16
    move v5, v4

    :goto_9
    return v5
.end method

.method public static j([CIILorg/mvel2/ParserContext;)I
    .locals 2

    :goto_0
    array-length v0, p0

    if-eq p1, v0, :cond_2

    aget-char v0, p0, p1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2, v1, p3}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    move-result p1

    goto :goto_1

    :cond_2
    return p1
.end method

.method public static j0(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_2

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lorg/mvel2/util/m;->o0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mvel2/util/m;->b0(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal use of reserved word: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static k0(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, p0, v2

    const/4 v4, 0x1

    if-nez p1, :cond_5

    if-nez v3, :cond_5

    return v4

    :cond_5
    const/16 v5, 0x12

    invoke-static {v3, v5, p1}, Lm10/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    return v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method private static l0(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lorg/mvel2/util/m;->O0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_7

    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_7

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_7

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_7

    :cond_5
    if-ne p1, v0, :cond_6

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_7

    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method private static m([ZLjava/lang/Boolean;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static m0(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static n([BLjava/lang/Byte;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static n0([CII)Z
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    aget-char v0, p0, p1

    invoke-static {v0}, Lorg/mvel2/util/m;->c0(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static o([CLjava/lang/Character;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static o0(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->OPERATORS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static p([DLjava/lang/Double;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    array-length p1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    aget-wide v4, p0, v3

    cmpl-double v4, v4, v0

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static p0([CI)Z
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    :goto_0
    array-length v0, p0

    if-eq p1, v0, :cond_1

    aget-char v0, p0, p1

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p0

    if-eq p1, v0, :cond_2

    aget-char p0, p0, p1

    const/16 p1, 0x3b

    if-eq p0, p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static q([FLjava/lang/Float;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    cmpl-float v3, v3, p1

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static q0(C)Z
    .locals 1

    const/16 v0, 0x21

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static r([ILjava/lang/Integer;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static r0(Ljava/math/BigDecimal;I)Ljava/lang/Object;
    .locals 4

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x6b

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static s([JLjava/lang/Long;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    array-length p1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    aget-wide v4, p0, v3

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static s0([CI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    :goto_0
    array-length v0, p0

    if-eq p1, v0, :cond_0

    aget-char v0, p0, p1

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    new-instance v0, Lorg/mvel2/CompileException;

    const-string v1, "unexpected end of statement"

    invoke-direct {v0, v1, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0
.end method

.method private static t(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, [Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->m([ZLjava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p0, [I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->r([ILjava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast p0, [J

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->s([JLjava/lang/Long;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2

    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    check-cast p0, [D

    check-cast p1, Ljava/lang/Double;

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->p([DLjava/lang/Double;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    return v2

    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_9

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_8

    check-cast p0, [F

    check-cast p1, Ljava/lang/Float;

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->q([FLjava/lang/Float;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    return v2

    :cond_9
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_a

    check-cast p0, [C

    check-cast p1, Ljava/lang/Character;

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->o([CLjava/lang/Character;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    move v2, v3

    :goto_5
    return v2

    :cond_b
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_c

    check-cast p0, [S

    check-cast p1, Ljava/lang/Short;

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->u([SLjava/lang/Short;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_6

    :cond_c
    move v2, v3

    :goto_6
    return v2

    :cond_d
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_f

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_e

    check-cast p0, [B

    check-cast p1, Ljava/lang/Byte;

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->n([BLjava/lang/Byte;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_7

    :cond_e
    move v2, v3

    :goto_7
    return v2

    :cond_f
    return v3
.end method

.method public static t0([CII)I
    .locals 8

    const/16 v0, 0x2d

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    aget-char v2, p0, p1

    if-ne v2, v0, :cond_0

    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-char v3, p0, v2

    if-ne v3, v0, :cond_2

    add-int/lit8 v2, p1, 0x2

    goto :goto_0

    :cond_1
    move v2, p1

    :cond_2
    :goto_0
    add-int/2addr p1, p2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x1

    const/16 v5, 0x65

    if-ge v2, p1, :cond_7

    aget-char v6, p0, v2

    invoke-static {v6}, Lorg/mvel2/util/m;->b0(I)Z

    move-result v7

    if-nez v7, :cond_6

    const/16 v3, 0x2e

    if-eq v6, v3, :cond_4

    const/16 v3, 0x45

    if-eq v6, v3, :cond_3

    if-eq v6, v5, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v2, 0x1

    if-ge v2, p1, :cond_5

    aget-char v4, p0, v3

    if-ne v4, v0, :cond_5

    add-int/lit8 v2, v2, 0x2

    :cond_4
    :goto_2
    move v3, v1

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v2, v1

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_a

    if-eqz v3, :cond_8

    const/16 p0, 0x67

    return p0

    :cond_8
    const/16 p0, 0x9

    if-le p2, p0, :cond_9

    const/16 p0, 0x66

    return p0

    :cond_9
    return v5

    :cond_a
    return v4
.end method

.method private static u([SLjava/lang/Short;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-short v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static u0(C)I
    .locals 1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_9

    const/16 v0, 0x26

    if-eq p0, v0, :cond_8

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_7

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_5

    const/16 v0, 0x5e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x7c

    if-eq p0, v0, :cond_3

    const/16 v0, 0xbb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xab

    if-eq p0, v0, :cond_1

    const/16 v0, 0xac

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0

    :cond_2
    const/16 p0, 0x9

    return p0

    :cond_3
    const/4 p0, 0x7

    return p0

    :cond_4
    const/16 p0, 0x8

    return p0

    :cond_5
    const/4 p0, 0x3

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_7
    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x6

    return p0

    :cond_9
    const/4 p0, 0x4

    return p0
.end method

.method public static v(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_0
    sget-object v0, Lorg/mvel2/util/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/WeakHashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eq p1, v3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_3
    throw v2
.end method

.method public static v0(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;
    .locals 1

    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->isImportInjectionRequired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->isAllowBootstrapBypass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->isSingleNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static w(Ljava/lang/String;[CIII)[C
    .locals 5

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_8

    if-eq p4, v0, :cond_7

    const/4 v2, 0x2

    if-eq p4, v2, :cond_6

    const/4 v2, 0x3

    if-eq p4, v2, :cond_5

    const/4 v2, 0x4

    if-eq p4, v2, :cond_4

    const/4 v2, 0x6

    if-eq p4, v2, :cond_3

    const/4 v2, 0x7

    if-eq p4, v2, :cond_2

    const/16 v2, 0x14

    if-eq p4, v2, :cond_1

    packed-switch p4, :pswitch_data_0

    move p4, v1

    goto :goto_0

    :pswitch_0
    const/16 p4, 0xac

    goto :goto_0

    :pswitch_1
    const/16 p4, 0xab

    goto :goto_0

    :pswitch_2
    const/16 p4, 0xbb

    goto :goto_0

    :cond_1
    const/16 p4, 0x23

    goto :goto_0

    :cond_2
    const/16 p4, 0x7c

    goto :goto_0

    :cond_3
    const/16 p4, 0x26

    goto :goto_0

    :cond_4
    const/16 p4, 0x25

    goto :goto_0

    :cond_5
    const/16 p4, 0x2f

    goto :goto_0

    :cond_6
    const/16 p4, 0x2a

    goto :goto_0

    :cond_7
    const/16 p4, 0x2d

    goto :goto_0

    :cond_8
    const/16 p4, 0x2b

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p3

    add-int/2addr v3, v0

    new-array v3, v3, [C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    aput-char p4, v3, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {p1, p2, v3, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w0([C)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    const/16 v2, 0x28

    const/4 v3, -0x1

    if-ge v0, v1, :cond_1

    aget-char v1, p0, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-eq v0, v3, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, v1, v2}, Lorg/mvel2/util/m;->c([CIC)I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v0, v2}, Lorg/mvel2/util/m;->y0([CII)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static x([CII)Ljava/lang/String;
    .locals 2

    add-int/2addr p2, p1

    array-length v0, p0

    if-le p2, v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_0
    :goto_0
    const/16 v0, 0x21

    if-eq p1, p2, :cond_1

    aget-char v1, p0, p1

    if-ge v1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq p2, p1, :cond_2

    add-int/lit8 v1, p2, -0x1

    aget-char v1, p0, v1

    if-ge v1, v0, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static x0([CII)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    array-length p2, p0

    :cond_0
    add-int v1, p1, p2

    move v2, p1

    :goto_0
    if-ge p1, v1, :cond_a

    aget-char v3, p0, p1

    const/16 v4, 0x22

    if-eq v3, v4, :cond_8

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x28

    if-eq v3, v4, :cond_3

    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v3

    if-nez v3, :cond_9

    aget-char v3, p0, p1

    invoke-static {v3}, Lorg/mvel2/util/m;->c0(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    new-instance p1, Lorg/mvel2/CompileException;

    const-string p2, "expected parameter"

    invoke-direct {p1, p2, p0, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    :cond_2
    array-length v3, p0

    invoke-static {v4, p0, p1, v3}, Lorg/mvel2/util/m;->h(C[CII)I

    move-result p1

    goto :goto_3

    :cond_3
    invoke-static {p0, p1, v3}, Lorg/mvel2/util/m;->c([CIC)I

    move-result p1

    goto :goto_3

    :cond_4
    if-le p1, v2, :cond_6

    :goto_1
    aget-char v3, p0, v2

    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/String;

    sub-int v4, p1, v2

    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    aget-char v2, p0, p1

    invoke-static {v2}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, p1, 0x1

    goto :goto_3

    :cond_8
    array-length v3, p0

    invoke-static {v4, p0, p1, v3}, Lorg/mvel2/util/m;->h(C[CII)I

    move-result p1

    :cond_9
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_a
    if-ge v2, v1, :cond_b

    if-le p1, v2, :cond_b

    sub-int/2addr p1, v2

    invoke-static {p0, v2, p1}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_c

    invoke-static {p0}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c

    invoke-static {p0, v2, p2}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_c

    invoke-static {p0}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static y(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    return-object v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mvel2/util/m;->y(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static y0([CII)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    array-length p2, p0

    :cond_0
    add-int v1, p1, p2

    move v2, p1

    :goto_0
    if-ge p1, v1, :cond_8

    aget-char v3, p0, p1

    const/16 v4, 0x22

    if-eq v3, v4, :cond_7

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x27

    if-eq v3, v4, :cond_1

    const/16 v4, 0x28

    if-eq v3, v4, :cond_2

    goto :goto_3

    :cond_1
    array-length v3, p0

    invoke-static {v4, p0, p1, v3}, Lorg/mvel2/util/m;->h(C[CII)I

    move-result p1

    goto :goto_3

    :cond_2
    invoke-static {p0, p1, v3}, Lorg/mvel2/util/m;->c([CIC)I

    move-result p1

    goto :goto_3

    :cond_3
    if-le p1, v2, :cond_5

    :goto_1
    aget-char v3, p0, v2

    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    sub-int v3, p1, v2

    invoke-static {p0, v2, v3}, Lorg/mvel2/util/m;->L0([CII)[C

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    aget-char v2, p0, p1

    invoke-static {v2}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, p1, 0x1

    goto :goto_3

    :cond_7
    array-length v3, p0

    invoke-static {v4, p0, p1, v3}, Lorg/mvel2/util/m;->h(C[CII)I

    move-result p1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_8
    if-ge v2, v1, :cond_9

    if-le p1, v2, :cond_9

    sub-int/2addr p1, v2

    invoke-static {p0, v2, p1}, Lorg/mvel2/util/m;->L0([CII)[C

    move-result-object p0

    array-length p1, p0

    if-lez p1, :cond_a

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a

    invoke-static {p0, v2, p2}, Lorg/mvel2/util/m;->L0([CII)[C

    move-result-object p0

    array-length p1, p0

    if-lez p1, :cond_a

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    return-object v0
.end method

.method public static z(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/mvel2/util/m;->y(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Ljava/lang/String;[CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    add-int v5, v2, p3

    const-string v7, ""

    move v8, v2

    move v9, v8

    move-object v10, v7

    const/4 v11, -0x1

    :goto_0
    const-string v12, "."

    const-string v13, "operative assignment not possible here"

    if-ge v8, v5, :cond_f

    aget-char v15, v1, v8

    const/16 v6, 0x22

    const/16 v16, 0x1

    if-eq v15, v6, :cond_d

    const/16 v6, 0x25

    const/16 v14, 0x3d

    if-eq v15, v6, :cond_c

    const/16 v6, 0x2f

    if-eq v15, v6, :cond_6

    if-eq v15, v14, :cond_4

    const/16 v6, 0x5b

    if-eq v15, v6, :cond_d

    const/16 v6, 0x7b

    if-eq v15, v6, :cond_d

    const/16 v6, 0x27

    if-eq v15, v6, :cond_d

    const/16 v6, 0x28

    if-eq v15, v6, :cond_d

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    if-nez v10, :cond_1

    if-nez v0, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/String;

    sub-int v11, v8, v9

    invoke-direct {v6, v1, v9, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6, v3, v4}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2e

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v11, v8, v9

    invoke-virtual {v6, v1, v9, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v4}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :goto_2
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v2

    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getExpr()[C

    move-result-object v3

    array-length v3, v3

    sub-int v3, v3, p3

    sub-int/2addr v2, v3

    add-int/2addr v9, v2

    invoke-virtual {v0, v9}, Lorg/mvel2/CompileException;->setCursor(I)V

    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setExpr([C)V

    throw v0

    :cond_1
    const/4 v6, -0x1

    if-eq v11, v6, :cond_3

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v6, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sub-int v13, v8, v9

    invoke-static {v12, v1, v9, v13, v11}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6, v3, v4}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v10, v6}, Lorg/mvel2/d;->B(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_2
    new-instance v0, Lorg/mvel2/CompileException;

    invoke-direct {v0, v13, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_3
    sub-int v6, v8, v9

    invoke-static {v1, v9, v6, v3, v4}, Lorg/mvel2/d;->q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v10, v6}, Lorg/mvel2/d;->B(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/mvel2/CompileException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x0

    :goto_4
    move v9, v8

    const/4 v11, -0x1

    goto/16 :goto_a

    :goto_5
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v2

    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getExpr()[C

    move-result-object v3

    array-length v3, v3

    sub-int v3, v3, p3

    sub-int/2addr v2, v3

    add-int/2addr v9, v2

    invoke-virtual {v0, v9}, Lorg/mvel2/CompileException;->setCursor(I)V

    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setExpr([C)V

    throw v0

    :cond_4
    new-instance v6, Ljava/lang/String;

    sub-int v10, v8, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    move/from16 v12, v16

    goto :goto_6

    :cond_5
    const/4 v12, 0x0

    :goto_6
    sub-int/2addr v10, v12

    invoke-direct {v6, v1, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v8, 0x1

    goto/16 :goto_a

    :cond_6
    const/16 v12, 0x20

    if-ge v8, v5, :cond_8

    add-int/lit8 v13, v8, 0x1

    aget-char v13, v1, v13

    if-ne v13, v6, :cond_8

    :goto_7
    if-ge v8, v5, :cond_7

    aget-char v6, v1, v8

    const/16 v13, 0xa

    if-eq v6, v13, :cond_7

    add-int/lit8 v6, v8, 0x1

    aput-char v12, v1, v8

    move v8, v6

    goto :goto_7

    :cond_7
    if-nez v10, :cond_e

    :goto_8
    move v9, v8

    goto :goto_a

    :cond_8
    if-ge v8, v5, :cond_b

    add-int/lit8 v13, v8, 0x1

    aget-char v13, v1, v13

    const/16 v15, 0x2a

    if-ne v13, v15, :cond_b

    add-int/lit8 v13, v5, -0x1

    :goto_9
    if-ge v8, v13, :cond_a

    aget-char v14, v1, v8

    if-ne v14, v15, :cond_9

    add-int/lit8 v14, v8, 0x1

    aget-char v14, v1, v14

    if-eq v14, v6, :cond_a

    :cond_9
    add-int/lit8 v14, v8, 0x1

    aput-char v12, v1, v8

    move v8, v14

    goto :goto_9

    :cond_a
    add-int/lit8 v6, v8, 0x1

    aput-char v12, v1, v8

    add-int/lit8 v8, v8, 0x2

    aput-char v12, v1, v6

    if-nez v10, :cond_e

    goto :goto_8

    :cond_b
    if-ge v8, v5, :cond_e

    add-int/lit8 v6, v8, 0x1

    aget-char v6, v1, v6

    if-ne v6, v14, :cond_e

    const/4 v11, 0x3

    goto :goto_a

    :cond_c
    :pswitch_1
    add-int/lit8 v6, v8, 0x1

    if-ge v6, v5, :cond_e

    aget-char v6, v1, v6

    if-ne v6, v14, :cond_e

    invoke-static {v15}, Lorg/mvel2/util/m;->u0(C)I

    move-result v11

    goto :goto_a

    :cond_d
    invoke-static {v1, v8, v5, v15}, Lorg/mvel2/util/m;->d([CIIC)I

    move-result v8

    :cond_e
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_f
    if-eq v9, v5, :cond_15

    if-eqz v10, :cond_13

    :try_start_2
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_b

    :cond_10
    const/4 v6, -0x1

    if-eq v11, v6, :cond_12

    if-eqz v0, :cond_11

    new-instance v2, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sub-int/2addr v5, v9

    invoke-static {v0, v1, v9, v5, v11}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v3, v4}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v10, v0}, Lorg/mvel2/d;->B(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :cond_11
    new-instance v0, Lorg/mvel2/CompileException;

    invoke-direct {v0, v13, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_12
    sub-int/2addr v5, v9

    invoke-static {v1, v9, v5, v3, v4}, Lorg/mvel2/d;->q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v10, v0}, Lorg/mvel2/d;->B(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_13
    :goto_b
    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/String;

    sub-int/2addr v5, v9

    invoke-direct {v0, v1, v9, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v3, v4}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    goto :goto_d

    :cond_14
    new-instance v2, Lorg/mvel2/util/s;

    invoke-direct {v2, v0}, Lorg/mvel2/util/s;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Lorg/mvel2/util/s;->a(C)Lorg/mvel2/util/s;

    move-result-object v0

    sub-int/2addr v5, v9

    invoke-virtual {v0, v1, v9, v5}, Lorg/mvel2/util/s;->e([CII)Lorg/mvel2/util/s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/mvel2/CompileException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    move-result v2

    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getExpr()[C

    move-result-object v3

    array-length v3, v3

    sub-int v3, v3, p3

    sub-int/2addr v2, v3

    add-int/2addr v9, v2

    invoke-virtual {v0, v9}, Lorg/mvel2/CompileException;->setCursor(I)V

    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setExpr([C)V

    throw v0

    :cond_15
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
