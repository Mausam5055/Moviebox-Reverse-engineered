.class public final synthetic Lcom/transsion/usercenter/profile/fragment/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/l;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/l;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    check-cast p1, Lcom/transsion/publish/bean/PublishResult;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->v0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Lcom/transsion/publish/bean/PublishResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
