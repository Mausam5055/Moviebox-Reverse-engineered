.class public Lorg/mvel2/compiler/ExpressionCompiler;
.super Lorg/mvel2/compiler/AbstractParser;


# instance fields
.field private returnType:Ljava/lang/Class;

.field private secondPassOptimization:Z

.field private verifyOnly:Z

.field private verifying:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/mvel2/ParserContext;)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr p3, p2

    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    invoke-virtual {p0, p3}, Lorg/mvel2/compiler/AbstractParser;->trimLeft(I)I

    move-result p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    iput-object p4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    iput-boolean p2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression([C)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr p3, p2

    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    invoke-virtual {p0, p3}, Lorg/mvel2/compiler/AbstractParser;->trimLeft(I)I

    move-result p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    return-void
.end method

.method public constructor <init>([CIILorg/mvel2/ParserContext;)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr p3, p2

    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    invoke-virtual {p0, p3}, Lorg/mvel2/compiler/AbstractParser;->trimLeft(I)I

    move-result p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    iput-object p4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>([CLorg/mvel2/ParserContext;)V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression([C)V

    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method private compileReduce(ILorg/mvel2/util/ASTLinkedList;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->arithmeticFunctionReduction(I)I

    move-result p1

    const/4 v0, -0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {p1}, Lorg/mvel2/util/g;->w()V

    new-instance p1, Lorg/mvel2/ast/LiteralNode;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v2}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-virtual {p2, p1}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->splitAccumulator:Lorg/mvel2/util/g;

    invoke-virtual {p1}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/ast/OperatorNode;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->splitAccumulator:Lorg/mvel2/util/g;

    invoke-virtual {v2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p0, v0, v2}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    return v1

    :cond_1
    new-instance p1, Lorg/mvel2/ast/LiteralNode;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {p1, v0, v2}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    new-instance v0, Lorg/mvel2/ast/OperatorNode;

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/mvel2/ast/OperatorNode;-><init>(Ljava/lang/Integer;[CILorg/mvel2/ParserContext;)V

    new-instance v2, Lorg/mvel2/ast/LiteralNode;

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v3}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v2, v3, v4}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-virtual {p2, v2, v0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->splitAccumulator:Lorg/mvel2/util/g;

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/ast/OperatorNode;

    invoke-virtual {p2, p1, v0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->splitAccumulator:Lorg/mvel2/util/g;

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p0, p1, v0}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    return v1

    :cond_2
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {p1}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/ast/ASTNode;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v2, Lorg/mvel2/ast/LiteralNode;

    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v2, v3, v4}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-virtual {p2, v2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    new-instance v2, Lorg/mvel2/ast/OperatorNode;

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/mvel2/ast/OperatorNode;-><init>(Ljava/lang/Integer;[CILorg/mvel2/ParserContext;)V

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    return v1
.end method

.method private getStackValueResult()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/util/e;->l(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static isBooleanOperator(I)Z
    .locals 1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

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


# virtual methods
.method public _compile()Lorg/mvel2/compiler/CompiledExpression;
    .locals 15

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    new-instance v0, Lorg/mvel2/util/ASTLinkedList;

    invoke-direct {v0}, Lorg/mvel2/util/ASTLinkedList;-><init>()V

    new-instance v1, Lorg/mvel2/util/g;

    invoke-direct {v1}, Lorg/mvel2/util/g;-><init>()V

    iput-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    new-instance v1, Lorg/mvel2/util/g;

    invoke-direct {v1}, Lorg/mvel2/util/g;-><init>()V

    iput-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->dStack:Lorg/mvel2/util/g;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mvel2/compiler/AbstractParser;->compileMode:Z

    :try_start_0
    iget-boolean v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->initializeTables()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_0
    :goto_0
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    const/4 v2, -0x1

    move v3, v2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextToken()Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_17

    iget v6, v4, Lorg/mvel2/ast/ASTNode;->fields:I

    if-ne v6, v2, :cond_2

    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    instance-of v6, v4, Lorg/mvel2/ast/Substatement;

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v8

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v7}, Lorg/mvel2/ParserContext;->getCompiledExpressionCache()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v8}, Lorg/mvel2/ParserContext;->getReturnTypeCache()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mvel2/compiler/CompiledExpression;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    if-nez v9, :cond_3

    new-instance v9, Lorg/mvel2/compiler/ExpressionCompiler;

    iget-object v10, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v11

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    move-result v12

    iget-object v13, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CIILorg/mvel2/ParserContext;)V

    invoke-virtual {v9}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    move-result-object v10

    invoke-virtual {v9}, Lorg/mvel2/compiler/ExpressionCompiler;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v7, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v9

    move-object v9, v14

    :cond_3
    invoke-virtual {v4, v9}, Lorg/mvel2/ast/ASTNode;->setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;

    iput-object v10, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    :cond_4
    iget-boolean v6, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    if-nez v6, :cond_15

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v6

    if-eqz v6, :cond_15

    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    if-ne v6, v2, :cond_5

    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    :cond_5
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextTokenSkipSymbols()Lorg/mvel2/ast/ASTNode;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v7, 0x1d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    move-result v7

    if-nez v7, :cond_12

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextTokenSkipSymbols()Lorg/mvel2/ast/ASTNode;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x22

    if-ge v8, v9, :cond_11

    if-eq v3, v2, :cond_6

    sget-object v8, Lorg/mvel2/f;->a:[I

    array-length v9, v8

    if-ge v3, v9, :cond_11

    aget v9, v8, v3

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget v8, v8, v10

    if-ge v9, v8, :cond_11

    :cond_6
    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v4, v7, v6}, Lorg/mvel2/util/g;->s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Lorg/mvel2/compiler/AbstractParser;->isArithmeticOperator(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v9, v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compileReduce(ILorg/mvel2/util/ASTLinkedList;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->reduce()V

    :cond_8
    move v4, v1

    :goto_2
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextTokenSkipSymbols()Lorg/mvel2/ast/ASTNode;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lorg/mvel2/compiler/ExpressionCompiler;->isBooleanOperator(I)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v5}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v5

    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v4, v5, v7}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v5, v6}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextTokenSkipSymbols()Lorg/mvel2/ast/ASTNode;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v7}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v7, v6}, Lorg/mvel2/util/g;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8}, Lorg/mvel2/compiler/AbstractParser;->isArithmeticOperator(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, v8, v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compileReduce(ILorg/mvel2/util/ASTLinkedList;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->reduce()V

    :cond_b
    iput v5, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    move v4, v5

    goto :goto_2

    :cond_c
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v4}, Lorg/mvel2/util/g;->g()Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    move-result-object v5

    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v4, v5, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    :cond_d
    new-instance v4, Lorg/mvel2/ast/OperatorNode;

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v9, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v4, v5, v6, v8, v9}, Lorg/mvel2/ast/OperatorNode;-><init>(Ljava/lang/Integer;[CILorg/mvel2/ParserContext;)V

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v5, v7}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto :goto_3

    :cond_e
    if-eqz v4, :cond_f

    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v4, v5, v6}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_3

    :cond_f
    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    move-result-object v5

    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v4, v5, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v0, v4, v6}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    if-eqz v7, :cond_10

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v4, v7}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    :cond_10
    :goto_3
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v4}, Lorg/mvel2/util/g;->g()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v4, v5, v6}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_1

    :cond_11
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v5, v4}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v5, v6}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    if-eqz v7, :cond_1

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v4, v7}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_1

    :cond_12
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Class;

    if-eqz v7, :cond_13

    goto :goto_4

    :cond_13
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_14
    :goto_4
    iput v5, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v5, v4}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    if-eqz v6, :cond_1

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v4, v6}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_16
    iput v5, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    :goto_5
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p0, v5, v4}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_1

    :cond_17
    invoke-virtual {v0}, Lorg/mvel2/util/ASTLinkedList;->finish()V

    iget-boolean v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    if-eqz v2, :cond_18

    iget-boolean v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    if-nez v2, :cond_18

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->processTables()V

    :cond_18
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    invoke-virtual {v2}, Lorg/mvel2/util/g;->g()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1a

    :try_start_1
    new-instance v2, Lorg/mvel2/compiler/CompiledExpression;

    iget-boolean v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v0, v3, v4}, Lorg/mvel2/util/e;->d(Lorg/mvel2/util/ASTLinkedList;ZLorg/mvel2/ParserContext;)Lorg/mvel2/util/ASTLinkedList;

    move-result-object v7

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getSourceFile()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v10

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    if-ne v0, v1, :cond_19

    move v11, v1

    goto :goto_6

    :cond_19
    move v11, v5

    :goto_6
    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lorg/mvel2/compiler/CompiledExpression;-><init>(Lorg/mvel2/util/ASTLinkedList;Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserConfiguration;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catch_2
    move-exception v0

    :try_start_2
    new-instance v1, Lorg/mvel2/CompileException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/mvel2/CompileException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1a
    :try_start_3
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v1}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/mvel2/util/e;->f(Lorg/mvel2/util/ASTIterator;Z)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    return-object v0

    :catch_3
    move-exception v0

    :try_start_4
    new-instance v1, Lorg/mvel2/CompileException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw v1

    :cond_1b
    new-instance v0, Lorg/mvel2/CompileException;

    const-string v1, "COMPILE ERROR: non-empty stack after compileShared."

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    invoke-direct {v0, v1, v2, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/mvel2/CompileException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1c
    new-instance v1, Lorg/mvel2/CompileException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw v1

    :goto_8
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-static {v0, v1, v2}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    move-result-object v0

    throw v0

    :goto_9
    new-instance v1, Lorg/mvel2/CompileException;

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    const-string v4, "not a statement, or badly formed structure"

    invoke-direct {v1, v4, v2, v3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw v1
.end method

.method public compile()Lorg/mvel2/compiler/CompiledExpression;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, " compilation error(s): "

    const-string v3, "Failed to compileShared: "

    const-string v4, " "

    const-string v5, ")"

    const-string v6, ","

    const-string v7, "("

    const-string v8, "\n - "

    :try_start_0
    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isDebugSymbols()Z

    move-result v0

    iput-boolean v0, v1, Lorg/mvel2/compiler/AbstractParser;->debugSymbols:Z

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v9}, Lorg/mvel2/ParserContext;->isFatalError()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v0, Lorg/mvel2/util/s;

    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v9}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mvel2/c;

    iget-object v11, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v12, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    invoke-static {v10, v11, v12}, Lorg/mvel2/util/f;->b(Lorg/mvel2/c;[CI)Lorg/mvel2/c;

    move-result-object v10

    invoke-virtual {v10}, Lorg/mvel2/c;->d()[C

    move-result-object v11

    iget-object v12, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    if-eq v11, v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v8}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v11, v7}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v10}, Lorg/mvel2/c;->e()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v11, v6}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v10}, Lorg/mvel2/c;->b()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v11, v5}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v10}, Lorg/mvel2/c;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/mvel2/CompileException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v14

    iget-object v15, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    move-object v12, v4

    move/from16 v16, v0

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;Ljava/util/List;[CILorg/mvel2/ParserContext;)V

    throw v4

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v9}, Lorg/mvel2/ParserContext;->isFatalError()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v0, Lorg/mvel2/util/s;

    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v9}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mvel2/c;

    iget-object v11, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v12, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    invoke-static {v10, v11, v12}, Lorg/mvel2/util/f;->b(Lorg/mvel2/c;[CI)Lorg/mvel2/c;

    move-result-object v10

    invoke-virtual {v10}, Lorg/mvel2/c;->d()[C

    move-result-object v11

    iget-object v12, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    if-eq v11, v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v8}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v11, v7}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v10}, Lorg/mvel2/c;->e()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v11, v6}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v10}, Lorg/mvel2/c;->b()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v11, v5}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v11

    invoke-virtual {v10}, Lorg/mvel2/c;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    goto :goto_1

    :cond_4
    new-instance v4, Lorg/mvel2/CompileException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    move-result-object v14

    iget-object v15, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    move-object v12, v4

    move/from16 v16, v0

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;Ljava/util/List;[CILorg/mvel2/ParserContext;)V

    throw v4

    :cond_5
    throw v0
.end method

.method public getParserContextState()Lorg/mvel2/ParserContext;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    return-object v0
.end method

.method public isLiteralOnly()Z
    .locals 2

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isVerifyOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    return v0
.end method

.method public isVerifying()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    return v0
.end method

.method public setReturnType(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    return-void
.end method

.method public setVerifyOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    return-void
.end method

.method public setVerifying(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    return-void
.end method

.method protected verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;
    .locals 5

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    :cond_1
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isDiscard()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v0

    const-class v1, Lorg/mvel2/ast/ASTNode;

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v1, :cond_3

    new-instance v0, Lorg/mvel2/ast/LiteralNode;

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    return-object v0

    :cond_3
    return-object p2

    :cond_4
    iget-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isIdentifier()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lorg/mvel2/compiler/PropertyVerifier;

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v3

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, p1}, Lorg/mvel2/compiler/PropertyVerifier;-><init>([CIILorg/mvel2/ParserContext;)V

    instance-of v2, p2, Lorg/mvel2/ast/Union;

    if-eqz v2, :cond_5

    move-object v2, p2

    check-cast v2, Lorg/mvel2/ast/Union;

    invoke-virtual {v2}, Lorg/mvel2/ast/Union;->getLeftEgressType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mvel2/compiler/PropertyVerifier;->setCtx(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/mvel2/ast/ASTNode;->setEgressType(Ljava/lang/Class;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Lorg/mvel2/ast/ASTNode;->setEgressType(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isFqcn()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->setAsFQCNReference()V

    :cond_6
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isClassLiteral()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance p2, Lorg/mvel2/ast/LiteralNode;

    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-direct {p2, v0, p1}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    return-object p2

    :cond_7
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isInput()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getAbsoluteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isDeepProperty()Z

    move-result v3

    if-eqz v3, :cond_8

    const-class v3, Ljava/lang/Object;

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1, v2, v3}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_9
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isMethodCall()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isOptimizerNotified()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getAbsoluteName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mvel2/ParserContext;->isVariableVisible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isFQCN()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_2

    :cond_a
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getAbsoluteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result p2

    invoke-direct {p1, v0, v1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    :cond_b
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isAssignment()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p2

    check-cast v0, Lorg/mvel2/ast/a;

    invoke-interface {v0}, Lorg/mvel2/ast/a;->getAssignmentVar()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    new-instance v2, Lorg/mvel2/compiler/PropertyVerifier;

    invoke-interface {v0}, Lorg/mvel2/ast/a;->getAssignmentVar()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lorg/mvel2/compiler/PropertyVerifier;-><init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v2}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Lorg/mvel2/ast/ASTNode;->setEgressType(Ljava/lang/Class;)V

    invoke-interface {v0}, Lorg/mvel2/ast/a;->isNewDeclaration()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lorg/mvel2/compiler/PropertyVerifier;->isResolvedExternally()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getAbsoluteName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_c
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v3

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    move-result v4

    invoke-static {v2, v3, v4, p1}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/mvel2/compiler/ExecutableStatement;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->isLiteralOnly()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-static {p1, v1}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_d

    :try_start_0
    new-instance p1, Lorg/mvel2/compiler/ExecutableLiteral;

    const/4 v1, 0x0

    invoke-interface {v2, v1, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-static {v1, v3}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/mvel2/compiler/ExecutableLiteral;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lorg/mvel2/ast/a;->setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_d
    iget-object p1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/m;->O0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object p2

    :catch_0
    :cond_e
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot assign type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {p1, p2, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    :cond_f
    instance-of v0, p2, Lorg/mvel2/ast/NewObjectNode;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Lorg/mvel2/ast/NewObjectNode;

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getNameAsArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/util/m;->w0([C)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-static {v2, p1}, Lorg/mvel2/d;->c([CLorg/mvel2/ParserContext;)Ljava/lang/Class;

    goto :goto_1

    :cond_10
    :goto_2
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    :cond_11
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v1, :cond_13

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->strongTyping()V

    :cond_12
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->storePctx()V

    invoke-virtual {p2, p1}, Lorg/mvel2/ast/ASTNode;->storeInLiteralRegister(Ljava/lang/Object;)V

    :cond_13
    :goto_3
    return-object p2
.end method
