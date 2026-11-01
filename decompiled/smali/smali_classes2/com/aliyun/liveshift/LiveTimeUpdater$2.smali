.class Lcom/aliyun/liveshift/LiveTimeUpdater$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/utils/BaseRequest$OnRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/liveshift/LiveTimeUpdater;->updateLiveTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/utils/BaseRequest$OnRequestListener<",
        "Lcom/aliyun/liveshift/bean/TimeLineContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;


# direct methods
.method constructor <init>(Lcom/aliyun/liveshift/LiveTimeUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/aliyun/liveshift/bean/TimeLineContent;Ljava/lang/String;)V
    .locals 9

    iget-object p2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p2}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$800(Lcom/aliyun/liveshift/LiveTimeUpdater;)Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-wide v1, p1, Lcom/aliyun/liveshift/bean/TimeLineContent;->current:J

    iget-object p2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p2, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$900(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide v3

    iget-object p2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p2, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$1000(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p1, v1, v2}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$602(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J

    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$500(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    move-result-wide p1

    const-wide/16 v7, 0x0

    cmp-long p1, p1, v7

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$600(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$502(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J

    :cond_0
    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$700(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V

    iget-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$800(Lcom/aliyun/liveshift/LiveTimeUpdater;)Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    move-result-object v0

    invoke-interface/range {v0 .. v6}, Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;->onUpdater(JJJ)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/aliyun/liveshift/bean/TimeLineContent;

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->onSuccess(Lcom/aliyun/liveshift/bean/TimeLineContent;Ljava/lang/String;)V

    return-void
.end method
