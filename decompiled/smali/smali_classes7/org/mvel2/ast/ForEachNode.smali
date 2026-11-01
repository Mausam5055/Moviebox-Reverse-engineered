.class public Lorg/mvel2/ast/ForEachNode;
.super Lorg/mvel2/ast/BlockNode;


# static fields
.field private static final ARRAY:I = 0x1

.field private static final CHARSEQUENCE:I = 0x2

.field private static final INTEGER:I = 0x3

.field private static final ITERABLE:I


# instance fields
.field protected condition:Lorg/mvel2/compiler/ExecutableStatement;

.field protected item:Ljava/lang/String;

.field protected itemType:Ljava/lang/Class;

.field private type:I


# direct methods
.method public constructor <init>([CIIIIILorg/mvel2/ParserContext;)V
    .locals 6

    invoke-direct {p0, p7}, Lorg/mvel2/ast/BlockNode;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    iput p6, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/ast/ForEachNode;->handleCond([CIIILorg/mvel2/ParserContext;)V

    iput p4, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    iput p5, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_1

    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    if-eqz p2, :cond_0

    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->createSubcontext()Lorg/mvel2/ParserContext;

    move-result-object p7

    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

    iget-object p3, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    invoke-virtual {p7, p2, p3}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->pushVariableScope()V

    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

    invoke-virtual {p7, p2}, Lorg/mvel2/ParserContext;->makeVisible(Ljava/lang/String;)V

    invoke-static {p1, p4, p5, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->popVariableScope()V

    :cond_1
    return-void
.end method

.method private determineIterType(Ljava/lang/Class;)V
    .locals 3

    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    goto :goto_0

    :cond_2
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    iput p1, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    :goto_0
    return-void

    :cond_3
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-iterable type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {v0, p1, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0
.end method

.method private enforceTypeSafety(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p1}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type mismatch in foreach: expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; but found: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {v0, p1, p2, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private handleCond([CIIILorg/mvel2/ParserContext;)V
    .locals 6

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    const/16 v2, 0x3a

    if-ge v1, v0, :cond_0

    aget-char v3, p1, v1

    if-eq v3, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eq v1, v0, :cond_4

    aget-char v0, p1, v1

    if-ne v0, v2, :cond_4

    sub-int v0, v1, p2

    invoke-static {p1, p2, v0}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4, v3, p5}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    new-instance v4, Ljava/lang/String;

    add-int v5, p2, v2

    sub-int v2, v0, v2

    invoke-direct {v4, p1, v5, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p3, Lorg/mvel2/CompileException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "cannot resolve identifier: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    invoke-static {p1, v1, p3, p5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/ForEachNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/mvel2/ast/ForEachNode;->enforceTypeSafety(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p5}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lorg/mvel2/ast/ForEachNode;->determineIterType(Ljava/lang/Class;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance p2, Lorg/mvel2/CompileException;

    const-string p3, "expected : in foreach"

    invoke-direct {p2, p3, p1, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    iget-object v1, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/mvel2/integration/impl/ItemResolverFactory;

    new-instance v2, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;

    invoke-direct {v2, p3}, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-direct {v1, v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory;-><init>(Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;Lorg/mvel2/integration/VariableResolverFactory;)V

    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {v2, v3, v4, p2, p3}, Lorg/mvel2/d;->q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p3

    iget-object v2, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/mvel2/ast/ForEachNode;->enforceTypeSafety(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_0
    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v3, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    iget v4, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    iget-object v5, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v2, v3, v4, v5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object v2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    instance-of v2, p3, Ljava/lang/Iterable;

    if-eqz v2, :cond_2

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v2, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_8

    invoke-static {p3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    instance-of v3, p3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    array-length v3, p3

    :goto_1
    if-ge v2, v3, :cond_8

    aget-char v4, p3, v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    move-result v5

    if-eqz v5, :cond_5

    return-object v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    instance-of v2, p3, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v2, 0x1

    add-int/2addr p3, v2

    :goto_2
    if-eq v2, p3, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v3, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    return-object p1

    :cond_9
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "non-iterable type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_a
    const-string p3, "null"

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    iget-object v1, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/mvel2/integration/impl/ItemResolverFactory;

    new-instance v2, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;

    invoke-direct {v2, p3}, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-direct {v1, v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory;-><init>(Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;Lorg/mvel2/integration/VariableResolverFactory;)V

    iget-object v2, p0, Lorg/mvel2/ast/ForEachNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p3

    iget v2, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mvel2/ast/ForEachNode;->determineIterType(Ljava/lang/Class;)V

    :cond_0
    iget v2, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    if-eqz v2, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p3, v4

    :goto_0
    if-eq v4, p3, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v2, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    array-length v2, p3

    :goto_1
    if-ge v3, v2, :cond_9

    aget-char v4, p3, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_9

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    move-result v5

    if-eqz v5, :cond_6

    return-object v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v2, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    move-result v3

    if-eqz v3, :cond_8

    return-object v2

    :cond_9
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method
