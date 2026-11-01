.class final Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EstimatedModuleComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/qrcode/detector/d;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/detector/FinderPatternFinder$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/qrcode/detector/d;Lcom/google/zxing/qrcode/detector/d;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/d;->i()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/d;->i()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/zxing/qrcode/detector/d;

    check-cast p2, Lcom/google/zxing/qrcode/detector/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;->compare(Lcom/google/zxing/qrcode/detector/d;Lcom/google/zxing/qrcode/detector/d;)I

    move-result p1

    return p1
.end method
