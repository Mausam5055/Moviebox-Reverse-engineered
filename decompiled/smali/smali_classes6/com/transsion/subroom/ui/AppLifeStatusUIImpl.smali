.class public final Lcom/transsion/subroom/ui/AppLifeStatusUIImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/net/g;


# annotations
.annotation runtime Lcom/therouter/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/subroom/ui/AppLifeStatusUIImpl;",
        "Lcom/transsion/baselib/net/g;",
        "<init>",
        "()V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "",
        "message",
        "reason",
        "",
        "a",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V",
        "app_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subroom/ui/WarningMessageDialog;->d:Lcom/transsion/subroom/ui/WarningMessageDialog$a;

    invoke-virtual {v0, p2, p3}, Lcom/transsion/subroom/ui/WarningMessageDialog$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subroom/ui/WarningMessageDialog;

    move-result-object p2

    const-string p3, "warning_message"

    invoke-virtual {p2, p1, p3}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
