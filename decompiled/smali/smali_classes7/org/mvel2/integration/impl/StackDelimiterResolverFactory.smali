.class public Lorg/mvel2/integration/impl/StackDelimiterResolverFactory;
.super Lorg/mvel2/integration/impl/StackDemarcResolverFactory;


# direct methods
.method public constructor <init>(Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mvel2/integration/impl/StackDemarcResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    return-void
.end method


# virtual methods
.method public createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    invoke-virtual {p0}, Lorg/mvel2/integration/impl/StackDemarcResolverFactory;->getDelegate()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolverFactory;->getNextFactory()Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/mvel2/integration/VariableResolverFactory;->setNextFactory(Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {v0, v1}, Lorg/mvel2/integration/VariableResolverFactory;->setNextFactory(Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/integration/VariableResolverFactory;

    return-object p1
.end method
