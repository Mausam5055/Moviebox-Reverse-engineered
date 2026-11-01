.class public final synthetic Lcom/transsion/usercenter/setting/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/setting/SettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/setting/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/h;->a:Lcom/transsion/usercenter/setting/SettingActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/h;->a:Lcom/transsion/usercenter/setting/SettingActivity;

    check-cast p1, Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/setting/SettingActivity;->m0(Lcom/transsion/usercenter/setting/SettingActivity;Lcom/transsion/usercenter/profile/bean/ProfileInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
