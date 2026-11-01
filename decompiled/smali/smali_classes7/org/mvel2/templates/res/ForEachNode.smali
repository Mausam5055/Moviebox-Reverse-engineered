.class public Lorg/mvel2/templates/res/ForEachNode;
.super Lorg/mvel2/templates/res/Node;


# instance fields
.field private expression:[Ljava/lang/String;

.field private item:[Ljava/lang/String;

.field public nestedNode:Lorg/mvel2/templates/res/Node;

.field private sepExpr:[C


# direct methods
.method public constructor <init>(ILjava/lang/String;[CII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/mvel2/templates/res/Node;-><init>(ILjava/lang/String;[CII)V

    invoke-direct {p0}, Lorg/mvel2/templates/res/ForEachNode;->configure()V

    return-void
.end method

.method private configure()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    aget-char v5, v4, v2

    const/16 v6, 0x22

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_1

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_0

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_3

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_3

    const/16 v6, 0x27

    if-eq v5, v6, :cond_3

    const/16 v6, 0x28

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_0
    sub-int v5, v2, v3

    invoke-static {v4, v3, v5}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    sub-int v5, v2, v3

    invoke-static {v4, v3, v5}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/mvel2/CompileException;

    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v3, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    add-int/2addr v3, v2

    const-string v2, "unexpected character \',\' in foreach tag"

    invoke-direct {v0, v2, v1, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_3
    invoke-static {v4, v2, v5}, Lorg/mvel2/util/m;->c([CIC)I

    move-result v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ge v3, v4, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v4, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    sub-int/2addr v4, v3

    invoke-static {v2, v3, v4}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/mvel2/CompileException;

    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v2, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    const-string v3, "expected character \':\' in foreach tag"

    invoke-direct {v0, v3, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    aput-object v4, v5, v3

    move v3, v6

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/mvel2/templates/res/ForEachNode;->expression:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/templates/res/ForEachNode;->expression:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aput-object v1, v3, v2

    move v2, v4

    goto :goto_5

    :cond_8
    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    iget-object p2, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    iput-object p2, p0, Lorg/mvel2/templates/res/ForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    iget-object p2, p0, Lorg/mvel2/templates/res/Node;->terminus:Lorg/mvel2/templates/res/Node;

    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    invoke-virtual {p1}, Lorg/mvel2/templates/res/Node;->getContents()[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/templates/res/ForEachNode;->sepExpr:[C

    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mvel2/templates/res/ForEachNode;->sepExpr:[C

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/util/Iterator;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/mvel2/templates/res/ForEachNode;->expression:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4, p3, p4}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Iterable;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    :cond_0
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    new-instance v5, Ls10/a;

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v5, v4}, Ls10/a;-><init>([Ljava/lang/Object;)V

    aput-object v5, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/mvel2/templates/TemplateRuntimeError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot iterate object type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mvel2/templates/TemplateRuntimeError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    invoke-direct {v4, v3, p4}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    move v5, v0

    :cond_3
    :goto_2
    move v6, v2

    :goto_3
    if-ge v6, v0, :cond_5

    aget-object v7, v1, v6

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, -0x1

    iget-object v7, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

    aget-object v7, v7, v6

    const-string v8, ""

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

    aget-object v7, v7, v6

    aget-object v8, v1, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_7

    iget-object v6, p0, Lorg/mvel2/templates/res/ForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v6, p1, p2, p3, v4}, Lorg/mvel2/templates/res/Node;->eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/mvel2/templates/res/ForEachNode;->sepExpr:[C

    if-eqz v6, :cond_3

    move v6, v2

    :goto_5
    if-ge v6, v0, :cond_3

    aget-object v7, v1, v6

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v6, p0, Lorg/mvel2/templates/res/ForEachNode;->sepExpr:[C

    invoke-static {v6, p3, p4}, Lorg/mvel2/d;->s([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ls10/c;->append(Ljava/lang/CharSequence;)Ls10/c;

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_8
    const/4 p1, 0x0

    :goto_6
    return-object p1
.end method

.method public getNestedNode()Lorg/mvel2/templates/res/Node;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/templates/res/ForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    return-object v0
.end method

.method public setNestedNode(Lorg/mvel2/templates/res/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/templates/res/ForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    return-void
.end method
