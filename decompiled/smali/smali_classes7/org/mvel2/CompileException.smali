.class public Lorg/mvel2/CompileException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private column:I

.field private cursor:I

.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;"
        }
    .end annotation
.end field

.field private evaluationContext:Ljava/lang/Object;

.field private expr:[C

.field private lastLineStart:I

.field private lineNumber:I

.field private msgOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[CILorg/mvel2/ParserContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;[CI",
            "Lorg/mvel2/ParserContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    const/4 p5, 0x1

    iput p5, p0, Lorg/mvel2/CompileException;->lineNumber:I

    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    iput p1, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    iput-object p3, p0, Lorg/mvel2/CompileException;->expr:[C

    iput p4, p0, Lorg/mvel2/CompileException;->cursor:I

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/c;

    invoke-virtual {p1}, Lorg/mvel2/c;->c()I

    move-result p3

    iput p3, p0, Lorg/mvel2/CompileException;->cursor:I

    invoke-virtual {p1}, Lorg/mvel2/c;->e()I

    move-result p3

    iput p3, p0, Lorg/mvel2/CompileException;->lineNumber:I

    invoke-virtual {p1}, Lorg/mvel2/c;->b()I

    move-result p1

    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    :cond_0
    iput-object p2, p0, Lorg/mvel2/CompileException;->errors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CI)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/mvel2/CompileException;->lineNumber:I

    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    iput p1, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    iput-object p2, p0, Lorg/mvel2/CompileException;->expr:[C

    iput p3, p0, Lorg/mvel2/CompileException;->cursor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    const/4 p4, 0x1

    iput p4, p0, Lorg/mvel2/CompileException;->lineNumber:I

    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    iput p1, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    iput-object p2, p0, Lorg/mvel2/CompileException;->expr:[C

    iput p3, p0, Lorg/mvel2/CompileException;->cursor:I

    return-void
.end method

.method private calcRowAndColumn()V
    .locals 6

    iget v0, p0, Lorg/mvel2/CompileException;->lineNumber:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    iget v2, p0, Lorg/mvel2/CompileException;->column:I

    if-le v2, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_6

    :cond_1
    iget-object v0, p0, Lorg/mvel2/CompileException;->expr:[C

    if-eqz v0, :cond_6

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/mvel2/CompileException;->cursor:I

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lorg/mvel2/CompileException;->expr:[C

    array-length v5, v4

    if-ge v0, v5, :cond_5

    aget-char v4, v4, v0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iput v2, p0, Lorg/mvel2/CompileException;->lineNumber:I

    iput v3, p0, Lorg/mvel2/CompileException;->column:I

    :cond_6
    :goto_2
    return-void
.end method

.method private generateErrorMessage()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/mvel2/util/s;

    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/util/s;->length()I

    move-result v1

    const-string v2, "[Near : {... "

    invoke-virtual {v0, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    invoke-virtual {v0}, Lorg/mvel2/util/s;->length()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lorg/mvel2/CompileException;->expr:[C

    iget v3, p0, Lorg/mvel2/CompileException;->cursor:I

    invoke-direct {p0, v1, v3}, Lorg/mvel2/CompileException;->showCodeNearError([CI)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mvel2/util/s;->b(Ljava/lang/CharSequence;)Lorg/mvel2/util/s;

    move-result-object v1

    const-string v3, " ....}]\n"

    invoke-virtual {v1, v3}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v1

    const/16 v3, 0x20

    invoke-static {v3, v2}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    iget v1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    :cond_0
    iget v1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    invoke-static {v3, v1}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v1

    const/16 v2, 0x5e

    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->a(C)Lorg/mvel2/util/s;

    invoke-direct {p0}, Lorg/mvel2/CompileException;->calcRowAndColumn()V

    iget-object v1, p0, Lorg/mvel2/CompileException;->evaluationContext:Ljava/lang/Object;

    const-string v2, "\n"

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v1

    const-string v2, "In "

    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/CompileException;->evaluationContext:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/mvel2/CompileException;->lineNumber:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {v0, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/mvel2/CompileException;->lineNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/mvel2/CompileException;->column:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showCodeNearError([CI)Ljava/lang/CharSequence;
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "Unknown"

    return-object p1

    :cond_0
    add-int/lit8 v0, p2, -0x14

    add-int/lit8 v1, p2, 0x1e

    array-length v2, p1

    if-le v1, v2, :cond_1

    array-length v1, p1

    add-int/lit8 v0, p2, -0x32

    :cond_1
    const/4 v2, 0x0

    if-gez v0, :cond_2

    move v0, v2

    :cond_2
    sub-int v3, v1, v0

    invoke-static {p1, v0, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    if-ge p2, v1, :cond_6

    move v1, p2

    if-lez p2, :cond_3

    :goto_0
    if-lez v1, :cond_3

    add-int/lit8 v4, v1, -0x1

    aget-char v4, p1, v4

    invoke-static {v4}, Lorg/mvel2/util/m;->q0(C)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    sub-int v4, p2, v1

    new-instance v5, Ljava/lang/String;

    array-length v6, p1

    sub-int/2addr v6, v1

    invoke-direct {v5, p1, v1, v6}, Ljava/lang/String;-><init>([CII)V

    move p1, v2

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_5

    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_4

    const/16 v6, 0x29

    if-eq v1, v6, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_7

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    move v4, v2

    :cond_7
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-ne p1, v6, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-eqz v5, :cond_8

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    iput v0, p0, Lorg/mvel2/CompileException;->msgOffset:I

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    :goto_3
    iget v0, p0, Lorg/mvel2/CompileException;->msgOffset:I

    if-nez v0, :cond_9

    if-nez v4, :cond_9

    iput p2, p0, Lorg/mvel2/CompileException;->msgOffset:I

    :cond_9
    return-object p1

    :cond_a
    if-nez v5, :cond_b

    move v7, v2

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    :goto_4
    if-eq p1, v6, :cond_d

    if-ne p1, v1, :cond_d

    if-le p1, v7, :cond_c

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_5
    move-object v0, p1

    goto :goto_2

    :cond_c
    if-ge p1, v7, :cond_7

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_d
    if-ge p1, v7, :cond_e

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_5
.end method


# virtual methods
.method public getCodeNearError()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lorg/mvel2/CompileException;->expr:[C

    iget v1, p0, Lorg/mvel2/CompileException;->cursor:I

    invoke-direct {p0, v0, v1}, Lorg/mvel2/CompileException;->showCodeNearError([CI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    iget v0, p0, Lorg/mvel2/CompileException;->column:I

    return v0
.end method

.method public getCursor()I
    .locals 1

    iget v0, p0, Lorg/mvel2/CompileException;->cursor:I

    return v0
.end method

.method public getCursorOffet()I
    .locals 1

    iget v0, p0, Lorg/mvel2/CompileException;->msgOffset:I

    return v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/CompileException;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExpr()[C
    .locals 1

    iget-object v0, p0, Lorg/mvel2/CompileException;->expr:[C

    return-object v0
.end method

.method public getLastLineStart()I
    .locals 1

    iget v0, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/mvel2/CompileException;->lineNumber:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/mvel2/CompileException;->generateErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setColumn(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    return-void
.end method

.method public setCursor(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/CompileException;->cursor:I

    return-void
.end method

.method public setErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mvel2/CompileException;->errors:Ljava/util/List;

    return-void
.end method

.method public setEvaluationContext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/CompileException;->evaluationContext:Ljava/lang/Object;

    return-void
.end method

.method public setExpr([C)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/CompileException;->expr:[C

    return-void
.end method

.method public setLastLineStart(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/CompileException;->lineNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/mvel2/CompileException;->generateErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
