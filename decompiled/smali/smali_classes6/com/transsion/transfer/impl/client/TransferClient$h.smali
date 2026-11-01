.class public final Lcom/transsion/transfer/impl/client/TransferClient$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/impl/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/client/TransferClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/client/TransferClient;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/client/TransferClient;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;JJ)V
    .locals 8

    const-string v0, "remoteFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lmv/a;->a:Lmv/a;

    invoke-virtual {v0}, Lmv/a;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    invoke-virtual {v1, p2, p3}, Lcom/transsion/transfer/impl/entity/FileData;->setDownloadSize(J)V

    invoke-virtual {v1, p4, p5}, Lcom/transsion/transfer/impl/entity/FileData;->setFileSize(J)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/transfer/impl/f;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/transsion/transfer/impl/f;->B(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public I(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const-string v1, "remoteFilePath"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lmv/a;->a:Lmv/a;

    invoke-virtual {v1}, Lmv/a;->d()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v3}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    const/4 v13, 0x7

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    move-result v1

    if-eq v1, v13, :cond_2

    sget-object v1, Lcom/transsion/transfer/impl/entity/FileData;->Companion:Lcom/transsion/transfer/impl/entity/FileData$a;

    invoke-virtual {v1, v12}, Lcom/transsion/transfer/impl/entity/FileData$a;->a(Lcom/transsion/transfer/impl/TaskState;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    move-wide/from16 v14, p3

    invoke-virtual {v2, v14, v15}, Lcom/transsion/transfer/impl/entity/FileData;->setDownloadSize(J)V

    move-wide/from16 v8, p5

    invoke-virtual {v2, v8, v9}, Lcom/transsion/transfer/impl/entity/FileData;->setFileSize(J)V

    goto :goto_1

    :cond_2
    move-wide/from16 v14, p3

    move-wide/from16 v8, p5

    :goto_1
    iget-object v1, v0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-static {v1}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/impl/f;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/transsion/transfer/impl/f;->I(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    move-wide/from16 v8, p5

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/transsion/transfer/impl/TaskState;->SPACE_LIMIT:Lcom/transsion/transfer/impl/TaskState;

    if-ne v12, v1, :cond_4

    iget-object v1, v0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-static {v1, v11, v13}, Lcom/transsion/transfer/impl/client/TransferClient;->J(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public M()V
    .locals 4

    sget-object v0, Lmv/a;->a:Lmv/a;

    invoke-virtual {v0}, Lmv/a;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/impl/f;

    invoke-interface {v1}, Lcom/transsion/transfer/impl/f;->M()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public j(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/impl/f;

    invoke-interface {v1, p1}, Lcom/transsion/transfer/impl/f;->j(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    const-string v0, "remoteFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/impl/f;

    invoke-interface {v1, p1}, Lcom/transsion/transfer/impl/f;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
