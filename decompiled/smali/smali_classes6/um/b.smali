.class public final synthetic Lum/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lum/c;

.field public final synthetic b:Lcom/transsion/memberapi/MemberTaskItem;

.field public final synthetic c:Lcom/transsion/member/view/CheckInView;


# direct methods
.method public synthetic constructor <init>(Lum/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lum/b;->a:Lum/c;

    iput-object p2, p0, Lum/b;->b:Lcom/transsion/memberapi/MemberTaskItem;

    iput-object p3, p0, Lum/b;->c:Lcom/transsion/member/view/CheckInView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lum/b;->a:Lum/c;

    iget-object v1, p0, Lum/b;->b:Lcom/transsion/memberapi/MemberTaskItem;

    iget-object v2, p0, Lum/b;->c:Lcom/transsion/member/view/CheckInView;

    check-cast p1, Lkotlin/Pair;

    invoke-static {v0, v1, v2, p1}, Lum/c;->z(Lum/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
