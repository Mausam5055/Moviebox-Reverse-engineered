.class public Lorg/mvel2/ast/IndexedAssignmentNode;
.super Lorg/mvel2/ast/ASTNode;

# interfaces
.implements Lorg/mvel2/ast/a;


# instance fields
.field private transient accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

.field private assignmentVar:Ljava/lang/String;

.field private col:Z

.field private index:[C

.field private indexTarget:[C

.field private name:Ljava/lang/String;

.field private register:I

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;

.field private stmt:[C


# direct methods
.method public constructor <init>([CIIIILjava/lang/String;ILorg/mvel2/ParserContext;)V
    .locals 3

    invoke-direct {p0, p8}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->col:Z

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    iput p7, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    const/4 p7, -0x1

    if-eq p5, p7, :cond_0

    iput-object p6, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-static {p6}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    invoke-static {p6, p1, p2, p3, p5}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    invoke-static {p1, p8}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_0
    const/16 p5, 0x3d

    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/m;->B([CIIC)I

    move-result p5

    if-eq p5, p7, :cond_5

    sub-int p7, p5, p2

    invoke-static {p1, p2, p7}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    iput-object p6, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->assignmentVar:Ljava/lang/String;

    const/4 p7, 0x1

    add-int/2addr p5, p7

    invoke-static {p1, p5}, Lorg/mvel2/util/m;->E0([CI)I

    move-result v1

    iput v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    add-int v2, p2, p3

    if-ge v1, v2, :cond_4

    sub-int p2, v1, p2

    sub-int/2addr p3, p2

    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p1, v1, p3}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object p2

    iput-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    iget p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p1, p2, p3, p8}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->indexTarget:[C

    const/16 p3, 0x5b

    invoke-static {p3, v0, p1, p2}, Lorg/mvel2/util/b;->a(CII[C)I

    move-result p1

    int-to-short p1, p1

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move p7, v0

    :goto_0
    iput-boolean p7, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->col:Z

    if-eqz p7, :cond_3

    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->indexTarget:[C

    invoke-static {p1, p8}, Lorg/mvel2/d;->m([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/CompiledAccExpression;

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    :cond_2
    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    iget p2, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->indexTarget:[C

    iget p2, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    array-length p3, p1

    sub-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->index:[C

    :cond_3
    iget-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-static {p1}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance p2, Lorg/mvel2/CompileException;

    const-string p3, "unexpected end of statement"

    invoke-direct {p2, p3, p1, p5}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    :cond_5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    iput-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-static {p2}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    iput-object p6, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->assignmentVar:Ljava/lang/String;

    :goto_1
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {p8, p6, p1}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_6
    return-void
.end method

.method public constructor <init>([CIIIILorg/mvel2/ParserContext;)V
    .locals 9

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/mvel2/ast/IndexedAssignmentNode;-><init>([CIIIILjava/lang/String;ILorg/mvel2/ParserContext;)V

    return-void
.end method


# virtual methods
.method public getAbsoluteName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignmentVar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->assignmentVar:Ljava/lang/String;

    return-object v0
.end method

.method public getExpression()[C
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    invoke-static {p2}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->col:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    invoke-interface {p3, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

    move-result-object p2

    invoke-interface {p2}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->index:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    invoke-static {v1, p1, p3}, Lorg/mvel2/d;->s([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lorg/mvel2/d;->B(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->stmt:[C

    invoke-static {v1, p1, p3}, Lorg/mvel2/d;->s([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p2, v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    :goto_0
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->indexTarget:[C

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mvel2/d;->j([C)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/mvel2/compiler/CompiledAccExpression;

    iput-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    :cond_0
    iget-boolean v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->col:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/mvel2/compiler/CompiledAccExpression;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    if-eqz v0, :cond_3

    invoke-interface {p3}, Lorg/mvel2/integration/VariableResolverFactory;->isIndexedFactory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, v0, v1, p1}, Lorg/mvel2/integration/VariableResolverFactory;->createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-object v1, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    :goto_0
    return-object v1

    :cond_3
    invoke-interface {p3}, Lorg/mvel2/integration/VariableResolverFactory;->isIndexedFactory()Z

    move-result v0

    if-eqz v0, :cond_4

    iget p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    iget-object p2, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lorg/mvel2/integration/VariableResolverFactory;->createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    :goto_1
    const-class p1, Ljava/lang/Void;

    return-object p1
.end method

.method public getRegister()I
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    return v0
.end method

.method public getVarName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->name:Ljava/lang/String;

    return-object v0
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

.method public setRegister(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->register:I

    return-void
.end method

.method public setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/IndexedAssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method
