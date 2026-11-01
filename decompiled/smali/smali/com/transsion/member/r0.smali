.class public final synthetic Lcom/transsion/member/r0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/member/MemberProvider;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/r0;->a:Lcom/transsion/member/MemberProvider;

    iput-object p2, p0, Lcom/transsion/member/r0;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/r0;->a:Lcom/transsion/member/MemberProvider;

    iget-object v1, p0, Lcom/transsion/member/r0;->b:Lkotlin/jvm/functions/Function0;

    check-cast p1, Lcom/transsion/memberapi/MemberCheckResult;

    invoke-static {v0, v1, p1}, Lcom/transsion/member/MemberProvider$checkShowAdState$1;->a(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberCheckResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
