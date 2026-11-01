.class public Lorg/mvel2/templates/res/TerminalExpressionNode;
.super Lorg/mvel2/templates/res/Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/templates/res/Node;)V
    .locals 1

    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    iget v0, p1, Lorg/mvel2/templates/res/Node;->begin:I

    iput v0, p0, Lorg/mvel2/templates/res/Node;->begin:I

    iget-object v0, p1, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    iget-object v0, p1, Lorg/mvel2/templates/res/Node;->contents:[C

    iput-object v0, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v0, p1, Lorg/mvel2/templates/res/Node;->cStart:I

    iput v0, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    iget p1, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget p2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    iget v0, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    sub-int/2addr v0, p2

    invoke-static {p1, p2, v0, p3, p4}, Lorg/mvel2/d;->q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
