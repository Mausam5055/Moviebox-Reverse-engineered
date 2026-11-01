.class public Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private expr:[C

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private offset:I

.field private pCtx:Lorg/mvel2/ParserContext;

.field private start:I


# direct methods
.method public constructor <init>([CIILorg/mvel2/ParserContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->expr:[C

    iput p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->start:I

    iput p3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->offset:I

    iput-object p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-nez v0, :cond_1

    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->pCtx:Lorg/mvel2/ParserContext;

    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->expr:[C

    iget v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->start:I

    iget v5, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->offset:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v9, 0x1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object v0

    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe$1;

    invoke-direct {v1, p0, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe$1;-><init>(Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;Lorg/mvel2/compiler/a;)V

    iput-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    :cond_1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/AccessorNode;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
