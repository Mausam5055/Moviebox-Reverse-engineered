.class Lcom/hisavana/mediation/handler/DispatcherHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/handler/DispatcherHandler;->g(Ljava/util/concurrent/CopyOnWriteArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hisavana/common/interfacz/Iad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/handler/DispatcherHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler$2;->this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hisavana/common/interfacz/Iad;Lcom/hisavana/common/interfacz/Iad;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hisavana/common/interfacz/Iad;",
            "Lcom/hisavana/common/interfacz/Iad;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    mul-double/2addr p1, v2

    sub-double/2addr v0, p1

    double-to-int p1, v0

    neg-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/hisavana/common/interfacz/Iad;

    check-cast p2, Lcom/hisavana/common/interfacz/Iad;

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler$2;->compare(Lcom/hisavana/common/interfacz/Iad;Lcom/hisavana/common/interfacz/Iad;)I

    move-result p1

    return p1
.end method
