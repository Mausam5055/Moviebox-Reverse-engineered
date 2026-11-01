.class public final synthetic Lcom/transsion/member/dialog/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/dialog/a;->a:Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/dialog/a;->a:Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;

    check-cast p1, Lcom/transsion/memberapi/MemberCheckResult;

    invoke-static {v0, p1}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->a(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lcom/transsion/memberapi/MemberCheckResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
