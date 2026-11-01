.class public Lorg/mvel2/ast/ASTNode;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ARRAY_TYPE_LITERAL:I = 0x4000000

.field public static final ASSIGN:I = 0x80

.field public static final BLOCK_DO:I = 0x10000

.field public static final BLOCK_DO_UNTIL:I = 0x20000

.field public static final BLOCK_FOR:I = 0x40000

.field public static final BLOCK_FOREACH:I = 0x1000

.field public static final BLOCK_IF:I = 0x800

.field public static final BLOCK_UNTIL:I = 0x4000

.field public static final BLOCK_WHILE:I = 0x8000

.field public static final BLOCK_WITH:I = 0x2000

.field public static final COLLECTION:I = 0x100

.field public static final COMPILE_IMMEDIATE:I = 0x10

.field public static final DEEP_PROPERTY:I = 0x2

.field public static final DEFERRED_TYPE_RES:I = 0x800000

.field public static final DEOP:I = 0x10000000

.field public static final DISCARD:I = 0x20000000

.field public static final FQCN:I = 0x100000

.field public static final IDENTIFIER:I = 0x8

.field public static final INLINE_COLLECTION:I = 0x400

.field public static final INVERT:I = 0x40

.field public static final LITERAL:I = 0x1

.field public static final NOJIT:I = 0x8000000

.field public static final NUMERIC:I = 0x20

.field public static final OPERATOR:I = 0x4

.field public static final OPT_SUBTR:I = 0x80000

.field public static final PCTX_STORED:I = 0x2000000

.field public static final STACKLANG:I = 0x400000

.field public static final STRONG_TYPING:I = 0x1000000

.field public static final THISREF:I = 0x200


# instance fields
.field protected volatile transient accessor:Lorg/mvel2/compiler/a;

.field protected cursorPosition:I

.field protected egressType:Ljava/lang/Class;

.field protected endOfName:I

.field protected expr:[C

.field public fields:I

.field protected firstUnion:I

.field protected literal:Ljava/lang/Object;

.field protected nameCache:Ljava/lang/String;

.field public nextASTNode:Lorg/mvel2/ast/ASTNode;

.field protected offset:I

.field protected pCtx:Lorg/mvel2/ParserContext;

.field protected volatile safeAccessor:Lorg/mvel2/compiler/a;

.field protected start:I


# direct methods
.method protected constructor <init>(Lorg/mvel2/ParserContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 0

    invoke-direct {p0, p5}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-virtual {p0, p1}, Lorg/mvel2/ast/ASTNode;->setName([C)V

    return-void
.end method

.method private deop(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/RuntimeException;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p4, 0x0

    iput-object p4, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    iget p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v0, 0x18000000

    or-int/2addr p4, v0

    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    throw p4
.end method

.method private getAbsoluteFirstPart()I
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    if-ltz v0, :cond_1

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    return v0

    :cond_2
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private optimize(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 14

    move-object v0, p0

    move-object/from16 v11, p3

    iget v1, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v2, 0x10000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    xor-int/2addr v1, v2

    iput v1, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    :cond_0
    iget v1, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/mvel2/optimizers/b;->c()Lorg/mvel2/optimizers/a;

    move-result-object v1

    :goto_0
    move-object v12, v1

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v1, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    move-result-object v1

    goto :goto_0

    :goto_2
    iget v1, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    check-cast v1, Lorg/mvel2/ParserContext;

    :goto_3
    move-object v13, v1

    goto :goto_4

    :cond_3
    new-instance v1, Lorg/mvel2/ParserContext;

    new-instance v2, Lorg/mvel2/ParserConfiguration;

    invoke-static/range {p3 .. p3}, Lorg/mvel2/util/e;->e(Lorg/mvel2/integration/VariableResolverFactory;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/mvel2/ParserConfiguration;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lorg/mvel2/ParserContext;-><init>(Lorg/mvel2/ParserConfiguration;)V

    goto :goto_3

    :goto_4
    :try_start_0
    invoke-virtual {v13}, Lorg/mvel2/ParserContext;->optimizationNotify()V

    iget-object v3, v0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v4, v0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v5, v0, Lorg/mvel2/ast/ASTNode;->offset:I

    iget-object v10, v0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    const/4 v9, 0x1

    move-object v1, v12

    move-object v2, v13

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mvel2/ast/ASTNode;->setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;
    :try_end_0
    .catch Lorg/mvel2/optimizers/OptimizationNotSupported; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    sget-object v1, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    move-result-object v12

    iget-object v3, v0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v4, v0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v5, v0, Lorg/mvel2/ast/ASTNode;->offset:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, v12

    move-object v2, v13

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mvel2/ast/ASTNode;->setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;

    :goto_5
    iget-object v1, v0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v2, v0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v3, v0, Lorg/mvel2/ast/ASTNode;->offset:I

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lorg/mvel2/g;->m([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_4
    invoke-interface {v12}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    if-nez v2, :cond_5

    invoke-interface {v12}, Lorg/mvel2/optimizers/a;->getEgressType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    :cond_5
    return-object v1
.end method


# virtual methods
.method public canSerializeAccessor()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->safeAccessor:Lorg/mvel2/compiler/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public discard()V
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    return-void
.end method

.method public getAbsoluteName()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    invoke-direct {p0}, Lorg/mvel2/ast/ASTNode;->getAbsoluteFirstPart()I

    move-result v3

    iget v4, p0, Lorg/mvel2/ast/ASTNode;->start:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAbsoluteRootElement()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit16 v0, v0, 0x102

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p0}, Lorg/mvel2/ast/ASTNode;->getAbsoluteFirstPart()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessor()Lorg/mvel2/compiler/a;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    return-object v0
.end method

.method protected getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCursorPosition()I
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->cursorPosition:I

    return v0
.end method

.method public getEgressType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    return-object v0
.end method

.method public getExpr()[C
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    return-object v0
.end method

.method public getFields()I
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    return v0
.end method

.method public getLiteralValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    return-object v1

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getNameAsArray()[C
    .locals 3

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lorg/mvel2/util/m;->F0([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    return v0
.end method

.method public getOperator()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    iget-object v6, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lorg/mvel2/g;->m([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mvel2/ast/ASTNode;->deop(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/RuntimeException;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->optimize(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    return v0
.end method

.method public isAssignment()Z
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCollection()Z
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDebuggingSymbol()Z
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeepProperty()Z
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDiscard()Z
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFQCN()Z
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdentifier()Z
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiteral()Z
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOperator()Z
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOperator(Ljava/lang/Integer;)Z
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isThisVal()Z
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    return-object p1
.end method

.method public setAsFQCNReference()V
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    return-void
.end method

.method public setAsLiteral()V
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    return-void
.end method

.method public setCursorPosition(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->cursorPosition:I

    return-void
.end method

.method public setEgressType(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    return-void
.end method

.method public setLiteralValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    return-void
.end method

.method protected setName([C)V
    .locals 4

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p1, v0, v1}, Lorg/mvel2/util/m;->i0([CII)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p1, v0, v1}, Lorg/mvel2/util/m;->X([CII)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    or-int/lit8 p1, p1, 0x29

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    not-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    const-string v2, "bitwise (~) operator can only be applied to integers"

    invoke-direct {p1, v2, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_6

    aget-char v2, p1, v0

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_2
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    if-nez v2, :cond_5

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    goto :goto_2

    :cond_3
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    if-nez v2, :cond_4

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    :cond_4
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    if-nez v2, :cond_5

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    array-length v1, p1

    if-ge v0, v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    aget-char p1, p1, v0

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_6

    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    if-le v0, v1, :cond_8

    or-int/lit8 p1, p1, 0xa

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    goto :goto_4

    :cond_8
    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    :goto_4
    return-void
.end method

.method public storeInLiteralRegister(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    return-void
.end method

.method public storePctx()V
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    return-void
.end method

.method public strongTyping()V
    .locals 2

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lj10/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x2000000

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0
.end method
