.class public Lo10/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mvel2/compiler/a;


# instance fields
.field public a:[Lorg/mvel2/compiler/a;

.field private b:Ljava/lang/Class;


# direct methods
.method public constructor <init>([Lorg/mvel2/compiler/a;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo10/a;->a:[Lorg/mvel2/compiler/a;

    iput-object p2, p0, Lo10/a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lo10/a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 4

    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lo10/a;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo10/a;->a:[Lorg/mvel2/compiler/a;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/Object;

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lo10/a;->a:[Lorg/mvel2/compiler/a;

    aget-object v3, v3, v1

    invoke-interface {v3, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lo10/a;->b:Ljava/lang/Class;

    iget-object v2, p0, Lo10/a;->a:[Lorg/mvel2/compiler/a;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lo10/a;->a:[Lorg/mvel2/compiler/a;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
