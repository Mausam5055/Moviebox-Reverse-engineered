.class public Lorg/mvel2/ast/d;
.super Lorg/mvel2/ast/b;


# instance fields
.field private final b:Lorg/mvel2/integration/VariableResolverFactory;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Function;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mvel2/ast/b;-><init>(Lorg/mvel2/ast/Function;)V

    iput-object p2, p0, Lorg/mvel2/ast/d;->b:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mvel2/ast/b;->a:Lorg/mvel2/ast/Function;

    new-instance v1, Lorg/mvel2/ast/InvokationContextFactory;

    iget-object v2, p0, Lorg/mvel2/ast/d;->b:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-direct {v1, p3, v2}, Lorg/mvel2/ast/InvokationContextFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Lorg/mvel2/ast/Function;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()Lorg/mvel2/integration/VariableResolverFactory;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/d;->b:Lorg/mvel2/integration/VariableResolverFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function_prototype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/ast/b;->a:Lorg/mvel2/ast/Function;

    invoke-virtual {v1}, Lorg/mvel2/ast/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
