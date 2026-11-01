.class public Lorg/mvel2/optimizers/AbstractOptimizer;
.super Lorg/mvel2/compiler/AbstractParser;


# static fields
.field protected static final BEAN:I = 0x0

.field protected static final COL:I = 0x2

.field protected static final METH:I = 0x1

.field protected static final WITH:I = 0x3


# instance fields
.field protected collection:Z

.field protected currType:Ljava/lang/Class;

.field protected nullSafe:Z

.field protected staticAccess:Z

.field protected tkStart:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->collection:Z

    iput-boolean v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    iput-boolean v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->staticAccess:Z

    return-void
.end method

.method protected constructor <init>(Lorg/mvel2/ParserContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/mvel2/compiler/AbstractParser;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->collection:Z

    iput-boolean p1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    iput-boolean p1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->staticAccess:Z

    return-void
.end method


# virtual methods
.method protected capture()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    invoke-virtual {p0, v2}, Lorg/mvel2/compiler/AbstractParser;->trimRight(I)I

    move-result v2

    iput v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    invoke-virtual {p0, v3}, Lorg/mvel2/compiler/AbstractParser;->trimLeft(I)I

    move-result v3

    iget v4, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected findLastUnion()I
    .locals 7

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-eq v0, v5, :cond_5

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v5, v5, v0

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_2

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_1

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_0

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_1

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_3

    iput-boolean v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->collection:Z

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    if-eq v4, v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v4
.end method

.method protected nextSubToken()I
    .locals 12

    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iput v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    aget-char v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x7b

    const/16 v7, 0x5b

    const/16 v8, 0x3f

    const/16 v9, 0x2e

    const/4 v10, 0x1

    if-eq v3, v9, :cond_3

    if-eq v3, v8, :cond_2

    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v10

    aget-char v1, v1, v2

    if-ne v1, v9, :cond_6

    return v5

    :cond_1
    return v4

    :cond_2
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    add-int/2addr v2, v10

    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iput-boolean v10, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr v3, v10

    iget v9, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const-string v11, "unexpected end of statement"

    if-eq v3, v9, :cond_c

    add-int/2addr v2, v10

    iput v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    aget-char v1, v1, v2

    if-eq v1, v8, :cond_5

    if-eq v1, v6, :cond_4

    invoke-static {v1}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iput v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    goto :goto_0

    :cond_4
    return v5

    :cond_5
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    iget v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    add-int/2addr v1, v10

    iput v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    if-eq v1, v2, :cond_b

    iput-boolean v10, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    :cond_6
    :goto_0
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/2addr v1, v10

    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v1, v2, v1

    invoke-static {v1}, Lorg/mvel2/util/m;->c0(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v1, v2, v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_9

    if-eq v1, v7, :cond_8

    return v0

    :cond_8
    return v4

    :cond_9
    return v10

    :cond_a
    return v0

    :cond_b
    new-instance v0, Lorg/mvel2/CompileException;

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {v0, v11, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    :cond_c
    new-instance v0, Lorg/mvel2/CompileException;

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {v0, v11, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0
.end method

.method protected scanTo(C)Z
    .locals 5

    :goto_0
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v3, v2, v0

    const/16 v4, 0x22

    if-eq v3, v4, :cond_0

    const/16 v4, 0x27

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3, v2, v0, v1}, Lorg/mvel2/util/m;->h(C[CII)I

    move-result v0

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    :goto_1
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected tryStaticAccess()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-le v3, v6, :cond_15

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v6, v6, v3

    const/16 v7, 0x5c

    const/16 v8, 0x22

    if-eq v6, v8, :cond_12

    const/16 v9, 0x27

    if-eq v6, v9, :cond_f

    const/16 v10, 0x29

    const/4 v11, 0x1

    if-eq v6, v10, :cond_b

    const/16 v10, 0x2e

    if-eq v6, v10, :cond_5

    const/16 v10, 0x7d

    if-eq v6, v10, :cond_0

    goto/16 :goto_e

    :cond_0
    goto :goto_3

    :goto_1
    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-le v3, v6, :cond_14

    if-eqz v11, :cond_14

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v6, v6, v3

    if-eq v6, v8, :cond_3

    if-eq v6, v9, :cond_3

    const/16 v12, 0x7b

    if-eq v6, v12, :cond_2

    if-eq v6, v10, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_3
    :goto_2
    iget v12, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-le v3, v12, :cond_4

    iget-object v12, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v13, v12, v3

    if-eq v13, v6, :cond_4

    add-int/lit8 v13, v3, -0x1

    aget-char v12, v12, v13

    if-eq v12, v7, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    if-nez v5, :cond_a

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    goto :goto_4

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    :goto_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int/2addr v2, v8

    invoke-direct {v6, v7, v8, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget-boolean v2, Lorg/mvel2/d;->j:Z

    if-eqz v2, :cond_7

    const-string v2, ".class"

    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_6

    :cond_7
    :goto_5
    invoke-static {v6, v11, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object v0

    :goto_6
    :try_start_2
    invoke-static {v6, v5, v2}, Lorg/mvel2/util/m;->F(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassNotFoundException;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    :catch_1
    :try_start_3
    new-instance v2, Ljava/lang/String;

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v7, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    sub-int v8, v3, v8

    invoke-direct {v2, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2, v5}, Lorg/mvel2/util/m;->H(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    add-int/lit8 v7, v3, 0x1

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr v8, v3

    sub-int/2addr v8, v11

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-object v0

    :catch_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_7
    if-ge v4, v3, :cond_9

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    return-object v6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    return-object v1

    :cond_a
    move v2, v3

    move v5, v4

    goto/16 :goto_e

    :cond_b
    add-int/lit8 v3, v3, -0x1

    move v2, v11

    :goto_8
    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-le v3, v5, :cond_e

    if-eqz v2, :cond_e

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v5, v5, v3

    if-eq v5, v8, :cond_c

    packed-switch v5, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_c
    :goto_9
    :pswitch_2
    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-le v3, v6, :cond_d

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v9, v6, v3

    if-eq v9, v5, :cond_d

    add-int/lit8 v9, v3, -0x1

    aget-char v6, v6, v9

    if-eq v6, v7, :cond_d

    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_d
    :goto_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v2, v3, 0x1

    move v5, v11

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_e

    :cond_f
    :goto_b
    add-int/lit8 v6, v3, -0x1

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-le v6, v8, :cond_11

    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v10, v8, v6

    if-ne v10, v9, :cond_10

    add-int/lit8 v3, v3, -0x2

    aget-char v3, v8, v3

    if-eq v3, v7, :cond_10

    goto :goto_c

    :cond_10
    move v3, v6

    goto :goto_b

    :cond_11
    :goto_c
    move v3, v6

    goto :goto_e

    :cond_12
    :goto_d
    add-int/lit8 v6, v3, -0x1

    iget v9, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-le v6, v9, :cond_11

    iget-object v9, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v10, v9, v6

    if-ne v10, v8, :cond_13

    add-int/lit8 v3, v3, -0x2

    aget-char v3, v9, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eq v3, v7, :cond_13

    goto :goto_c

    :cond_13
    move v3, v6

    goto :goto_d

    :cond_14
    :goto_e
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :catch_3
    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    :cond_15
    return-object v1

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whiteSpaceSkip()V
    .locals 2

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    if-ge v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method
