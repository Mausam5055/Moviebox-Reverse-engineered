.class public final synthetic Lcom/transsion/usercenter/setting/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/setting/SettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/setting/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/l;->a:Lcom/transsion/usercenter/setting/SettingActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/l;->a:Lcom/transsion/usercenter/setting/SettingActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/usercenter/setting/SettingActivity;->i0(Lcom/transsion/usercenter/setting/SettingActivity;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
