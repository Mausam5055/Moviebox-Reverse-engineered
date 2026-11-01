.class public Lorg/mvel2/ast/BinaryOperation;
.super Lorg/mvel2/ast/BooleanNode;


# instance fields
.field private lType:I

.field private final operation:I

.field private rType:I


# direct methods
.method public constructor <init>(ILorg/mvel2/ParserContext;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/mvel2/ast/BooleanNode;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 p2, -0x1

    iput p2, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    iput p2, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    return-void
.end method

.method public constructor <init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 2

    invoke-direct {p0, p4}, Lorg/mvel2/ast/BooleanNode;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    iput v0, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    iput-object p2, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    const-string v0, "not a statement"

    if-eqz p2, :cond_e

    iput-object p3, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    if-eqz p3, :cond_d

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_c

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v1, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    iget-object v0, v0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    iget-object v1, v1, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lorg/mvel2/util/e;->g(ILjava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-virtual {p4}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result p4

    if-nez p4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez p4, :cond_9

    if-nez v0, :cond_9

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p4, v0, p1}, Lorg/mvel2/ast/BinaryOperation;->doesRequireConversion(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-direct {p0, p1}, Lorg/mvel2/ast/BinaryOperation;->isAritmeticOperation(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    :goto_1
    new-instance p4, Lorg/mvel2/ast/LiteralNode;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p1}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {p4, p1, p3}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    iput-object p4, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lorg/mvel2/ast/BinaryOperation;->areCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_9

    const/16 p4, 0x12

    if-eq p1, p4, :cond_5

    const/16 p4, 0x13

    if-ne p1, p4, :cond_6

    :cond_5
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p1, p4}, Lorg/mvel2/util/d;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_6
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incompatible types in statement: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (compared from: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v0

    :goto_2
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result p2

    goto :goto_3

    :cond_8
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result p2

    :goto_3
    invoke-direct {p1, p4, v0, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    :cond_9
    :goto_4
    iget-object p1, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    iget-object p1, p1, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget-object p3, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    iget-object p3, p3, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    if-ne p1, p3, :cond_a

    iget-object p1, p2, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    goto :goto_5

    :cond_a
    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    iget-object p1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    iget-object p1, p1, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    :cond_b
    :goto_5
    return-void

    :cond_c
    :goto_6
    iput-object v1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    iget-object p1, p2, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    iget-object p1, p3, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    return-void

    :cond_d
    new-instance p1, Lorg/mvel2/ScriptRuntimeException;

    invoke-direct {p1, v0}, Lorg/mvel2/ScriptRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lorg/mvel2/ScriptRuntimeException;

    invoke-direct {p1, v0}, Lorg/mvel2/ScriptRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private areCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lorg/mvel2/util/l;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private doesRequireConversion(Ljava/lang/Class;Ljava/lang/Class;I)Z
    .locals 0

    const-class p3, Ljava/lang/Short;

    if-eq p1, p3, :cond_0

    sget-object p3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, p3, :cond_0

    const-class p3, Ljava/lang/Integer;

    if-eq p1, p3, :cond_0

    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p3, :cond_0

    const-class p3, Ljava/lang/Long;

    if-eq p1, p3, :cond_0

    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, p3, :cond_0

    const-class p3, Ljava/math/BigInteger;

    if-ne p1, p3, :cond_1

    :cond_0
    const-class p1, Ljava/lang/Float;

    if-eq p2, p1, :cond_2

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_2

    const-class p1, Ljava/lang/Double;

    if-eq p2, p1, :cond_2

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_2

    const-class p1, Ljava/math/BigDecimal;

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isAritmeticOperation(I)Z
    .locals 1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getOperation()I
    .locals 1

    iget v0, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    return v0
.end method

.method public getPrecedence()I
    .locals 2

    sget-object v0, Lorg/mvel2/f;->a:[I

    iget v1, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    aget v0, v0, v1

    return v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported AST operation"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lorg/mvel2/ast/BinaryOperation;->lType:I

    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    iget v3, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    iget-object v4, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v4, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lm10/a;->e(ILjava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRightBinary()Lorg/mvel2/ast/BinaryOperation;
    .locals 2

    iget-object v0, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mvel2/ast/BinaryOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mvel2/ast/BinaryOperation;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRightMost()Lorg/mvel2/ast/ASTNode;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v0, v0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mvel2/ast/BinaryOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mvel2/ast/BinaryOperation;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isGreaterPrecedence(Lorg/mvel2/ast/BinaryOperation;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/mvel2/ast/BinaryOperation;->getPrecedence()I

    move-result p1

    sget-object v0, Lorg/mvel2/f;->a:[I

    iget v1, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    aget v0, v0, v1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLiteral()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setRightMost(Lorg/mvel2/ast/ASTNode;)V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/mvel2/ast/BinaryOperation;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/mvel2/ast/BinaryOperation;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    if-nez p1, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lorg/mvel2/ast/BinaryOperation;->rType:I

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/mvel2/ast/BinaryOperation;->operation:I

    invoke-static {v2}, Lj10/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
