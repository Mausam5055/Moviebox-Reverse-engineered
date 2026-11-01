.class public Lorg/mvel2/integration/impl/IndexVariableResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mvel2/integration/VariableResolver;


# instance fields
.field private indexPos:I

.field private vars:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->indexPos:I

    iput-object p2, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->vars:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->vars:[Ljava/lang/Object;

    iget v1, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->indexPos:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setStaticType(Ljava/lang/Class;)V
    .locals 0

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->vars:[Ljava/lang/Object;

    iget v1, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->indexPos:I

    aput-object p1, v0, v1

    return-void
.end method
