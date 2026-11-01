.class public final synthetic Lcom/transsion/usercenter/profile/fragment/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/s;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/s;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$g;->e(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    return-void
.end method
