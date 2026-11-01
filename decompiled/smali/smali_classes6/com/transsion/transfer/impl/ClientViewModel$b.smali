.class public final Lcom/transsion/transfer/impl/ClientViewModel$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/impl/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/ClientViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/ClientViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/ClientViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;JJ)V
    .locals 4

    const-string v0, "remoteFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-static {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->i(Lcom/transsion/transfer/impl/ClientViewModel;)Ljv/b;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    new-instance v2, Lkotlin/Triple;

    sget-object v3, Lcom/transsion/transfer/impl/TaskState;->TRANSFERRING:Lcom/transsion/transfer/impl/TaskState;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v2, v3, p2, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljv/b;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public I(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V
    .locals 13

    move-object v9, p1

    move-object v10, p2

    const-string v0, "remoteFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/transfer/impl/TaskState;->CONNECTING:Lcom/transsion/transfer/impl/TaskState;

    if-ne v10, v0, :cond_1

    sget-object v0, Lkv/b;->a:Lkv/b;

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v11, p5

    invoke-virtual {v0, p1, v11, v12, v1}, Lkv/b;->h(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p5

    sget-object v0, Lcom/transsion/transfer/impl/TaskState;->FINISH:Lcom/transsion/transfer/impl/TaskState;

    if-ne v10, v0, :cond_2

    sget-object v0, Lkv/b;->a:Lkv/b;

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v8}, Lkv/b;->g(Ljava/lang/String;ZLjava/lang/String;JJLjava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/transsion/transfer/impl/TaskState;->ERROR:Lcom/transsion/transfer/impl/TaskState;

    if-eq v10, v0, :cond_3

    sget-object v0, Lcom/transsion/transfer/impl/TaskState;->NO_FILE:Lcom/transsion/transfer/impl/TaskState;

    if-ne v10, v0, :cond_0

    :cond_3
    sget-object v0, Lkv/b;->a:Lkv/b;

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const-string v3, "file no found"

    move-object v1, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v8}, Lkv/b;->g(Ljava/lang/String;ZLjava/lang/String;JJLjava/lang/String;)V

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-static {v1}, Lcom/transsion/transfer/impl/ClientViewModel;->i(Lcom/transsion/transfer/impl/ClientViewModel;)Ljv/b;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    new-instance v3, Lkotlin/Triple;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, p2, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljv/b;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public M()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-static {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->h(Lcom/transsion/transfer/impl/ClientViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v0, Lkv/b;->a:Lkv/b;

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v0, v2, v1}, Lkv/b;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-static {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->g(Lcom/transsion/transfer/impl/ClientViewModel;)Ljv/b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljv/b;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 3

    const-string v0, "remoteFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-static {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->i(Lcom/transsion/transfer/impl/ClientViewModel;)Ljv/b;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljv/b;->n(Ljava/lang/Object;)V

    return-void
.end method
