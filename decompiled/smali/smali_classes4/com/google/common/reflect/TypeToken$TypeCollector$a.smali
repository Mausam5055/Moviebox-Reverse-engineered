.class Lcom/google/common/reflect/TypeToken$TypeCollector$a;
.super Lcom/google/common/reflect/TypeToken$TypeCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$TypeCollector;-><init>(Lcom/google/common/reflect/TypeToken$a;)V

    return-void
.end method


# virtual methods
.method bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector$a;->i(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector$a;->j(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector$a;->k(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    return-object p1
.end method

.method i(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getGenericInterfaces()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method j(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method k(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;
    .locals 0

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getGenericSuperclass()Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    return-object p1
.end method
