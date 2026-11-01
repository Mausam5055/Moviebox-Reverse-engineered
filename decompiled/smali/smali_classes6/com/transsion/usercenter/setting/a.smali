.class public final synthetic Lcom/transsion/usercenter/setting/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/setting/SettingAboutUsActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/a;->a:Lcom/transsion/usercenter/setting/SettingAboutUsActivity;

    iput-boolean p2, p0, Lcom/transsion/usercenter/setting/a;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/setting/a;->a:Lcom/transsion/usercenter/setting/SettingAboutUsActivity;

    iget-boolean v1, p0, Lcom/transsion/usercenter/setting/a;->b:Z

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->e0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;ZLandroid/view/View;)V

    return-void
.end method
