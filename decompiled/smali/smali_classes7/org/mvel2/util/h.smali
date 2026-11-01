.class public Lorg/mvel2/util/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:[C

.field private f:Lorg/mvel2/ParserContext;

.field private g:Lorg/mvel2/util/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;II[CILorg/mvel2/ParserContext;Lorg/mvel2/util/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mvel2/util/h;->a:Ljava/lang/String;

    iput p2, p0, Lorg/mvel2/util/h;->b:I

    iput p3, p0, Lorg/mvel2/util/h;->c:I

    iput-object p4, p0, Lorg/mvel2/util/h;->e:[C

    iput p5, p0, Lorg/mvel2/util/h;->d:I

    iput-object p6, p0, Lorg/mvel2/util/h;->f:Lorg/mvel2/ParserContext;

    iput-object p7, p0, Lorg/mvel2/util/h;->g:Lorg/mvel2/util/g;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/mvel2/util/h;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/util/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/mvel2/ast/Function;
    .locals 12

    iget v0, p0, Lorg/mvel2/util/h;->b:I

    iget v1, p0, Lorg/mvel2/util/h;->c:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/mvel2/util/h;->e:[C

    iget-object v3, p0, Lorg/mvel2/util/h;->f:Lorg/mvel2/ParserContext;

    invoke-static {v2, v0, v1, v3}, Lorg/mvel2/util/m;->j([CIILorg/mvel2/ParserContext;)I

    move-result v2

    iput v2, p0, Lorg/mvel2/util/h;->b:I

    iget-object v3, p0, Lorg/mvel2/util/h;->e:[C

    invoke-static {v3, v2}, Lorg/mvel2/util/m;->s0([CI)I

    move-result v2

    iput v2, p0, Lorg/mvel2/util/h;->b:I

    aget-char v3, v3, v2

    const/16 v4, 0x7b

    const/16 v5, 0x28

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lorg/mvel2/util/h;->e:[C

    iget-object v6, p0, Lorg/mvel2/util/h;->f:Lorg/mvel2/ParserContext;

    invoke-static {v3, v2, v1, v5, v6}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/mvel2/util/h;->b:I

    iget-object v6, p0, Lorg/mvel2/util/h;->e:[C

    invoke-static {v6, v5}, Lorg/mvel2/util/m;->E0([CI)I

    move-result v5

    iput v5, p0, Lorg/mvel2/util/h;->b:I

    if-ge v5, v1, :cond_1

    iget-object v6, p0, Lorg/mvel2/util/h;->e:[C

    aget-char v7, v6, v5

    if-ne v7, v4, :cond_0

    iget-object v7, p0, Lorg/mvel2/util/h;->f:Lorg/mvel2/ParserContext;

    invoke-static {v6, v5, v1, v4, v7}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    move-result v1

    iput v1, p0, Lorg/mvel2/util/h;->b:I

    move v6, v2

    move v2, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v5, -0x1

    iget-object v7, p0, Lorg/mvel2/util/h;->f:Lorg/mvel2/ParserContext;

    invoke-static {v6, v5, v1, v7}, Lorg/mvel2/util/m;->i([CIILorg/mvel2/ParserContext;)I

    move-result v1

    iput v1, p0, Lorg/mvel2/util/h;->b:I

    move v6, v2

    move v2, v4

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/mvel2/CompileException;

    iget-object v1, p0, Lorg/mvel2/util/h;->e:[C

    iget v2, p0, Lorg/mvel2/util/h;->b:I

    const-string v3, "incomplete statement"

    invoke-direct {v0, v3, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_2
    iget-object v3, p0, Lorg/mvel2/util/h;->e:[C

    aget-char v5, v3, v2

    const/4 v6, 0x0

    if-ne v5, v4, :cond_3

    iget-object v5, p0, Lorg/mvel2/util/h;->f:Lorg/mvel2/ParserContext;

    invoke-static {v3, v2, v1, v4, v5}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    move-result v1

    iput v1, p0, Lorg/mvel2/util/h;->b:I

    :goto_0
    move v3, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lorg/mvel2/util/h;->f:Lorg/mvel2/ParserContext;

    invoke-static {v3, v2, v1, v5}, Lorg/mvel2/util/m;->i([CIILorg/mvel2/ParserContext;)I

    move-result v1

    iput v1, p0, Lorg/mvel2/util/h;->b:I

    move v2, v4

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lorg/mvel2/util/h;->e:[C

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v2}, Lorg/mvel2/util/m;->N0([CI)I

    move-result v8

    iget-object v2, p0, Lorg/mvel2/util/h;->e:[C

    invoke-static {v2, v0, v1}, Lorg/mvel2/util/m;->M0([CII)I

    move-result v0

    iget v1, p0, Lorg/mvel2/util/h;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mvel2/util/h;->b:I

    iget-object v2, p0, Lorg/mvel2/util/h;->g:Lorg/mvel2/util/g;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mvel2/util/h;->e:[C

    invoke-static {v2, v1}, Lorg/mvel2/util/m;->p0([CI)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mvel2/util/h;->g:Lorg/mvel2/util/g;

    new-instance v2, Lorg/mvel2/ast/EndOfStatement;

    iget-object v4, p0, Lorg/mvel2/util/h;->f:Lorg/mvel2/ParserContext;

    invoke-direct {v2, v4}, Lorg/mvel2/ast/EndOfStatement;-><init>(Lorg/mvel2/ParserContext;)V

    invoke-virtual {v1, v2}, Lorg/mvel2/util/g;->a(Ljava/lang/Object;)V

    :cond_4
    new-instance v1, Lorg/mvel2/ast/Function;

    iget-object v4, p0, Lorg/mvel2/util/h;->a:Ljava/lang/String;

    iget-object v5, p0, Lorg/mvel2/util/h;->e:[C

    sub-int v7, v3, v6

    sub-int v9, v0, v8

    iget v10, p0, Lorg/mvel2/util/h;->d:I

    iget-object v11, p0, Lorg/mvel2/util/h;->f:Lorg/mvel2/ParserContext;

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lorg/mvel2/ast/Function;-><init>(Ljava/lang/String;[CIIIIILorg/mvel2/ParserContext;)V

    return-object v1
.end method
