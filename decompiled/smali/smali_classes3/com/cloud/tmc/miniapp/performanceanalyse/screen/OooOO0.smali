.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

.field public OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:I


# direct methods
.method public constructor <init>(JJLjava/util/List;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;",
            ")V"
        }
    .end annotation

    const-string v0, "_timePoints"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

    invoke-static {p5}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final OooO00o()J
    .locals 4

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0OO:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;->OooO00o()V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    iget p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0OO:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0OO:I

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0O0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0OO:I

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0O0:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0O0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;->OooO0OO()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;->OooO0O0()V

    :goto_0
    return-void
.end method
