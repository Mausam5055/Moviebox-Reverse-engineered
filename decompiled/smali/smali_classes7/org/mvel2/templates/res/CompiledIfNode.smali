.class public Lorg/mvel2/templates/res/CompiledIfNode;
.super Lorg/mvel2/templates/res/IfNode;


# instance fields
.field private ce:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/mvel2/templates/res/IfNode;-><init>(ILjava/lang/String;[CII)V

    :goto_0
    iget p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    iget p2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    if-le p1, p2, :cond_0

    aget-char p1, p3, p1

    invoke-static {p1}, Lorg/mvel2/util/m;->q0(C)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    iget p2, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    if-eq p1, p2, :cond_1

    sub-int/2addr p2, p4

    invoke-static {p3, p1, p2, p6}, Lorg/mvel2/d;->g([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledIfNode;->ce:Ljava/io/Serializable;

    :cond_1
    return-void
.end method


# virtual methods
.method public eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mvel2/templates/res/CompiledIfNode;->ce:Ljava/io/Serializable;

    if-eqz v0, :cond_2

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, p3, p4, v1}, Lorg/mvel2/d;->u(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
