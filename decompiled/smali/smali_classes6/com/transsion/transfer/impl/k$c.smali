.class public final Lcom/transsion/transfer/impl/k$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/impl/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/k;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/k;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/k;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/k$c;->a:Lcom/transsion/transfer/impl/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V
    .locals 3

    const-string v0, "clientIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/k$c;->a:Lcom/transsion/transfer/impl/k;

    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->i(Lcom/transsion/transfer/impl/k;)Ljv/b;

    move-result-object v0

    new-instance v1, Lkotlin/Triple;

    new-instance v2, Lkotlin/Triple;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-direct {v2, p3, p4, p5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1, p2, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljv/b;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clientIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/k$c;->a:Lcom/transsion/transfer/impl/k;

    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->d(Lcom/transsion/transfer/impl/k;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4

    const-string v0, "clientIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/k$c;->a:Lcom/transsion/transfer/impl/k;

    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->i(Lcom/transsion/transfer/impl/k;)Ljv/b;

    move-result-object v0

    new-instance v1, Lkotlin/Triple;

    new-instance v2, Lkotlin/Triple;

    sget-object v3, Lcom/transsion/transfer/impl/TaskState;->TRANSFERRING:Lcom/transsion/transfer/impl/TaskState;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {v2, v3, p3, p4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1, p2, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljv/b;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clientIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    const-string v0, "clientIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/k$c;->a:Lcom/transsion/transfer/impl/k;

    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->h(Lcom/transsion/transfer/impl/k;)Ljv/b;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljv/b;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 3

    const-string v0, "clientIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/k$c;->a:Lcom/transsion/transfer/impl/k;

    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->e(Lcom/transsion/transfer/impl/k;)Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method
