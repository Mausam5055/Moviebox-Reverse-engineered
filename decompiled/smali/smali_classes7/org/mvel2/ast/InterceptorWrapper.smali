.class public Lorg/mvel2/ast/InterceptorWrapper;
.super Lorg/mvel2/ast/ASTNode;


# instance fields
.field private interceptor:Lk10/b;

.field private node:Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>(Lk10/b;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 0

    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    iput-object p2, p0, Lorg/mvel2/ast/InterceptorWrapper;->node:Lorg/mvel2/ast/ASTNode;

    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
