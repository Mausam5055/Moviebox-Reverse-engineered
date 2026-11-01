.class public Lbe/q$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/interfacz/QueryPriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/q;->d(Lcom/hisavana/common/interfacz/QueryPriceListener;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/common/bean/Network;

.field public final synthetic b:Lbe/q;


# direct methods
.method public constructor <init>(Lbe/q;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    iput-object p1, p0, Lbe/q$b;->b:Lbe/q;

    iput-object p2, p0, Lbe/q$b;->a:Lcom/hisavana/common/bean/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPriceFailed()V
    .locals 3

    iget-object v0, p0, Lbe/q$b;->b:Lbe/q;

    invoke-static {v0}, Lbe/q;->e(Lbe/q;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbe/q$b;->a:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " query price failed; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE9:I

    invoke-static {v0, v1}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lbe/q$b;->b:Lbe/q;

    invoke-static {v0}, Lbe/q;->m(Lbe/q;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbe/q$b;->b:Lbe/q;

    invoke-static {v0, v1}, Lbe/q;->f(Lbe/q;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbe/q$b;->b:Lbe/q;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbe/q;->g(Lbe/q;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onQueryPriceSuccess(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lbe/q$b;->b:Lbe/q;

    invoke-static {v0}, Lbe/q;->e(Lbe/q;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/bean/Network;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive query price result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "QueryPriceCenter"

    invoke-virtual {v2, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " price"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v2, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE9:I

    invoke-static {p1, v2}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_2
    invoke-static {}, Lbe/q;->a()Lbe/b;

    move-result-object p1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lbe/b;->b(Ljava/lang/String;Lcom/hisavana/common/bean/Network;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v2, "add price to price pool failed"

    invoke-virtual {p1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbe/q$b;->b:Lbe/q;

    invoke-virtual {p1, v1, v0}, Lbe/q;->h(Lcom/hisavana/common/bean/Network;Z)V

    return-void

    :cond_3
    iget-object p1, p0, Lbe/q$b;->b:Lbe/q;

    invoke-static {p1}, Lbe/q;->m(Lbe/q;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lbe/q$b;->b:Lbe/q;

    invoke-static {p1, v0}, Lbe/q;->f(Lbe/q;Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lbe/q$b;->b:Lbe/q;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbe/q;->g(Lbe/q;ZLjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
