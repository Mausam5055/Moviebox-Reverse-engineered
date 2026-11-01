.class Lcom/hisavana/mediation/handler/DispatcherHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/handler/DispatcherHandler;->q(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hisavana/common/bean/Network;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/handler/DispatcherHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler$1;->this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hisavana/common/bean/Network;Lcom/hisavana/common/bean/Network;)I
    .locals 6

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    double-to-int v0, v0

    neg-int v0, v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler$1;->this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-virtual {v1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler$1;->this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-static {v2}, Lcom/hisavana/mediation/handler/DispatcherHandler;->e(Lcom/hisavana/mediation/handler/DispatcherHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler$1;->this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-static {v4}, Lcom/hisavana/mediation/handler/DispatcherHandler;->o(Lcom/hisavana/mediation/handler/DispatcherHandler;)Lbe/i;

    move-result-object v4

    invoke-virtual {v4}, Lbe/i;->J()Z

    move-result v4

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler$1;->this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-virtual {p1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    move-result-object p1

    iget-object v1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler$1;->this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-static {v1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->e(Lcom/hisavana/mediation/handler/DispatcherHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler$1;->this$0:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-static {v3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->o(Lcom/hisavana/mediation/handler/DispatcherHandler;)Lbe/i;

    move-result-object v3

    invoke-virtual {v3}, Lbe/i;->J()Z

    move-result v3

    invoke-virtual {p1, v1, v2, p2, v3}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/hisavana/common/bean/Network;

    check-cast p2, Lcom/hisavana/common/bean/Network;

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler$1;->compare(Lcom/hisavana/common/bean/Network;Lcom/hisavana/common/bean/Network;)I

    move-result p1

    return p1
.end method
