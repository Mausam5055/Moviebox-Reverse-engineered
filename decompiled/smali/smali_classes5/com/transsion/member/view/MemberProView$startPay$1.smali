.class public final Lcom/transsion/member/view/MemberProView$startPay$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/payment/lib/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/view/MemberProView;->w(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/view/MemberProView;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/member/view/MemberProView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/view/MemberProView$startPay$1;->a:Lcom/transsion/member/view/MemberProView;

    iput-object p2, p0, Lcom/transsion/member/view/MemberProView$startPay$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9

    sget-object p3, Llg/a;->a:Llg/a$a;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MemberProView payment failed "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p3, p4, v0, v1, v2}, Llg/a$a;->m(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p3, p0, Lcom/transsion/member/view/MemberProView$startPay$1;->a:Lcom/transsion/member/view/MemberProView;

    iget-object p4, p0, Lcom/transsion/member/view/MemberProView$startPay$1;->b:Ljava/lang/String;

    invoke-static {p3, p4, p1, p2}, Lcom/transsion/member/view/MemberProView;->access$reportPurchaseFailure(Lcom/transsion/member/view/MemberProView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;

    iget-object p3, p0, Lcom/transsion/member/view/MemberProView$startPay$1;->a:Lcom/transsion/member/view/MemberProView;

    invoke-direct {v6, p3, p1, p2, v2}, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;-><init>(Lcom/transsion/member/view/MemberProView;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string p1, "balance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MemberProView payment succeed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/member/view/MemberProView$startPay$1;->a:Lcom/transsion/member/view/MemberProView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/member/view/MemberProView;->access$setShouldRefreshPurchasedInfo$p(Lcom/transsion/member/view/MemberProView;Z)V

    iget-object p1, p0, Lcom/transsion/member/view/MemberProView$startPay$1;->a:Lcom/transsion/member/view/MemberProView;

    iget-object p2, p0, Lcom/transsion/member/view/MemberProView$startPay$1;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/member/view/MemberProView;->access$reportPurchaseSuccess(Lcom/transsion/member/view/MemberProView;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/member/view/MemberProView$startPay$1$success$1;

    iget-object p1, p0, Lcom/transsion/member/view/MemberProView$startPay$1;->a:Lcom/transsion/member/view/MemberProView;

    invoke-direct {v5, p1, v1}, Lcom/transsion/member/view/MemberProView$startPay$1$success$1;-><init>(Lcom/transsion/member/view/MemberProView;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
