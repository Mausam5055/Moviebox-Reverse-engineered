.class public final Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/payment/lib/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    sget-object p3, Lok/c;->a:Lok/c;

    iget-object p4, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-virtual {p4}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> error(\u652f\u4ed8\u5931\u8d25) --> Payment failed "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lok/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string p1, "balance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lok/c;->a:Lok/c;

    iget-object p2, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-virtual {p2}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> success(\u652f\u4ed8\u6210\u529f) --> 1.\u6fc0\u52b1\u4efb\u52a1\u5b8c\u6210 -- 2. \u652f\u4ed8\u6210\u529f\uff0c\u8bf7\u6c42\u5927\u8f6c\u76d8\u4fe1\u606f"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lok/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->s0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)Lok/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lok/b;->onSuccess()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1$success$1;

    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    const/4 p2, 0x0

    invoke-direct {v3, p3, p1, p2}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1$success$1;-><init>(Ljava/lang/String;Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
