.class public abstract Lcom/google/common/collect/MultimapBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MultimapBuilder$e;,
        Lcom/google/common/collect/MultimapBuilder$f;,
        Lcom/google/common/collect/MultimapBuilder$d;,
        Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;,
        Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MultimapBuilder$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->b(I)Lcom/google/common/collect/MultimapBuilder$e;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    new-instance v0, Lcom/google/common/collect/MultimapBuilder$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$a;-><init>(I)V

    return-object v0
.end method

.method public static c()Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->d(I)Lcom/google/common/collect/MultimapBuilder$e;

    move-result-object v0

    return-object v0
.end method

.method public static d(I)Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    new-instance v0, Lcom/google/common/collect/MultimapBuilder$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$b;-><init>(I)V

    return-object v0
.end method

.method public static e()Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->f(Ljava/util/Comparator;)Lcom/google/common/collect/MultimapBuilder$e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/util/Comparator;)Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/MultimapBuilder$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$c;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
