.class public final synthetic Lpw/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/kids/AccountSwitchDialog;

.field public final synthetic b:Lcom/transsion/baselib/kids/KidsProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Lcom/transsion/baselib/kids/KidsProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw/g;->a:Lcom/transsion/usercenter/kids/AccountSwitchDialog;

    iput-object p2, p0, Lpw/g;->b:Lcom/transsion/baselib/kids/KidsProfile;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lpw/g;->a:Lcom/transsion/usercenter/kids/AccountSwitchDialog;

    iget-object v1, p0, Lpw/g;->b:Lcom/transsion/baselib/kids/KidsProfile;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->e0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Lcom/transsion/baselib/kids/KidsProfile;Landroid/view/View;)V

    return-void
.end method
