.class public Lorg/mvel2/util/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/mvel2/util/StackElement;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v2, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    if-eqz v2, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/mvel2/util/StackElement;

    invoke-direct {v2, v1, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v2, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/mvel2/util/StackElement;

    invoke-direct {v0, v1, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    return-void
.end method

.method public c(Lorg/mvel2/util/g;)V
    .locals 4

    new-instance v0, Lorg/mvel2/util/StackElement;

    new-instance v1, Lorg/mvel2/util/StackElement;

    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v3, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v3, v3, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iget-object v2, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v2, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v0, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v0, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    iget v0, p1, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Lorg/mvel2/util/g;->b:I

    return-void
.end method

.method public d(Lorg/mvel2/util/g;)V
    .locals 4

    new-instance v0, Lorg/mvel2/util/StackElement;

    new-instance v1, Lorg/mvel2/util/StackElement;

    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v3, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v3, v3, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v3, v3, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iget-object v2, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v0, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v0, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    iget v0, p1, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Lorg/mvel2/util/g;->b:I

    return-void
.end method

.method public e()V
    .locals 1

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    new-instance v0, Lorg/mvel2/util/StackElement;

    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v2, v1, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    return-void
.end method

.method public g()Z
    .locals 1

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i()V
    .locals 5

    new-instance v0, Lorg/mvel2/util/StackElement;

    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v2, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v3, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    iget-object v1, v1, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v4, v4, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v4, v4, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lm10/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    return-void
.end method

.method public j(I)V
    .locals 4

    new-instance v0, Lorg/mvel2/util/StackElement;

    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v3, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    iget-object v1, v1, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lm10/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget p1, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mvel2/util/g;->b:I

    return-void
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 3

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_1
    new-instance v0, Lorg/mvel2/ScriptRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected Boolean; but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    const-string v2, "null"

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mvel2/ScriptRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v1, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    throw v0
.end method

.method public o()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v1, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    throw v0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 3

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/mvel2/util/g;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v1, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Lorg/mvel2/ScriptRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected Boolean; but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    const-string v2, "null"

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mvel2/ScriptRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    throw v0
.end method

.method public q(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    new-instance v0, Lorg/mvel2/util/StackElement;

    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    invoke-direct {v0, v1, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    return-void
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    new-instance v0, Lorg/mvel2/util/StackElement;

    new-instance v1, Lorg/mvel2/util/StackElement;

    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    invoke-direct {v1, v2, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    return-void
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    new-instance v0, Lorg/mvel2/util/StackElement;

    new-instance v1, Lorg/mvel2/util/StackElement;

    new-instance v2, Lorg/mvel2/util/StackElement;

    iget-object v3, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    invoke-direct {v2, v3, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    invoke-direct {v1, v2, p2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p3}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    return-void
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    if-nez v0, :cond_0

    const-string v0, "<EMPTY>"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    if-eqz v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    if-nez v0, :cond_1

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 3

    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v1, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v0, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iput-object v2, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    return-void
.end method

.method public v()V
    .locals 4

    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v1, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v0, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v3, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v3, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iput-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iput-object v1, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    return-void
.end method

.method public w()V
    .locals 5

    new-instance v0, Lorg/mvel2/util/StackElement;

    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v3, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    iget-object v1, v1, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget-object v4, v4, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lm10/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    iget v0, p0, Lorg/mvel2/util/g;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/mvel2/util/g;->b:I

    return-void
.end method
