.class public final Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lfw/k1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lfw/k1;",
        "<init>",
        "()V",
        "",
        "g0",
        "f0",
        "()Lfw/k1;",
        "",
        "isStatusDark",
        "()Z",
        "isTranslucent",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/os/Bundle;)V",
        "a",
        "Z",
        "firstStatus",
        "b",
        "shareData",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;->a:Z

    iput-boolean v0, p0, Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;->b:Z

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;->h0(Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;Landroid/view/View;)V

    return-void
.end method

.method private final native g0()V
.end method

.method private static final native h0(Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;Landroid/view/View;)V
.end method


# virtual methods
.method public native f0()Lfw/k1;
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;->f0()Lfw/k1;

    move-result-object v0

    return-object v0
.end method

.method public native initView(Landroid/os/Bundle;)V
.end method

.method public native isStatusDark()Z
.end method

.method public native isTranslucent()Z
.end method
