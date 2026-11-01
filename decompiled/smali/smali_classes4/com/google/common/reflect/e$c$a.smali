.class Lcom/google/common/reflect/e$c$a;
.super Lcom/google/common/reflect/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/e$c;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/reflect/TypeVariable;

.field final synthetic c:Lcom/google/common/reflect/e$c;

.field final synthetic d:Lcom/google/common/reflect/e$c;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/e$c;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/e$c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/reflect/e$c$a;->b:Ljava/lang/reflect/TypeVariable;

    iput-object p3, p0, Lcom/google/common/reflect/e$c$a;->c:Lcom/google/common/reflect/e$c;

    iput-object p1, p0, Lcom/google/common/reflect/e$c$a;->d:Lcom/google/common/reflect/e$c;

    invoke-direct {p0}, Lcom/google/common/reflect/e$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/e$c;)Ljava/lang/reflect/Type;
    .locals 2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/e$c$a;->b:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/e$c$a;->c:Lcom/google/common/reflect/e$c;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/reflect/e$c;->b(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/e$c;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method
