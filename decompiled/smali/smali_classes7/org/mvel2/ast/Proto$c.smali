.class public Lorg/mvel2/ast/Proto$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Lorg/mvel2/ast/Proto$ReceiverType;

.field private b:Ljava/lang/Object;

.field private c:Lorg/mvel2/compiler/ExecutableStatement;

.field private d:Lorg/mvel2/ast/Proto$b;

.field final synthetic e:Lorg/mvel2/ast/Proto;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/ast/Proto$b;Lorg/mvel2/ast/Proto$ReceiverType;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->e:Lorg/mvel2/ast/Proto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mvel2/ast/Proto$c;->d:Lorg/mvel2/ast/Proto$b;

    iput-object p3, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    iput-object p4, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/ast/Proto$b;Lorg/mvel2/ast/Proto$ReceiverType;Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->e:Lorg/mvel2/ast/Proto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mvel2/ast/Proto$c;->d:Lorg/mvel2/ast/Proto$b;

    iput-object p3, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    iput-object p4, p0, Lorg/mvel2/ast/Proto$c;->c:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method

.method static synthetic a(Lorg/mvel2/ast/Proto$c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lorg/mvel2/ast/Proto$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lorg/mvel2/ast/Proto$a;->a:[I

    iget-object v1, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object p2, p0, Lorg/mvel2/ast/Proto$c;->e:Lorg/mvel2/ast/Proto;

    iget-object p3, p2, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget p2, p2, Lorg/mvel2/ast/ASTNode;->start:I

    const-string p4, "unresolved prototype receiver"

    invoke-direct {p1, p4, p3, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    :cond_1
    iget-object p1, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mvel2/ast/Function;

    new-instance v1, Lorg/mvel2/ast/InvokationContextFactory;

    iget-object v2, p0, Lorg/mvel2/ast/Proto$c;->d:Lorg/mvel2/ast/Proto$b;

    invoke-static {v2}, Lorg/mvel2/ast/Proto$b;->a(Lorg/mvel2/ast/Proto$b;)Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Lorg/mvel2/ast/InvokationContextFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/integration/VariableResolverFactory;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Lorg/mvel2/ast/Function;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lorg/mvel2/ast/Proto$b;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/ast/Proto$c;
    .locals 4

    new-instance v0, Lorg/mvel2/ast/Proto$c;

    iget-object v1, p0, Lorg/mvel2/ast/Proto$c;->e:Lorg/mvel2/ast/Proto;

    iget-object v2, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    sget-object v3, Lorg/mvel2/ast/Proto$ReceiverType;->PROPERTY:Lorg/mvel2/ast/Proto$ReceiverType;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lorg/mvel2/ast/Proto$c;->c:Lorg/mvel2/compiler/ExecutableStatement;

    if-eqz v3, :cond_0

    invoke-interface {v3, p2, p3, p4}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/mvel2/ast/Proto$c;->b:Ljava/lang/Object;

    :goto_0
    invoke-direct {v0, v1, p1, v2, p2}, Lorg/mvel2/ast/Proto$c;-><init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/ast/Proto$b;Lorg/mvel2/ast/Proto$ReceiverType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public e(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->c:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method

.method public f(Lorg/mvel2/ast/Proto$ReceiverType;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/ast/Proto$c;->a:Lorg/mvel2/ast/Proto$ReceiverType;

    return-void
.end method
