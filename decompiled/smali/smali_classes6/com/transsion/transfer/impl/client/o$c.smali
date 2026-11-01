.class public final Lcom/transsion/transfer/impl/client/o$c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/client/o;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/f;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/client/o;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/client/o;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/impl/entity/FileData;Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "data"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->e(Lcom/transsion/transfer/impl/client/o;)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    sub-long v17, v4, v8

    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/transsion/transfer/impl/client/o;->m(Lcom/transsion/transfer/impl/client/o;Ljava/lang/Long;)V

    if-nez p3, :cond_7

    new-instance v2, Lkotlin/ranges/IntRange;

    const/16 v5, 0xc8

    const/16 v8, 0x12b

    invoke-direct {v2, v5, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    if-eqz v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lkotlin/ranges/IntRange;->o(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v1}, Lcom/transsion/transfer/impl/client/o;->j(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v5}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v2

    :cond_2
    check-cast v4, Lcom/transsion/transfer/impl/entity/FileData;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getFinalFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->j(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->verifyFile()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljv/e;

    invoke-direct {v2, v4}, Ljv/e;-><init>(Lcom/transsion/transfer/impl/entity/FileData;)V

    sget-object v3, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v5, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v3, v5}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v3

    check-cast v3, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v5, Ljv/e;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "getName(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v2, v6, v7}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->a(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->g(Lcom/transsion/transfer/impl/client/o;)Lcom/transsion/transfer/impl/f;

    move-result-object v10

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/transsion/transfer/impl/TaskState;->FINISH:Lcom/transsion/transfer/impl/TaskState;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    move-result-wide v15

    const/16 v19, 0x0

    invoke-interface/range {v10 .. v19}, Lcom/transsion/transfer/impl/f;->I(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v1}, Lcom/transsion/transfer/impl/client/o;->b(Lcom/transsion/transfer/impl/client/o;)Lkotlin/jvm/functions/Function2;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->a(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v3}, Lcom/transsion/transfer/impl/client/o;->k(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_4
    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->h(Lcom/transsion/transfer/impl/client/o;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->g(Lcom/transsion/transfer/impl/client/o;)Lcom/transsion/transfer/impl/f;

    move-result-object v10

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/transsion/transfer/impl/TaskState;->ERROR:Lcom/transsion/transfer/impl/TaskState;

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getDownloadedSize()J

    move-result-wide v13

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    move-result-wide v15

    const-string v19, "verify file failed"

    invoke-interface/range {v10 .. v19}, Lcom/transsion/transfer/impl/f;->I(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke: verify file fail\uff0cfileSize:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", saveFile.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", and delete cache file ,and retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->clearFile()V

    goto/16 :goto_8

    :cond_6
    iget-object v1, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v1}, Lcom/transsion/transfer/impl/client/o;->h(Lcom/transsion/transfer/impl/client/o;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v4}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v5

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v1}, Lcom/transsion/transfer/impl/client/o;->j(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_7
    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->j(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_9
    move-object v5, v4

    :goto_3
    check-cast v5, Lcom/transsion/transfer/impl/entity/FileData;

    if-eqz v5, :cond_d

    iget-object v2, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->j(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->d(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/transsion/transfer/impl/client/o;->g(Lcom/transsion/transfer/impl/client/o;)Lcom/transsion/transfer/impl/f;

    move-result-object v10

    invoke-virtual {v5}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v11

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_b

    sget-object v2, Lcom/transsion/transfer/impl/TaskState;->NO_FILE:Lcom/transsion/transfer/impl/TaskState;

    :goto_4
    move-object v12, v2

    goto :goto_6

    :cond_b
    :goto_5
    sget-object v2, Lcom/transsion/transfer/impl/TaskState;->ERROR:Lcom/transsion/transfer/impl/TaskState;

    goto :goto_4

    :goto_6
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v5}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    move-result-wide v15

    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_c
    move-object v2, v4

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCode:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v10 .. v19}, Lcom/transsion/transfer/impl/f;->I(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    :cond_d
    if-eqz p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    if-eqz p3, :cond_f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke: send file error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", skip it and send next"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_8
    iget-object v1, v0, Lcom/transsion/transfer/impl/client/o$c;->a:Lcom/transsion/transfer/impl/client/o;

    invoke-static {v1}, Lcom/transsion/transfer/impl/client/o;->l(Lcom/transsion/transfer/impl/client/o;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/transfer/impl/entity/FileData;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Exception;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/client/o$c;->a(Lcom/transsion/transfer/impl/entity/FileData;Ljava/lang/Integer;Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
