.class public final Lcom/transsion/transfer/wifi/permission/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/transfer/wifi/permission/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/wifi/permission/d;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/permission/d;-><init>()V

    sput-object v0, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private final d(Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "getString(...)"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    sget v5, Lcom/transsion/transfer/R$drawable;->transfer_wifi_permissions_camera:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_camera_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_camera_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_DENIED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->wifi_setting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v9, "android.permission.CAMERA"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_5

    new-instance v1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    sget v5, Lcom/transsion/transfer/R$drawable;->transfer_wifi_permissions_devices:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_device_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_device_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_DENIED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->wifi_setting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v9, "android.permission.NEARBY_WIFI_DEVICES"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "mb.permission.WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    sget v5, Lcom/transsion/transfer/R$drawable;->transfer_wifi_permissions_wifi:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_wifi_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_wifi_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_DENIED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->wifi_setting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v9, "mb.permission.WIFI"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    sget v5, Lcom/transsion/transfer/R$drawable;->transfer_wifi_permissions_location:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_location_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_location_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_DENIED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->wifi_setting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    sget v5, Lcom/transsion/transfer/R$drawable;->transfer_wifi_permissions_write_settings:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_write_settings:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_permissions_write_settings_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_DENIED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/transfer/R$string;->wifi_setting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v9, "android.permission.WRITE_SETTINGS"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7be1381d -> :sswitch_4
        -0x70918bc1 -> :sswitch_3
        -0x480c7a85 -> :sswitch_2
        -0x363647ed -> :sswitch_1
        0x1b9efa65 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.CAMERA"

    invoke-direct {p0, v1}, Lcom/transsion/transfer/wifi/permission/d;->d(Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/permission/d;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    sget-object v3, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    invoke-virtual {v2}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getPermission()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/transfer/wifi/permission/d;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_GRANTED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-virtual {v2, v3}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->setState(Lcom/transsion/transfer/wifi/bean/PermissionState;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mb.permission.WIFI"

    invoke-direct {p0, v1}, Lcom/transsion/transfer/wifi/permission/d;->d(Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v2}, Lcom/transsion/transfer/wifi/permission/d;->d(Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v2}, Lcom/transsion/transfer/wifi/permission/d;->d(Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v2, 0x21

    if-lt v1, v2, :cond_3

    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-direct {p0, v1}, Lcom/transsion/transfer/wifi/permission/d;->d(Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    sget-object v3, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    invoke-virtual {v2}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getPermission()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/transfer/wifi/permission/d;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_GRANTED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-virtual {v2, v3}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->setState(Lcom/transsion/transfer/wifi/bean/PermissionState;)V

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mb.permission.WIFI"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/permission/d;->a(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/wifi/permission/d;->b(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final g(Ljava/util/List;)Z
    .locals 2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    sget-object v1, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/transfer/wifi/permission/d;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final h(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final i(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroidx/core/app/ActivityCompat;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
