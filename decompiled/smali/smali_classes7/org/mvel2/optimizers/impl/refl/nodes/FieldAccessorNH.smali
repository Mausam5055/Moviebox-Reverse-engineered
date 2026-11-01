.class public Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private coercionRequired:Z

.field private field:Ljava/lang/reflect/Field;

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private nullHandler:Lk10/c;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lk10/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->coercionRequired:Z

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "unable to access field"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->coercionRequired:Z

    :try_start_0
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mvel2/compiler/AccessorNode;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v1, p1, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p4

    :cond_1
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "unable to access field"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->coercionRequired:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to bind property"

    invoke-direct {p1, p2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
