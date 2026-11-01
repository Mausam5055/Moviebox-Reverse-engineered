.class public final Lcom/transsion/member/MemberFragment$startPay$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/payment/lib/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberFragment;->q1(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/MemberFragment;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    iput-object p2, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9

    sget-object p3, Llg/a;->a:Llg/a$a;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Payment failed "

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

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 p4, -0x1e

    if-ne p3, p4, :cond_2

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p2, :cond_7

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    iget-object p2, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    sget p3, Lcom/transsion/member/R$string;->member_pay_pending:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v2}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 p4, 0x3eb

    if-ne p3, p4, :cond_5

    iget-object p3, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    iget-object p4, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->b:Ljava/lang/String;

    invoke-static {p3, p4, p1, p2}, Lcom/transsion/member/MemberFragment;->E0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    iget-object p2, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_4

    sget p3, Lcom/transsion/member/R$string;->member_pay_processing:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p1, v2}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-virtual {p1}, Lcom/transsion/member/MemberFragment;->L0()V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p3, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    iget-object p4, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->b:Ljava/lang/String;

    invoke-static {p3, p4, p1, p2}, Lcom/transsion/member/MemberFragment;->E0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-virtual {p1}, Lcom/transsion/member/MemberFragment;->L0()V

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-direct {v6, p1, v2}, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;-><init>(Lcom/transsion/member/MemberFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_7
    :goto_2
    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-virtual {p1}, Lcom/transsion/member/MemberFragment;->showLoading()V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string p1, "balance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Payment succeed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-static {p2}, Lcom/transsion/member/MemberFragment;->A0(Lcom/transsion/member/MemberFragment;)Lcom/transsion/memberapi/MemberDetail;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberInfo;->isActive()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-static {p2}, Lcom/transsion/member/MemberFragment;->A0(Lcom/transsion/member/MemberFragment;)Lcom/transsion/memberapi/MemberDetail;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    move-result p2

    if-ne p2, v1, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-eqz p2, :cond_2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after pay isPremium:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0, v1, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-static {p2, v3}, Lcom/transsion/member/MemberFragment;->G0(Lcom/transsion/member/MemberFragment;Z)V

    const-string p2, "Should refresh purchased info"

    invoke-static {p1, p2, v0, v1, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    iget-object p2, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/member/MemberFragment;->F0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsion/member/MemberFragment$startPay$1$1$success$1;

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-direct {v6, p1, v2}, Lcom/transsion/member/MemberFragment$startPay$1$1$success$1;-><init>(Lcom/transsion/member/MemberFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    new-instance v6, Lcom/transsion/member/MemberFragment$startPay$1$1$success$2;

    invoke-direct {v6, p3, v2}, Lcom/transsion/member/MemberFragment$startPay$1$1$success$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-virtual {p1}, Lcom/transsion/member/MemberFragment;->L0()V

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsion/member/MemberFragment$startPay$1$1$success$4;

    iget-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1;->a:Lcom/transsion/member/MemberFragment;

    invoke-direct {v6, p1, v2}, Lcom/transsion/member/MemberFragment$startPay$1$1$success$4;-><init>(Lcom/transsion/member/MemberFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
