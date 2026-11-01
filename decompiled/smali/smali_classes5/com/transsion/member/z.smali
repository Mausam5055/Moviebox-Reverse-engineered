.class public final synthetic Lcom/transsion/member/z;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/member/MemberFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/MemberFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/z;->a:Lcom/transsion/member/MemberFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/z;->a:Lcom/transsion/member/MemberFragment;

    invoke-static {v0}, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->d(Lcom/transsion/member/MemberFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
