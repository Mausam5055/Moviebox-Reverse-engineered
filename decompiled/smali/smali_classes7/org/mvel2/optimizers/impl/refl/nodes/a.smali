.class public Lorg/mvel2/optimizers/impl/refl/nodes/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mvel2/compiler/a;


# instance fields
.field private a:Lorg/mvel2/compiler/a;

.field private b:[C

.field private c:I

.field private d:I

.field private e:Lorg/mvel2/compiler/a;

.field private f:Lorg/mvel2/ParserContext;


# direct methods
.method public constructor <init>(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->a:Lorg/mvel2/compiler/a;

    iput p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->c:I

    iput p5, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->d:I

    iput-object p3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b:[C

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->f:Lorg/mvel2/ParserContext;

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->a:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lorg/mvel2/optimizers/b;->c()Lorg/mvel2/optimizers/a;

    move-result-object p1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->a:Lorg/mvel2/compiler/a;

    invoke-interface {v0}, Lorg/mvel2/compiler/a;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v10

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->f:Lorg/mvel2/ParserContext;

    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b:[C

    iget v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->c:I

    iget v5, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->d:I

    const/4 v9, 0x0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    move-result-object p2

    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    invoke-interface {p1}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->a:Lorg/mvel2/compiler/a;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    invoke-interface {v0}, Lorg/mvel2/compiler/a;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
