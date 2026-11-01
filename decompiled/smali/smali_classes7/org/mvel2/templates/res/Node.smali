.class public abstract Lorg/mvel2/templates/res/Node;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected begin:I

.field protected cEnd:I

.field protected cStart:I

.field protected contents:[C

.field protected end:I

.field protected name:Ljava/lang/String;

.field public next:Lorg/mvel2/templates/res/Node;

.field protected terminus:Lorg/mvel2/templates/res/Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    iput p4, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    add-int/lit8 p1, p5, -0x1

    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[CIILorg/mvel2/templates/res/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    iput p4, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    add-int/lit8 p1, p5, -0x1

    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    iput-object p3, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iput-object p6, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    return-void
.end method


# virtual methods
.method public calculateContents([C)V
    .locals 2

    iget v0, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    iget v1, p0, Lorg/mvel2/templates/res/Node;->end:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v1}, Lorg/mvel2/util/m;->K0([CII)[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    return-void
.end method

.method public abstract demarcate(Lorg/mvel2/templates/res/Node;[C)Z
.end method

.method public abstract eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
.end method

.method public getBegin()I
    .locals 1

    iget v0, p0, Lorg/mvel2/templates/res/Node;->begin:I

    return v0
.end method

.method public getCEnd()I
    .locals 1

    iget v0, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    return v0
.end method

.method public getCStart()I
    .locals 1

    iget v0, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    return v0
.end method

.method public getContents()[C
    .locals 1

    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lorg/mvel2/templates/res/Node;->end:I

    return v0
.end method

.method public getLength()I
    .locals 2

    iget v0, p0, Lorg/mvel2/templates/res/Node;->end:I

    iget v1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Lorg/mvel2/templates/res/Node;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    return-object v0
.end method

.method public getTerminus()Lorg/mvel2/templates/res/Node;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->terminus:Lorg/mvel2/templates/res/Node;

    return-object v0
.end method

.method public isOpenNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBegin(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    return-void
.end method

.method public setCEnd(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    return-void
.end method

.method public setCStart(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    return-void
.end method

.method public setContents([C)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    return-void
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/templates/res/Node;->end:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    return-void
.end method

.method public setNext(Lorg/mvel2/templates/res/Node;)Lorg/mvel2/templates/res/Node;
    .locals 0

    iput-object p1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    return-object p1
.end method

.method public setTerminus(Lorg/mvel2/templates/res/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/templates/res/Node;->terminus:Lorg/mvel2/templates/res/Node;

    return-void
.end method
