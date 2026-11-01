.class public final synthetic Lcom/transsion/usercenter/edit/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

.field public final synthetic b:Lcom/transsion/baselib/kids/KidsProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Lcom/transsion/baselib/kids/KidsProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/edit/j;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    iput-object p2, p0, Lcom/transsion/usercenter/edit/j;->b:Lcom/transsion/baselib/kids/KidsProfile;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/edit/j;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    iget-object v1, p0, Lcom/transsion/usercenter/edit/j;->b:Lcom/transsion/baselib/kids/KidsProfile;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->o0(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Lcom/transsion/baselib/kids/KidsProfile;Landroid/view/View;)V

    return-void
.end method
