.class public Lj10/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj10/b;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj10/b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lorg/mvel2/ast/LineLabel;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/compiler/CompiledExpression;)I
    .locals 0

    iget p2, p0, Lj10/b;->b:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lj10/b;->b(Lorg/mvel2/ast/LineLabel;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "no debugger registered to handle breakpoint"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lorg/mvel2/ast/LineLabel;)Z
    .locals 2

    iget-object v0, p0, Lj10/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/mvel2/ast/LineLabel;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj10/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/mvel2/ast/LineLabel;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p1}, Lorg/mvel2/ast/LineLabel;->getLineNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
