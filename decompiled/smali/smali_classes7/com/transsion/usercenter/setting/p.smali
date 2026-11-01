.class public final synthetic Lcom/transsion/usercenter/setting/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/setting/SettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/setting/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/p;->a:Lcom/transsion/usercenter/setting/SettingActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/p;->a:Lcom/transsion/usercenter/setting/SettingActivity;

    invoke-static {v0}, Lcom/transsion/usercenter/setting/SettingActivity;->s0(Lcom/transsion/usercenter/setting/SettingActivity;)Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;

    move-result-object v0

    return-object v0
.end method
