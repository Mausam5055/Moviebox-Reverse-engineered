.class public Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;
.super Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;


# instance fields
.field private parameters:[Lorg/mvel2/compiler/a;


# direct methods
.method public constructor <init>([Lorg/mvel2/compiler/a;)V
    .locals 0

    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;-><init>()V

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;->parameters:[Lorg/mvel2/compiler/a;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lorg/mvel2/ast/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mvel2/ast/b;

    invoke-virtual {v0}, Lorg/mvel2/ast/b;->b()Lorg/mvel2/ast/Function;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/mvel2/ast/Function;

    :goto_0
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;->parameters:[Lorg/mvel2/compiler/a;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_1

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;->parameters:[Lorg/mvel2/compiler/a;

    aget-object v4, v4, v3

    invoke-interface {v4, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1, p2, p3, v2}, Lorg/mvel2/ast/Function;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0, p1, p2, p3, v2}, Lorg/mvel2/ast/Function;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "can\'t write to function"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
