.class public abstract Lorg/mvel2/ast/b;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lorg/mvel2/ast/Function;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mvel2/ast/b;->a:Lorg/mvel2/ast/Function;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public b()Lorg/mvel2/ast/Function;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/ast/b;->a:Lorg/mvel2/ast/Function;

    return-object v0
.end method
