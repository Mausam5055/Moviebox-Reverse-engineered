.class public final synthetic Lcom/transsion/usercenter/profile/fragment/w;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/adapter/c;

.field public final synthetic b:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/adapter/c;Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/w;->a:Lcom/transsion/usercenter/profile/adapter/c;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/fragment/w;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/w;->a:Lcom/transsion/usercenter/profile/adapter/c;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/fragment/w;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;->a0(Lcom/transsion/usercenter/profile/adapter/c;Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
