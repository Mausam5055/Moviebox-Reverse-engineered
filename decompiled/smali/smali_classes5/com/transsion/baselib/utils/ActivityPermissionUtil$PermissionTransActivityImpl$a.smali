.class public final Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;
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

    invoke-direct {p0}, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;->d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method

.method private static final d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 1

    const-string v0, "extra_action"

    invoke-virtual {p3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_action2"

    invoke-virtual {p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_request_code"

    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final b()Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;
    .locals 1

    invoke-static {}, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lak/c;

    invoke-direct {v0, p1, p2, p3}, Lak/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;->b()Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->T(Lcom/blankj/utilcode/util/Utils$b;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V

    return-void
.end method
