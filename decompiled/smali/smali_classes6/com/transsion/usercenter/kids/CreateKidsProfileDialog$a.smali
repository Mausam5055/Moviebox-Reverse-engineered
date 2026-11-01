.class public final Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;ZZZILjava/lang/Object;)Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;->a(ZZZ)Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ZZZ)Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;
    .locals 3

    new-instance v0, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    invoke-direct {v0}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_show_switch_on_done"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "arg_record_dismiss_on_close"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "arg_auto_show_soft_input"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
