.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->g(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;->this$0:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;)I
    .locals 0

    iget p1, p1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;->a:I

    iget p2, p2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;->a:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;

    check-cast p2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;->compare(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$b;)I

    move-result p1

    return p1
.end method
