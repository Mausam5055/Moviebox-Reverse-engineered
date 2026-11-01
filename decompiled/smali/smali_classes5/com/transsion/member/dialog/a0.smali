.class public final synthetic Lcom/transsion/member/dialog/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/dialog/a0;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/dialog/a0;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    check-cast p1, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;

    invoke-static {v0, p1}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->p0(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
