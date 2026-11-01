.class public Lorg/mvel2/compiler/PropertyVerifier;
.super Lorg/mvel2/optimizers/AbstractOptimizer;


# static fields
.field private static final COL:I = 0x2

.field private static final DONE:I = -0x1

.field private static final METH:I = 0x1

.field private static final NORM:I = 0x0

.field private static final WITH:I = 0x3


# instance fields
.field private classLiteral:Z

.field private ctx:Ljava/lang/Class;

.field private deepProperty:Z

.field private first:Z

.field private fqcn:Z

.field private inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private methodCall:Z

.field private paramTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedExternally:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V
    .locals 1

    invoke-direct {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->inputs:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->classLiteral:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->methodCall:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->deepProperty:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->fqcn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/mvel2/ParserContext;Ljava/lang/Class;)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->inputs:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->classLiteral:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->methodCall:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->deepProperty:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->fqcn:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    array-length v1, v1

    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    :cond_0
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    iput-object p3, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>([CIILorg/mvel2/ParserContext;)V
    .locals 1

    invoke-direct {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->inputs:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->classLiteral:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->methodCall:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->deepProperty:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->fqcn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    add-int/2addr p2, p3

    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    iput-object p4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>([CLorg/mvel2/ParserContext;)V
    .locals 1

    invoke-direct {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->inputs:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->classLiteral:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->methodCall:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->deepProperty:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->fqcn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method private getBeanProperty(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    iget-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0, p2}, Lorg/mvel2/ParserContext;->hasVarOrInput(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lorg/mvel2/compiler/PropertyVerifier;->recordTypeParmsForProperty(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1, p2}, Lorg/mvel2/ParserContext;->getVarOrInputType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0, p2}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->resolvedExternally:Z

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1, p2}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    const-string v3, "this"

    invoke-virtual {v0, v3}, Lorg/mvel2/ParserContext;->hasVarOrInput(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v3}, Lorg/mvel2/compiler/PropertyVerifier;->recordTypeParmsForProperty(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1, v3}, Lorg/mvel2/ParserContext;->getVarOrInputType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-boolean v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->resolvedExternally:Z

    :cond_5
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-static {p1, p2}, Lorg/mvel2/util/n;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Member;

    move-result-object v3

    goto :goto_0

    :cond_6
    move-object v3, v0

    :goto_0
    sget-boolean v4, Lorg/mvel2/d;->j:Z

    const-class v5, Ljava/lang/Class;

    if-eqz v4, :cond_7

    const-string v4, "class"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v5

    :cond_7
    instance-of v4, v3, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_c

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result p1

    if-eqz p1, :cond_b

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_9

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/mvel2/ParserContext;->setLastTypeParameters([Ljava/lang/reflect/Type;)V

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/compiler/PropertyVerifier;->type2Class(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    array-length v0, p2

    if-lez v0, :cond_8

    iget-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    :cond_8
    :goto_1
    array-length v0, p2

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v4, p2, v2

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz p1, :cond_a

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    iget-object p2, p0, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    if-eqz p1, :cond_a

    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_a
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_b
    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz v3, :cond_d

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v3}, Lorg/mvel2/compiler/PropertyVerifier;->getReturnType(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz v3, :cond_e

    iget-boolean v4, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    if-eqz v4, :cond_e

    invoke-virtual {v3, p2}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3, p2}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1, p2}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_e
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    const/4 v4, 0x1

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_11

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_2

    :cond_f
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v2, v4

    :goto_2
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v2

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p2, v0}, Lorg/mvel2/ParserContext;->setLastTypeParameters([Ljava/lang/reflect/Type;)V

    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_10

    goto :goto_3

    :cond_10
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    :goto_3
    return-object v1

    :cond_11
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz v3, :cond_12

    const-string v3, "length"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_12

    const-class p1, Ljava/lang/Integer;

    return-object p1

    :cond_12
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->tryStaticAccess()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_18

    iput-boolean v4, p0, Lorg/mvel2/compiler/PropertyVerifier;->fqcn:Z

    iput-boolean v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->resolvedExternally:Z

    instance-of p1, v3, Ljava/lang/Class;

    if-eqz p1, :cond_16

    sget-boolean p1, Lorg/mvel2/d;->j:Z

    if-eqz p1, :cond_13

    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const/4 v1, 0x6

    sub-int/2addr v0, v1

    invoke-direct {p1, p2, v0, v1}, Ljava/lang/String;-><init>([CII)V

    const-string p2, ".class"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    :cond_13
    move v2, v4

    :cond_14
    iput-boolean v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->classLiteral:Z

    if-eqz v2, :cond_15

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    :cond_15
    return-object v5

    :cond_16
    instance-of p1, v3, Ljava/lang/reflect/Field;

    const-string p2, "in verifier: "

    if-eqz p1, :cond_17

    :try_start_0
    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/mvel2/CompileException;

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw v0

    :cond_17
    :try_start_1
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lorg/mvel2/CompileException;

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw v0

    :cond_18
    if-eqz p1, :cond_19

    :try_start_2
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v0, v2, v3}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    :cond_19
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->isAllowNakedMethCall()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_4

    :cond_1a
    sget-boolean v0, Lorg/mvel2/d;->g:Z

    if-eqz v0, :cond_1b

    :goto_4
    invoke-direct {p0, p1, p2}, Lorg/mvel2/compiler/PropertyVerifier;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eq p1, v1, :cond_1b

    return-object p1

    :cond_1b
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result p1

    if-nez p1, :cond_1c

    return-object v1

    :cond_1c
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unqualified type in strict mode for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    invoke-direct {p1, p2, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method private getCollectionProperty(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    iget-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1, p2}, Lorg/mvel2/ParserContext;->hasVarOrInput(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1, p2}, Lorg/mvel2/ParserContext;->getVarOrInputType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/m;->T(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1, p2}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lorg/mvel2/compiler/PropertyVerifier;->resolvedExternally:Z

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1, p2}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/m;->T(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/mvel2/compiler/PropertyVerifier;->getBeanProperty(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :cond_3
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object v2, p1, v3

    :cond_4
    invoke-static {v2}, Lorg/mvel2/compiler/PropertyVerifier;->type2Class(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_5
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/mvel2/compiler/PropertyVerifier;->type2Class(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v2, p1

    goto :goto_1

    :cond_9
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown collection type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; property="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {v0, p1, p2, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_a
    :goto_1
    iget p1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    iget p1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    const/16 p2, 0x5d

    invoke-virtual {p0, p2}, Lorg/mvel2/optimizers/AbstractOptimizer;->scanTo(C)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "unterminated [ in token"

    invoke-virtual {p0, p2}, Lorg/mvel2/compiler/AbstractParser;->addFatalError(Ljava/lang/String;)V

    :cond_b
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int/2addr v1, p1

    invoke-direct {p2, v0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {p2, p1}, Lorg/mvel2/d;->a(Ljava/lang/String;Lorg/mvel2/ParserContext;)V

    iget p1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    return-object v2
.end method

.method private getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget v2, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget-boolean v3, v1, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    const/4 v4, -0x1

    const/16 v5, 0x28

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    iput-boolean v7, v1, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    iput-boolean v6, v1, Lorg/mvel2/compiler/PropertyVerifier;->methodCall:Z

    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3, v0}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3, v0}, Lorg/mvel2/ParserContext;->getStaticImport(Ljava/lang/String;)Lorg/mvel2/util/MethodStub;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/util/MethodStub;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_2

    :cond_0
    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3, v0}, Lorg/mvel2/ParserContext;->getFunction(Ljava/lang/String;)Lorg/mvel2/ast/Function;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_2

    iput-boolean v7, v1, Lorg/mvel2/compiler/PropertyVerifier;->resolvedExternally:Z

    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v8, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v9, v1, Lorg/mvel2/compiler/AbstractParser;->end:I

    invoke-static {v0, v8, v9, v5}, Lorg/mvel2/util/m;->d([CIIC)I

    move-result v0

    iput v0, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int v5, v0, v2

    if-le v5, v6, :cond_1

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    add-int/lit8 v8, v2, 0x1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v6

    invoke-static {v5, v8, v0}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object v0

    goto :goto_1

    :cond_1
    new-array v0, v7, [C

    :goto_1
    invoke-static {v0, v7, v4}, Lorg/mvel2/util/m;->y0([CII)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/mvel2/ast/Function;->checkArgumentCount(I)V

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    const-string v8, "this"

    invoke-virtual {v3, v8}, Lorg/mvel2/ParserContext;->hasVarOrInput(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {v1, v8}, Lorg/mvel2/compiler/PropertyVerifier;->recordTypeParmsForProperty(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3, v8}, Lorg/mvel2/ParserContext;->getVarOrInputType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-boolean v7, v1, Lorg/mvel2/compiler/PropertyVerifier;->resolvedExternally:Z

    goto :goto_0

    :cond_4
    move-object/from16 v3, p1

    goto :goto_0

    :goto_2
    iget v0, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v9, v1, Lorg/mvel2/compiler/AbstractParser;->end:I

    const-string v10, ""

    if-ge v0, v9, :cond_5

    iget-object v11, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v12, v11, v0

    if-ne v12, v5, :cond_5

    invoke-static {v11, v0, v9, v5}, Lorg/mvel2/util/m;->d([CIIC)I

    move-result v0

    iput v0, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int v5, v0, v2

    if-le v5, v6, :cond_5

    new-instance v5, Ljava/lang/String;

    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    add-int/lit8 v11, v2, 0x1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v6

    invoke-direct {v5, v9, v11, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_5
    move-object v5, v10

    :goto_3
    iget v0, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/2addr v0, v6

    iput v0, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v7, v4}, Lorg/mvel2/util/m;->y0([CII)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v7, [Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto/16 :goto_9

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/Class;

    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v0

    :goto_4
    move-object v9, v0

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v9}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_4

    :goto_5
    move v11, v7

    const/4 v0, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_c

    :try_start_0
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [C

    iget-object v13, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v12, v13}, Lorg/mvel2/d;->c([CLorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v5, v11

    const-string v12, "null"

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [C

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-class v12, Lorg/mvel2/util/l;

    aput-object v12, v5, v11
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    iget-object v12, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v13, v1, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-static {v0, v12, v13}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    move-result-object v0

    :cond_8
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    iget-object v13, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v13}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a

    iget-object v12, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v12}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/mvel2/c;

    invoke-interface {v9, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    iget-object v14, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-virtual {v13, v14}, Lorg/mvel2/c;->j([C)V

    new-instance v14, Ljava/lang/String;

    iget-object v15, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([C)V

    iget v15, v1, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, [C

    invoke-direct {v15, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget v14, v1, Lorg/mvel2/compiler/AbstractParser;->st:I

    add-int/2addr v4, v14

    invoke-virtual {v13, v4}, Lorg/mvel2/c;->i(I)V

    invoke-virtual {v13, v7}, Lorg/mvel2/c;->h(I)V

    invoke-virtual {v13, v7}, Lorg/mvel2/c;->k(I)V

    invoke-virtual {v13}, Lorg/mvel2/c;->a()V

    goto :goto_8

    :cond_a
    if-nez v0, :cond_b

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_b
    throw v0

    :cond_c
    move-object v0, v5

    :goto_9
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v5}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v5

    invoke-static {v0, v8, v3, v4, v5}, Lorg/mvel2/util/m;->J([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    const-string v9, ")"

    const-string v11, "("

    const-string v12, "."

    const-string v13, ", "

    if-nez v4, :cond_13

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v14, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v14}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v14

    invoke-static {v0, v8, v3, v4, v14}, Lorg/mvel2/util/m;->J([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_13

    new-instance v2, Lorg/mvel2/util/s;

    invoke-direct {v2}, Lorg/mvel2/util/s;-><init>()V

    :goto_a
    array-length v4, v0

    if-ge v7, v4, :cond_f

    aget-object v4, v0, v7

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v2, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    array-length v4, v0

    sub-int/2addr v4, v6

    if-ge v7, v4, :cond_e

    invoke-virtual {v2, v13}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    const-string v4, "size"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "length"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    array-length v0, v0

    if-nez v0, :cond_11

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    const-class v0, Ljava/lang/Integer;

    return-object v0

    :cond_11
    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v0

    if-nez v0, :cond_12

    return-object v5

    :cond_12
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to resolve method using strict-mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, v1, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    invoke-direct {v0, v2, v3, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_13
    iget-object v14, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v14}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v14

    if-eqz v14, :cond_1c

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v15

    move v6, v7

    :goto_c
    array-length v7, v15

    if-ge v6, v7, :cond_17

    aget-object v7, v15, v6

    move-object/from16 p2, v5

    instance-of v5, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_16

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    iget-object v5, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    move-object/from16 v17, v9

    new-instance v9, Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, [C

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v9}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    const-class v9, Ljava/lang/Class;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_14
    const/4 v7, 0x0

    aget-object v5, v15, v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v7, 0x0

    goto :goto_e

    :cond_16
    move-object/from16 v19, v2

    move-object/from16 v17, v9

    goto :goto_d

    :goto_e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, p2

    move-object/from16 v9, v17

    move-object/from16 v2, v19

    goto :goto_c

    :cond_17
    move-object/from16 p2, v5

    move-object/from16 v17, v9

    const/4 v7, 0x0

    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v5, v5

    if-ne v2, v5, :cond_19

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    move v5, v7

    :goto_f
    array-length v6, v2

    if-ge v5, v6, :cond_19

    iget-object v6, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v6}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v6, v6, v5

    aget-object v9, v2, v5

    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_18

    iget-object v6, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v6}, Lorg/mvel2/ParserContext;->getLastTypeParameters()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/mvel2/compiler/PropertyVerifier;->type2Class(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_10

    :cond_18
    move-object/from16 v6, p2

    :goto_10
    invoke-interface {v14, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_19
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    instance-of v6, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1a

    iget-object v6, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/mvel2/ParserContext;->setLastTypeParameters([Ljava/lang/reflect/Type;)V

    :cond_1a
    iget-object v2, v1, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    if-eqz v2, :cond_1b

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, v1, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/mvel2/compiler/PropertyVerifier;->type2Class(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-interface {v14, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    :cond_1c
    move-object/from16 v17, v9

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Lorg/mvel2/util/s;

    invoke-direct {v2}, Lorg/mvel2/util/s;-><init>()V

    :goto_11
    array-length v5, v0

    if-ge v7, v5, :cond_20

    aget-object v5, v0, v7

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :cond_1e
    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v2, v5}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    array-length v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v7, v5, :cond_1f

    invoke-virtual {v2, v13}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_20
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v0, "<package local>"

    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the referenced method is not accessible: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (scope: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; required: public"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    invoke-virtual {v1, v0, v2}, Lorg/mvel2/compiler/AbstractParser;->addFatalError(Ljava/lang/String;I)V

    :cond_22
    invoke-direct {v1, v3, v4}, Lorg/mvel2/compiler/PropertyVerifier;->getReturnType(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getReturnType(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lorg/mvel2/compiler/PropertyVerifier;->returnGenericType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lorg/mvel2/compiler/PropertyVerifier;->returnGenericType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_4

    aget-object v3, p1, v0

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_2
    if-gez v0, :cond_5

    invoke-direct {p0, p2}, Lorg/mvel2/compiler/PropertyVerifier;->returnGenericType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_5
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Class;

    goto :goto_3

    :cond_6
    invoke-direct {p0, p2}, Lorg/mvel2/compiler/PropertyVerifier;->returnGenericType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_7
    invoke-direct {p0, p2}, Lorg/mvel2/compiler/PropertyVerifier;->returnGenericType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private getWithProperty(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 11

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/lit8 v8, v0, 0x1

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const/16 v3, 0x7b

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v1, v0, v2, v3, v4}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    move-result v0

    new-instance v4, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor;

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int v9, v0, v8

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor;-><init>(Lorg/mvel2/ParserContext;Ljava/lang/String;[CIILjava/lang/Class;)V

    return-object p1
.end method

.method private recordParametricReturnedType(Ljava/lang/reflect/Type;)V
    .locals 5

    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mvel2/ParserContext;->setLastTypeParameters([Ljava/lang/reflect/Type;)V

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/compiler/PropertyVerifier;->type2Class(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private recordTypeParmsForProperty(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0, p1}, Lorg/mvel2/ParserContext;->getTypeParametersAsArray(Ljava/lang/String;)[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mvel2/ParserContext;->setLastTypeParameters([Ljava/lang/reflect/Type;)V

    :cond_0
    return-void
.end method

.method private returnGenericType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mvel2/compiler/PropertyVerifier;->recordParametricReturnedType(Ljava/lang/reflect/Type;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mvel2/ParserContext;->setLastTypeParameters([Ljava/lang/reflect/Type;)V

    :cond_0
    iget-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/mvel2/compiler/PropertyVerifier;->paramTypes:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lorg/mvel2/compiler/PropertyVerifier;->type2Class(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private static type2Class(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    check-cast p0, Ljava/lang/Class;

    goto :goto_1

    :cond_0
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public analyze()Ljava/lang/Class;
    .locals 4

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->resolvedExternally:Z

    iget-object v1, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    :cond_0
    :goto_0
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    if-ge v1, v2, :cond_6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mvel2/compiler/PropertyVerifier;->classLiteral:Z

    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->nextSubToken()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    invoke-direct {p0, v2}, Lorg/mvel2/compiler/PropertyVerifier;->getWithProperty(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/mvel2/compiler/PropertyVerifier;->getCollectionProperty(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/mvel2/compiler/PropertyVerifier;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/mvel2/compiler/PropertyVerifier;->getBeanProperty(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    :goto_1
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    if-ge v2, v3, :cond_5

    iget-boolean v2, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    if-nez v2, :cond_5

    iput-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->deepProperty:Z

    :cond_5
    iput-boolean v1, p0, Lorg/mvel2/compiler/PropertyVerifier;->first:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    return-object v0
.end method

.method public getCtx()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    return-object v0
.end method

.method public getInputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->inputs:Ljava/util/List;

    return-object v0
.end method

.method public isClassLiteral()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->classLiteral:Z

    return v0
.end method

.method public isDeepProperty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->deepProperty:Z

    return v0
.end method

.method public isFqcn()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->fqcn:Z

    return v0
.end method

.method public isInput()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->resolvedExternally:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->methodCall:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMethodCall()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->methodCall:Z

    return v0
.end method

.method public isResolvedExternally()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/PropertyVerifier;->resolvedExternally:Z

    return v0
.end method

.method public setCtx(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/compiler/PropertyVerifier;->ctx:Ljava/lang/Class;

    return-void
.end method

.method public setInputs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mvel2/compiler/PropertyVerifier;->inputs:Ljava/util/List;

    return-void
.end method
