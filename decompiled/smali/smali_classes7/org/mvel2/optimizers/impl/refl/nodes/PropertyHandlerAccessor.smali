.class public Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;
.super Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;


# instance fields
.field private conversionType:Ljava/lang/Class;

.field private propertyHandler:Lk10/c;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lk10/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;-><init>()V

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->conversionType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->conversionType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/mvel2/d;->y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/mvel2/d;->y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    throw p2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "unable to access field"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
.end method
