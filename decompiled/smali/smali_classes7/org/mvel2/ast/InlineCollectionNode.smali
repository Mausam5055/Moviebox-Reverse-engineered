.class public Lorg/mvel2/ast/InlineCollectionNode;
.super Lorg/mvel2/ast/ASTNode;


# instance fields
.field private collectionGraph:Ljava/lang/Object;

.field trailingOffset:I

.field trailingStart:I


# direct methods
.method public constructor <init>([CIIILjava/lang/Class;Lorg/mvel2/ParserContext;)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v0, p4

    move-object/from16 v8, p5

    or-int/lit16 v5, v0, 0x400

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/ast/ASTNode;-><init>([CIIILorg/mvel2/ParserContext;)V

    iput-object v8, v7, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move-object/from16 v1, p6

    :try_start_0
    invoke-direct {v7, v0, v8, v1}, Lorg/mvel2/ast/InlineCollectionNode;->parseGraph(ZLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    move-result-object v0

    iget-object v10, v7, Lorg/mvel2/ast/InlineCollectionNode;->collectionGraph:Ljava/lang/Object;

    iget-object v11, v7, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget v13, v7, Lorg/mvel2/ast/InlineCollectionNode;->trailingStart:I

    iget v14, v7, Lorg/mvel2/ast/InlineCollectionNode;->trailingOffset:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    move-object/from16 v9, p6

    move-object/from16 v12, p1

    invoke-interface/range {v8 .. v17}, Lorg/mvel2/optimizers/a;->optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    move-result-object v1

    iput-object v1, v7, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    invoke-interface {v0}, Lorg/mvel2/optimizers/a;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v7, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 10

    or-int/lit16 v4, p4, 0x400

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mvel2/ast/ASTNode;-><init>([CIIILorg/mvel2/ParserContext;)V

    and-int/lit8 p2, p4, 0x10

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p5}, Lorg/mvel2/ast/InlineCollectionNode;->parseGraph(ZLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    :try_start_0
    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    move-result-object p2

    iget-object v2, p0, Lorg/mvel2/ast/InlineCollectionNode;->collectionGraph:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget v5, p0, Lorg/mvel2/ast/InlineCollectionNode;->trailingStart:I

    iget v6, p0, Lorg/mvel2/ast/InlineCollectionNode;->trailingOffset:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p5

    move-object v4, p1

    invoke-interface/range {v0 .. v9}, Lorg/mvel2/optimizers/a;->optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    invoke-interface {p2}, Lorg/mvel2/optimizers/a;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private execGraph(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lorg/mvel2/ast/InlineCollectionNode;->execGraph(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/mvel2/ast/InlineCollectionNode;->execGraph(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/mvel2/ast/InlineCollectionNode;->execGraph(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    const/16 v0, 0x5b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-class p2, [Ljava/lang/Object;

    move v4, v2

    :cond_5
    invoke-static {p2}, Lorg/mvel2/util/m;->T(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    move-object v5, p1

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    if-le v4, v2, :cond_6

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v4, v2

    invoke-static {v0, v4}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "L"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    const/4 v4, 0x0

    invoke-static {v4, v0, v2}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_6
    move-object v0, p2

    :goto_3
    check-cast p1, [Ljava/lang/Object;

    array-length v2, p1

    move v4, v1

    :goto_4
    if-ge v1, v2, :cond_7

    aget-object v5, p1, v1

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v5, v0, p3, p4}, Lorg/mvel2/ast/InlineCollectionNode;->execGraph(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_4

    :cond_7
    return-object v3

    :goto_5
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "this error should never throw:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :goto_6
    new-instance p2, Lorg/mvel2/CompileException;

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget p4, p0, Lorg/mvel2/ast/ASTNode;->start:I

    const-string v0, "type mismatch in array"

    invoke-direct {p2, v0, p3, p4, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, p3, p4, p2}, Lorg/mvel2/d;->o(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p3, p4}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private parseGraph(ZLjava/lang/Class;Lorg/mvel2/ParserContext;)V
    .locals 9

    new-instance v7, Lorg/mvel2/util/c;

    invoke-direct {v7}, Lorg/mvel2/util/c;-><init>()V

    const/4 v8, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    move-object v0, v7

    move v4, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mvel2/util/c;->e([CIIZLorg/mvel2/ParserContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/InlineCollectionNode;->collectionGraph:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    move-object v0, v7

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/mvel2/util/c;->d([CIIZLjava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/InlineCollectionNode;->collectionGraph:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v7}, Lorg/mvel2/util/c;->a()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/mvel2/ast/InlineCollectionNode;->trailingStart:I

    iget p2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    iget p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    sub-int/2addr p1, p3

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/mvel2/ast/InlineCollectionNode;->trailingOffset:I

    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/mvel2/ast/InlineCollectionNode;->collectionGraph:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    :cond_1
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p2, v0}, Lorg/mvel2/ast/InlineCollectionNode;->parseGraph(ZLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    iget-object p2, p0, Lorg/mvel2/ast/InlineCollectionNode;->collectionGraph:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-direct {p0, p2, v0, p1, p3}, Lorg/mvel2/ast/InlineCollectionNode;->execGraph(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/mvel2/optimizers/b;->d()Lorg/mvel2/optimizers/a;

    move-result-object v10

    iget-object v0, p0, Lorg/mvel2/ast/InlineCollectionNode;->collectionGraph:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/mvel2/ast/InlineCollectionNode;->parseGraph(ZLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    iget-object v2, p0, Lorg/mvel2/ast/InlineCollectionNode;->collectionGraph:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget-object v4, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v5, p0, Lorg/mvel2/ast/InlineCollectionNode;->trailingStart:I

    iget v6, p0, Lorg/mvel2/ast/InlineCollectionNode;->trailingOffset:I

    move-object v0, v10

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lorg/mvel2/optimizers/a;->optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/a;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    invoke-interface {v10}, Lorg/mvel2/optimizers/a;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p1

    :goto_1
    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    throw p1
.end method
