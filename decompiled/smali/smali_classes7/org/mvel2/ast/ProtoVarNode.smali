.class public Lorg/mvel2/ast/ProtoVarNode;
.super Lorg/mvel2/ast/ASTNode;

# interfaces
.implements Lorg/mvel2/ast/a;


# instance fields
.field private name:Ljava/lang/String;

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIILorg/mvel2/ast/Proto;Lorg/mvel2/ParserContext;)V
    .locals 2

    invoke-direct {p0, p6}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    const-class p5, Lorg/mvel2/ast/Proto$b;

    iput-object p5, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    const/16 p5, 0x3d

    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/m;->B([CIIC)I

    move-result p5

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p5, v0, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p2, p5}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    invoke-static {p2}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    or-int/lit16 p4, p4, 0x80

    and-int/lit8 p2, p4, 0x10

    if-eqz p2, :cond_1

    add-int/2addr p5, v1

    invoke-static {p1, p5, p3, p6}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    goto :goto_0

    :cond_0
    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object p5, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    invoke-static {p5}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    :cond_1
    :goto_0
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {p6, p1, p2, v1}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getAssignmentVar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getExpression()[C
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    iget-object p1, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {v0, v1, v2, p2, p3}, Lorg/mvel2/d;->q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-interface {p3, p1, p2, v0}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    return-object p2
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    iget-object v3, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v0, v1, v2, v3}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/ProtoVarNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-interface {p3, v0, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    return-object p1
.end method

.method public isNewDeclaration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/ProtoVarNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method
