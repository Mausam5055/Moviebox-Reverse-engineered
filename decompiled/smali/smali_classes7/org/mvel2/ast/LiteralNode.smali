.class public Lorg/mvel2/ast/LiteralNode;
.super Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Lorg/mvel2/ParserContext;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    iput-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    const-class p2, Lorg/mvel2/compiler/BlankLiteral;

    if-ne p1, p2, :cond_1

    const-class p1, Ljava/lang/Object;

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-class p1, Lorg/mvel2/util/l;

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getLiteralValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    return-object p1
.end method

.method public isLiteral()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setLiteralValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Literal<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
