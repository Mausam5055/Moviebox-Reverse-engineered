.class public final synthetic Lcom/transsion/member/dialog/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/member/dialog/MemberProDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/dialog/MemberProDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/dialog/o;->a:Lcom/transsion/member/dialog/MemberProDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/dialog/o;->a:Lcom/transsion/member/dialog/MemberProDialog;

    check-cast p1, Lcom/transsion/memberapi/MemberPriceData;

    invoke-static {v0, p1}, Lcom/transsion/member/dialog/MemberProDialog;->p0(Lcom/transsion/member/dialog/MemberProDialog;Lcom/transsion/memberapi/MemberPriceData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
