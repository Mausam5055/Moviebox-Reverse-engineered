.class public final synthetic Lcom/transsion/usercenter/profile/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/ProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/m;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    return-void
.end method


# virtual methods
.method public final onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/m;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    invoke-static {v0, p1, p2}, Lcom/transsion/usercenter/profile/ProfileFragment;->l0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method
