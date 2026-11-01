.class public Lorg/mvel2/templates/res/NamedIncludeNode;
.super Lorg/mvel2/templates/res/Node;


# instance fields
.field includeOffset:I

.field includeStart:I

.field preOffset:I

.field preStart:I


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

    const/4 p1, 0x0

    invoke-static {p3, p1}, Ls10/d;->a([CI)I

    move-result p1

    iget p2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    iput p2, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->includeStart:I

    sub-int p2, p1, p2

    iput p2, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->includeOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->preStart:I

    iget p2, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->preOffset:I

    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->preOffset:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v2, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->preStart:I

    invoke-static {v1, v2, v0, p3, p4}, Lorg/mvel2/d;->q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lr10/d;->h()Lr10/c;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v3, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->includeStart:I

    iget v4, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->includeOffset:I

    const-class v7, Ljava/lang/String;

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Lorg/mvel2/d;->r([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lr10/c;->a(Ljava/lang/String;)Lorg/mvel2/templates/CompiledTemplate;

    move-result-object v1

    invoke-static {v1, p3, p4}, Lr10/d;->d(Lorg/mvel2/templates/CompiledTemplate;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ls10/c;->append(Ljava/lang/CharSequence;)Ls10/c;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lr10/d;->h()Lr10/c;

    move-result-object p1

    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v1, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->includeStart:I

    iget v2, p0, Lorg/mvel2/templates/res/NamedIncludeNode;->includeOffset:I

    const-class v5, Ljava/lang/String;

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/mvel2/d;->r([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lr10/c;->a(Ljava/lang/String;)Lorg/mvel2/templates/CompiledTemplate;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lr10/d;->d(Lorg/mvel2/templates/CompiledTemplate;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ls10/c;->append(Ljava/lang/CharSequence;)Ls10/c;

    move-result-object p1

    return-object p1
.end method
