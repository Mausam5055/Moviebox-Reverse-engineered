.class public Lorg/mvel2/compiler/CompiledExpression;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mvel2/compiler/ExecutableStatement;


# instance fields
.field private accessorOptimizer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/mvel2/optimizers/a;",
            ">;"
        }
    .end annotation
.end field

.field private convertableIngressEgress:Z

.field private firstNode:Lorg/mvel2/ast/ASTNode;

.field private importInjectionRequired:Z

.field private knownEgressType:Ljava/lang/Class;

.field private knownIngressType:Ljava/lang/Class;

.field private literalOnly:Z

.field private optimized:Z

.field private parserConfiguration:Lorg/mvel2/ParserConfiguration;

.field private sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mvel2/util/ASTLinkedList;Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserConfiguration;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->importInjectionRequired:Z

    invoke-virtual {p1}, Lorg/mvel2/util/ASTLinkedList;->firstNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    iput-object p2, p0, Lorg/mvel2/compiler/CompiledExpression;->sourceName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/mvel2/util/ASTLinkedList;->isSingleNode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/mvel2/util/ASTLinkedList;->firstNonSymbol()Lorg/mvel2/ast/ASTNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    iput-boolean p5, p0, Lorg/mvel2/compiler/CompiledExpression;->literalOnly:Z

    iput-object p4, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {p4}, Lorg/mvel2/ParserConfiguration;->getImports()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/mvel2/compiler/CompiledExpression;->importInjectionRequired:Z

    return-void
.end method

.method private setupOptimizers()V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->accessorOptimizer:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mvel2/optimizers/b;->f(Ljava/lang/Class;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    return-void
.end method


# virtual methods
.method public computeTypeConversionRule()V
    .locals 2

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->knownIngressType:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->convertableIngressEgress:Z

    :cond_0
    return-void
.end method

.method public getAccessorOptimizer()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/mvel2/optimizers/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->accessorOptimizer:Ljava/lang/Class;

    return-object v0
.end method

.method public getDirectValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->importInjectionRequired:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    iget-object v1, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lorg/mvel2/integration/impl/ClassImportResolverFactory;-><init>(Lorg/mvel2/ParserConfiguration;Lorg/mvel2/integration/VariableResolverFactory;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mvel2/integration/impl/StackResetResolverFactory;

    invoke-direct {v0, p2}, Lorg/mvel2/integration/impl/StackResetResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    :goto_0
    const/4 p2, 0x0

    invoke-static {p2, p0, p1, v0}, Lorg/mvel2/e;->a(ZLorg/mvel2/compiler/CompiledExpression;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirstNode()Lorg/mvel2/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    return-object v0
.end method

.method public getKnownIngressType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->knownIngressType:Ljava/lang/Class;

    return-object v0
.end method

.method public getParserConfiguration()Lorg/mvel2/ParserConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    iget-boolean p2, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/mvel2/compiler/CompiledExpression;->setupOptimizers()V

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lorg/mvel2/compiler/CompiledExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    throw p1

    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/mvel2/compiler/CompiledExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/mvel2/compiler/CompiledExpression;->setupOptimizers()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/compiler/CompiledExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mvel2/optimizers/b;->a()V

    throw p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/compiler/CompiledExpression;->getDirectValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public intOptimized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConvertableIngressEgress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->convertableIngressEgress:Z

    return v0
.end method

.method public isEmptyStatement()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExplicitCast()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/mvel2/ast/TypeCast;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImportInjectionRequired()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->importInjectionRequired:Z

    return v0
.end method

.method public isLiteralOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->literalOnly:Z

    return v0
.end method

.method public isOptimized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    return v0
.end method

.method public isSingleNode()Z
    .locals 1

    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setKnownEgressType(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    return-void
.end method

.method public setKnownIngressType(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/compiler/CompiledExpression;->knownIngressType:Ljava/lang/Class;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
