.class public Lorg/mvel2/templates/res/DeclareNode;
.super Lorg/mvel2/templates/res/Node;


# instance fields
.field private nestedNode:Lorg/mvel2/templates/res/Node;


# direct methods
.method public constructor <init>(ILjava/lang/String;[CII)V
    .locals 0

    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iput p4, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    add-int/lit8 p1, p5, -0x1

    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    iput-object p1, p0, Lorg/mvel2/templates/res/DeclareNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    :goto_0
    invoke-virtual {p1}, Lorg/mvel2/templates/res/Node;->getNext()Lorg/mvel2/templates/res/Node;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/mvel2/templates/res/EndNode;

    invoke-direct {p2}, Lorg/mvel2/templates/res/EndNode;-><init>()V

    iput-object p2, p1, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->terminus:Lorg/mvel2/templates/res/Node;

    iput-object p1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    const/4 p1, 0x0

    return p1
.end method

.method public eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Lr10/d;->h()Lr10/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lr10/a;

    invoke-direct {v0}, Lr10/a;-><init>()V

    invoke-virtual {p1, v0}, Lr10/d;->k(Lr10/c;)V

    :cond_0
    invoke-virtual {p1}, Lr10/d;->h()Lr10/c;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    iget v3, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    sub-int/2addr v3, v2

    const-class v6, Ljava/lang/String;

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lorg/mvel2/d;->r([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lorg/mvel2/templates/CompiledTemplate;

    invoke-virtual {p1}, Lr10/d;->j()[C

    move-result-object v3

    iget-object v4, p0, Lorg/mvel2/templates/res/DeclareNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    invoke-direct {v2, v3, v4}, Lorg/mvel2/templates/CompiledTemplate;-><init>([CLorg/mvel2/templates/res/Node;)V

    invoke-interface {v0, v1, v2}, Lr10/c;->b(Ljava/lang/String;Lorg/mvel2/templates/CompiledTemplate;)V

    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
