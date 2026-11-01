.class public final synthetic Lcom/transsion/home/fragment/tab/l0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/SubTabFragment;

.field public final synthetic b:Lcom/transsion/memberapi/MemberRemindData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/SubTabFragment;Lcom/transsion/memberapi/MemberRemindData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/l0;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/l0;->b:Lcom/transsion/memberapi/MemberRemindData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/l0;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/l0;->b:Lcom/transsion/memberapi/MemberRemindData;

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment;->G0(Lcom/transsion/home/fragment/tab/SubTabFragment;Lcom/transsion/memberapi/MemberRemindData;)V

    return-void
.end method
