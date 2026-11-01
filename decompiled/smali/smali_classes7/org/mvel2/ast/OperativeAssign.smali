.class public Lorg/mvel2/ast/OperativeAssign;
.super Lorg/mvel2/ast/ASTNode;


# instance fields
.field private knownInType:I

.field private final operation:I

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;

.field private varName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[CIIIILorg/mvel2/ParserContext;)V
    .locals 1

    invoke-direct {p0, p7}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mvel2/ast/OperativeAssign;->knownInType:I

    iput-object p1, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    iput p5, p0, Lorg/mvel2/ast/OperativeAssign;->operation:I

    iput-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iput p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iput p4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_1

    invoke-static {p2, p3, p4, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/OperativeAssign;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/OperativeAssign;->knownInType:I

    :cond_0
    iget-object p1, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    invoke-virtual {p7, p1}, Lorg/mvel2/ParserContext;->hasVarOrInput(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {p7, p1, p2}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    iget-object p2, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    invoke-interface {p3, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p2

    invoke-interface {p2}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/mvel2/ast/OperativeAssign;->operation:I

    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {v2, v3, v4, p1, p3}, Lorg/mvel2/d;->q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lm10/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/mvel2/ast/OperativeAssign;->varName:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lorg/mvel2/ast/OperativeAssign;->operation:I

    iget v3, p0, Lorg/mvel2/ast/OperativeAssign;->knownInType:I

    iget-object v4, p0, Lorg/mvel2/ast/OperativeAssign;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v4, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Lm10/a;->f(Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object p1
.end method
