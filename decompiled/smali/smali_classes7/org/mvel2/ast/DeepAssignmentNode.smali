.class public Lorg/mvel2/ast/DeepAssignmentNode;
.super Lorg/mvel2/ast/ASTNode;

# interfaces
.implements Lorg/mvel2/ast/a;


# instance fields
.field private acc:Lorg/mvel2/compiler/CompiledAccExpression;

.field private property:Ljava/lang/String;

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIIILjava/lang/String;Lorg/mvel2/ParserContext;)V
    .locals 2

    invoke-direct {p0, p7}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    or-int/lit8 v1, p4, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    iput-object p6, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    invoke-static {p6, p1, p2, p3, p5}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    move-result-object p1

    invoke-static {p1, p7}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/16 p5, 0x3d

    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/m;->B([CIIC)I

    move-result p5

    if-eq p5, v0, :cond_2

    sub-int p6, p5, p2

    invoke-static {p1, p2, p6}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    add-int/lit8 p5, p5, 0x1

    invoke-static {p1, p5}, Lorg/mvel2/util/m;->E0([CI)I

    move-result p6

    iput p6, p0, Lorg/mvel2/ast/ASTNode;->start:I

    add-int v0, p2, p3

    if-ge p6, v0, :cond_1

    sub-int p5, p6, p2

    sub-int p5, p3, p5

    iput p5, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_3

    invoke-static {p1, p6, p5, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/mvel2/CompileException;

    const-string p3, "unexpected end of statement"

    invoke-direct {p2, p3, p1, p5}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    :cond_2
    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p1}, Ljava/lang/String;-><init>([C)V

    iput-object p5, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    :cond_3
    :goto_0
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1, p2, p3, p7}, Lorg/mvel2/d;->k([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/CompiledAccExpression;

    iput-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->acc:Lorg/mvel2/compiler/CompiledAccExpression;

    :cond_4
    return-void
.end method

.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 8

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/mvel2/ast/DeepAssignmentNode;-><init>([CIIIILjava/lang/String;Lorg/mvel2/ParserContext;)V

    return-void
.end method


# virtual methods
.method public getAbsoluteName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssignmentVar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    return-object v0
.end method

.method public getExpression()[C
    .locals 3

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {v0, v1, v2}, Lorg/mvel2/util/m;->F0([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    iget-object p2, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {v0, v1, v2, p1, p3}, Lorg/mvel2/d;->q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {p1, p3, p2, v0, v1}, Lorg/mvel2/g;->A(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    return-object v0
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    iget-object v3, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v0, v1, v2, v3}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->property:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v0, v1, v2}, Lorg/mvel2/d;->l([CLjava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/mvel2/compiler/CompiledAccExpression;

    iput-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->acc:Lorg/mvel2/compiler/CompiledAccExpression;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/DeepAssignmentNode;->acc:Lorg/mvel2/compiler/CompiledAccExpression;

    iget-object v1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/mvel2/compiler/CompiledAccExpression;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public isAssignment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNewDeclaration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/DeepAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method
