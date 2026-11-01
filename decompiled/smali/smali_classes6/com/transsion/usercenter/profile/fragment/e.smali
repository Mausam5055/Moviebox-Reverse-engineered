.class public final synthetic Lcom/transsion/usercenter/profile/fragment/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lfw/q0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Ljava/util/List;Lfw/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/fragment/e;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/usercenter/profile/fragment/e;->c:Lfw/q0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/fragment/e;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/usercenter/profile/fragment/e;->c:Lfw/q0;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->o0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Ljava/util/List;Lfw/q0;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
