.class abstract Lcom/google/common/collect/b4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b4$b;,
        Lcom/google/common/collect/b4$a;
    }
.end annotation


# direct methods
.method static synthetic a(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/b4;->d(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/b4;->c(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static d(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
