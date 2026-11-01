.class public Lo10/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mvel2/compiler/a;


# instance fields
.field private a:[Lorg/mvel2/compiler/a;


# direct methods
.method public constructor <init>([Lorg/mvel2/compiler/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo10/c;->a:[Lorg/mvel2/compiler/a;

    return-void
.end method


# virtual methods
.method public b()[Lorg/mvel2/compiler/a;
    .locals 1

    iget-object v0, p0, Lo10/c;->a:[Lorg/mvel2/compiler/a;

    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/util/List;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lo10/c;->b()[Lorg/mvel2/compiler/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lo10/c;->b()[Lorg/mvel2/compiler/a;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lo10/c;->b()[Lorg/mvel2/compiler/a;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
