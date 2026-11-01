.class public Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field literal:Ljava/lang/Object;

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->literal:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->literal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getLiteral()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->literal:Ljava/lang/Object;

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->literal:Ljava/lang/Object;

    invoke-interface {p1, v0, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->literal:Ljava/lang/Object;

    return-object p1
.end method

.method public setLiteral(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->literal:Ljava/lang/Object;

    return-void
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;->literal:Ljava/lang/Object;

    invoke-interface {p1, v0, p2, p3, p4}, Lorg/mvel2/compiler/AccessorNode;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
