.class public final synthetic Lcom/transsion/member/dialog/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lwm/f;


# direct methods
.method public synthetic constructor <init>(Lwm/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/dialog/g;->a:Lwm/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/dialog/g;->a:Lwm/f;

    check-cast p1, Lcom/transsion/memberapi/AllMemberRightsData;

    invoke-static {v0, p1}, Lcom/transsion/member/dialog/MemberBasicDialog;->q0(Lwm/f;Lcom/transsion/memberapi/AllMemberRightsData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
