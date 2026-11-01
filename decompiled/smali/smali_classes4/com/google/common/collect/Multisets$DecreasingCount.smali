.class final Lcom/google/common/collect/Multisets$DecreasingCount;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecreasingCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/common/collect/l3$a;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/common/collect/l3$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/Multisets$DecreasingCount;

    invoke-direct {v0}, Lcom/google/common/collect/Multisets$DecreasingCount;-><init>()V

    sput-object v0, Lcom/google/common/collect/Multisets$DecreasingCount;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/common/collect/l3$a;Lcom/google/common/collect/l3$a;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l3$a;",
            "Lcom/google/common/collect/l3$a;",
            ")I"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/common/collect/l3$a;->getCount()I

    move-result p2

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->getCount()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/l3$a;

    check-cast p2, Lcom/google/common/collect/l3$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multisets$DecreasingCount;->compare(Lcom/google/common/collect/l3$a;Lcom/google/common/collect/l3$a;)I

    move-result p1

    return p1
.end method
