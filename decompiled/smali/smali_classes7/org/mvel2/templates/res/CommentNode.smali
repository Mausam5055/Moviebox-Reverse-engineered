.class public Lorg/mvel2/templates/res/CommentNode;
.super Lorg/mvel2/templates/res/Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[CII)V
    .locals 0

    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    iput p5, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[CIILorg/mvel2/templates/res/Node;)V
    .locals 0

    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    iput p5, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    iput-object p6, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

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

    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
