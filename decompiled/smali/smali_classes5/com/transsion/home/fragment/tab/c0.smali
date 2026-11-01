.class public final synthetic Lcom/transsion/home/fragment/tab/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/memberapi/IMemberApi;

.field public final synthetic b:Lcom/transsion/home/fragment/tab/SubTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/memberapi/IMemberApi;Lcom/transsion/home/fragment/tab/SubTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/c0;->a:Lcom/transsion/memberapi/IMemberApi;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/c0;->b:Lcom/transsion/home/fragment/tab/SubTabFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/c0;->a:Lcom/transsion/memberapi/IMemberApi;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/c0;->b:Lcom/transsion/home/fragment/tab/SubTabFragment;

    check-cast p1, Lcom/transsion/memberapi/MemberRemindData;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/tab/SubTabFragment;->F0(Lcom/transsion/memberapi/IMemberApi;Lcom/transsion/home/fragment/tab/SubTabFragment;Lcom/transsion/memberapi/MemberRemindData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
