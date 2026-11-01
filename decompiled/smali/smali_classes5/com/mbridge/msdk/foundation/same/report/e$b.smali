.class Lcom/mbridge/msdk/foundation/same/report/e$b;
.super Lcom/mbridge/msdk/foundation/same/report/net/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/report/e;->a(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/mbridge/msdk/foundation/same/report/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/report/e;JLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    iput-wide p2, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->b:J

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/report/net/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6279\u91cf\u4e0a\u62a5\u5931\u8d25\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/foundation/same/report/e;->a(Lcom/mbridge/msdk/foundation/same/report/e;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object v0

    iget-wide v1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/db/BatchReportDao;->updateMessagesReportState(Ljava/util/ArrayList;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6279\u91cf\u4e0a\u62a5\u5931\u8d25\uff0c\u4e0a\u62a5\u5931\u8d25\u7684\u6570\u636e\u8d85\u8fc7\u9608\u503c"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mbridge/msdk/foundation/db/BatchReportDao;->deleteBatchReportMessagesByTimestamp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    goto :goto_5

    :goto_4
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    throw v0

    :cond_2
    :goto_5
    monitor-exit p1

    return-void

    :goto_6
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6279\u91cf\u4e0a\u62a5\u6210\u529f"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/foundation/same/report/e;->a(Lcom/mbridge/msdk/foundation/same/report/e;ILjava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object p1

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/db/BatchReportDao;->deleteBatchReportMessagesByTimestamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
