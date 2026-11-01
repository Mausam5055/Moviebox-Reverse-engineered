.class public final synthetic Lcom/transsion/member/dialog/w;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/CheckInView;

.field public final synthetic b:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/CheckInView;Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/dialog/w;->a:Lcom/transsion/member/view/CheckInView;

    iput-object p2, p0, Lcom/transsion/member/dialog/w;->b:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/dialog/w;->a:Lcom/transsion/member/view/CheckInView;

    iget-object v1, p0, Lcom/transsion/member/dialog/w;->b:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->n0(Lcom/transsion/member/view/CheckInView;Lcom/transsion/member/dialog/MemberTaskCheckInDialog;II)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
