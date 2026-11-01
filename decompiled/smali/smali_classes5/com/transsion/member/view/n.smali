.class public final synthetic Lcom/transsion/member/view/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/MemberBasicView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/MemberBasicView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/n;->a:Lcom/transsion/member/view/MemberBasicView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/n;->a:Lcom/transsion/member/view/MemberBasicView;

    invoke-static {v0}, Lcom/transsion/member/view/MemberBasicView$startPay$1$error$1;->d(Lcom/transsion/member/view/MemberBasicView;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
