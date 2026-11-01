.class public final Lcom/transsion/usercenter/kids/PinInputDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/kids/PinInputDialog;
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

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinInputDialog$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/usercenter/kids/PinInputDialog$a;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->a(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/PinInputDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/usercenter/kids/PinInputDialog$a;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->c(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/PinInputDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/PinInputDialog;
    .locals 2

    const-string v0, "onPinSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/usercenter/kids/PinInputDialog;->h0(Lkotlin/jvm/functions/Function1;)V

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/transsion/usercenter/kids/PinInputDialog;->i0(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;->g0(Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lcom/transsion/usercenter/kids/PinInputDialog;

    invoke-direct {p2}, Lcom/transsion/usercenter/kids/PinInputDialog;-><init>()V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "arg_mode"

    const-string v1, "SET"

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "arg_is_reset"

    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p2
.end method

.method public final c(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/kids/PinInputDialog;
    .locals 3

    const-string v0, "kidsId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onVerified"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;->i0(Lkotlin/jvm/functions/Function0;)V

    const/4 p3, 0x0

    invoke-static {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;->h0(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;->g0(Lkotlin/jvm/functions/Function0;)V

    new-instance p3, Lcom/transsion/usercenter/kids/PinInputDialog;

    invoke-direct {p3}, Lcom/transsion/usercenter/kids/PinInputDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_mode"

    const-string v2, "VERIFY"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "arg_kids_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "arg_show_forget_pin"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p3
.end method
