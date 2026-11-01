.class public Lorg/mvel2/templates/res/IncludeNode;
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

    iput p2, p0, Lorg/mvel2/templates/res/IncludeNode;->includeStart:I

    sub-int p2, p1, p2

    iput p2, p0, Lorg/mvel2/templates/res/IncludeNode;->includeOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mvel2/templates/res/IncludeNode;->preStart:I

    iget p2, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/mvel2/templates/res/IncludeNode;->preOffset:I

    return-void
.end method

.method public static readInFile(Lr10/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lr10/d;->i()Lorg/mvel2/util/g;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lr10/d;->i()Lorg/mvel2/util/g;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    const/16 v0, 0xa

    new-array v0, v0, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-byte v6, v0, v5

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0}, Lr10/d;->i()Lorg/mvel2/util/g;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Lorg/mvel2/templates/TemplateError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown I/O exception while including \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (stacktrace nested)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    new-instance p0, Lorg/mvel2/templates/TemplateError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot include template \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': file not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v1, p0, Lorg/mvel2/templates/res/IncludeNode;->includeStart:I

    iget v2, p0, Lorg/mvel2/templates/res/IncludeNode;->includeOffset:I

    const-class v5, Ljava/lang/String;

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/mvel2/d;->r([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lorg/mvel2/templates/res/IncludeNode;->preOffset:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    iget v3, p0, Lorg/mvel2/templates/res/IncludeNode;->preStart:I

    invoke-static {v2, v3, v1, p3, p4}, Lorg/mvel2/d;->q([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lorg/mvel2/templates/res/IncludeNode;->readInFile(Lr10/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lr10/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ls10/c;->append(Ljava/lang/CharSequence;)Ls10/c;

    move-result-object p2

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lr10/d;Ls10/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, v0}, Lorg/mvel2/templates/res/IncludeNode;->readInFile(Lr10/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lorg/mvel2/d;->n(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ls10/c;->append(Ljava/lang/CharSequence;)Ls10/c;

    move-result-object p1

    return-object p1
.end method
