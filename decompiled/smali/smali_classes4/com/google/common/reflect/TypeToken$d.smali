.class Lcom/google/common/reflect/TypeToken$d;
.super Lcom/google/common/reflect/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->getRawTypes()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/ImmutableSet$a;

.field final synthetic c:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/collect/ImmutableSet$a;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$d;->b:Lcom/google/common/collect/ImmutableSet$a;

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$d;->c:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/common/reflect/g;-><init>()V

    return-void
.end method


# virtual methods
.method b(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->b:Lcom/google/common/collect/ImmutableSet$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    return-void
.end method

.method c(Ljava/lang/reflect/GenericArrayType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->b:Lcom/google/common/collect/ImmutableSet$a;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/Types;->h(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    return-void
.end method

.method d(Ljava/lang/reflect/ParameterizedType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->b:Lcom/google/common/collect/ImmutableSet$a;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    return-void
.end method

.method e(Ljava/lang/reflect/TypeVariable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/g;->a([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method f(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/g;->a([Ljava/lang/reflect/Type;)V

    return-void
.end method
