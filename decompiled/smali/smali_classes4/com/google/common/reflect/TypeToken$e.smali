.class Lcom/google/common/reflect/TypeToken$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:[Ljava/lang/reflect/Type;

.field private final b:Z


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$e;->a:[Ljava/lang/reflect/Type;

    iput-boolean p2, p0, Lcom/google/common/reflect/TypeToken$e;->b:Z

    return-void
.end method


# virtual methods
.method a(Ljava/lang/reflect/Type;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$e;->a:[Ljava/lang/reflect/Type;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/common/reflect/TypeToken$e;->b:Z

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/google/common/reflect/TypeToken$e;->b:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method b(Ljava/lang/reflect/Type;)Z
    .locals 5

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$e;->a:[Ljava/lang/reflect/Type;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/common/reflect/TypeToken$e;->b:Z

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/google/common/reflect/TypeToken$e;->b:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
