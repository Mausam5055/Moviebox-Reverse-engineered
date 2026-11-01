.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->z0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->F0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->A0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Ljava/lang/String;)Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->F0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->A0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Ljava/lang/String;)Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->z0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->F0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->A0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Ljava/lang/String;)Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
