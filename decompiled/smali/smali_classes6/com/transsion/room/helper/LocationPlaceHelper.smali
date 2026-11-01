.class public final Lcom/transsion/room/helper/LocationPlaceHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/room/helper/LocationPlaceHelper;

.field private static b:Lcom/google/android/libraries/places/api/net/PlacesClient;

.field private static c:Lcom/google/android/gms/location/LocationCallback;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/room/helper/LocationPlaceHelper;

    invoke-direct {v0}, Lcom/transsion/room/helper/LocationPlaceHelper;-><init>()V

    sput-object v0, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A(Lcom/google/android/gms/location/FusedLocationProviderClient;)V
    .locals 5

    sget v0, Lcom/transsion/room/helper/LocationPlaceHelper;->d:I

    const/4 v1, 0x3

    const-string v2, "LocationP"

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "Location--update---- removeLocationUpdates, \u8d85\u8fc7\u4e0a\u96503\u6b21\uff0c\u4e0d\u518d\u79fb\u9664"

    invoke-virtual {p1, v2, v0, v3}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    add-int/2addr v0, v3

    sput v0, Lcom/transsion/room/helper/LocationPlaceHelper;->d:I

    sget-object v0, Lcom/transsion/room/helper/LocationPlaceHelper;->c:Lcom/google/android/gms/location/LocationCallback;

    if-eqz v0, :cond_1

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v4, "Location--update---- removeLocationUpdates"

    invoke-virtual {v1, v2, v4, v3}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/transsion/room/helper/k;

    invoke-direct {v1, p1}, Lcom/transsion/room/helper/k;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method

.method private static final B(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 12

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/transsion/room/helper/LocationPlaceHelper;->c:Lcom/google/android/gms/location/LocationCallback;

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocationP"

    const-string v2, "Location--update----\u6210\u529f\u79fb\u9664\u76d1\u542c"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "LocationP"

    const-string v8, "Location--update----\u79fb\u9664\u76d1\u542c\u5931\u8d25"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    invoke-direct {p1, p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->A(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/room/helper/LocationPlaceHelper;->w(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/helper/LocationPlaceHelper;->B(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper;->o(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->z(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper;->v(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    return-void
.end method

.method public static synthetic f(ZLcf/f;Ljava/util/List;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/room/helper/LocationPlaceHelper;->u(ZLcf/f;Ljava/util/List;ZZ)V

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/room/helper/LocationPlaceHelper;DDLandroid/location/Address;)Lcom/transsion/room/api/bean/LocationPlace;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/room/helper/LocationPlaceHelper;->l(DDLandroid/location/Address;)Lcom/transsion/room/api/bean/LocationPlace;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/room/helper/LocationPlaceHelper;DD)Landroid/location/Address;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/room/helper/LocationPlaceHelper;->m(DD)Landroid/location/Address;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i()Lcom/google/android/libraries/places/api/net/PlacesClient;
    .locals 1

    sget-object v0, Lcom/transsion/room/helper/LocationPlaceHelper;->b:Lcom/google/android/libraries/places/api/net/PlacesClient;

    return-object v0
.end method

.method public static final synthetic j(I)V
    .locals 0

    sput p0, Lcom/transsion/room/helper/LocationPlaceHelper;->d:I

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/room/helper/LocationPlaceHelper;Lcom/google/android/gms/location/FusedLocationProviderClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/room/helper/LocationPlaceHelper;->A(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    return-void
.end method

.method private final l(DDLandroid/location/Address;)Lcom/transsion/room/api/bean/LocationPlace;
    .locals 20

    move-object/from16 v0, p5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    const/4 v10, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v10

    :goto_3
    if-eqz v4, :cond_9

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move-object v5, v4

    goto :goto_6

    :cond_6
    :goto_5
    const-string v4, "-"

    goto :goto_4

    :goto_6
    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7

    :cond_7
    move-object v4, v3

    :goto_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_8

    :cond_8
    move v4, v1

    :goto_8
    const/4 v5, 0x5

    if-ge v4, v5, :cond_9

    move v4, v10

    goto :goto_9

    :cond_9
    move v4, v1

    :goto_9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_a
    move-object v5, v3

    :goto_a
    if-eqz v5, :cond_c

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getLocality(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_b

    move v5, v10

    goto :goto_b

    :cond_b
    move v5, v1

    :goto_b
    if-eqz v5, :cond_c

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_d
    move-object v5, v3

    :goto_c
    if-eqz v5, :cond_f

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getSubLocality(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_e

    move v5, v10

    goto :goto_d

    :cond_e
    move v5, v1

    :goto_d
    if-eqz v5, :cond_f

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :cond_10
    move-object v5, v3

    :goto_e
    if-eqz v5, :cond_12

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getThoroughfare(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_11

    move v5, v10

    goto :goto_f

    :cond_11
    move v5, v1

    :goto_f
    if-eqz v5, :cond_12

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz v0, :cond_13

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    :cond_13
    move-object v5, v3

    :goto_10
    if-eqz v5, :cond_15

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getFeatureName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_14

    move v1, v10

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v4, :cond_16

    const/16 v18, 0x3e

    const/16 v19, 0x0

    const-string v12, " "

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_16
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->U(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, " "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    new-instance v11, Lcom/transsion/room/api/bean/LocationPlace;

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/transsion/room/api/bean/LocationPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v1}, Lcom/transsion/room/api/bean/LocationPlace;->setName(Ljava/lang/String;)V

    const-string v1, "<1m"

    invoke-virtual {v11, v1}, Lcom/transsion/room/api/bean/LocationPlace;->setDistance(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Lcom/transsion/room/api/bean/LocationPlace;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setLocationAddress(Landroid/location/Address;)V

    if-eqz v0, :cond_17

    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    :cond_17
    invoke-virtual {v11, v3}, Lcom/transsion/room/api/bean/LocationPlace;->setCountryCode(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setLat(Ljava/lang/Double;)V

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setLon(Ljava/lang/Double;)V

    return-object v11
.end method

.method private final m(DD)Landroid/location/Address;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :goto_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Location-------------- ll2address error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LocationP"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v0
.end method

.method private static final o(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    const-string v1, "task"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "LocationP"

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location--------------1 success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v10

    new-instance v13, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;

    const/4 v11, 0x0

    move-object v0, v13

    move-wide v1, v6

    move-wide v3, v8

    move-object/from16 v5, p1

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;-><init>(DDLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v2, "Location-------------- fail: location null---do update"

    invoke-virtual {v1, v4, v2, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    invoke-direct {v1, v0, v5}, Lcom/transsion/room/helper/LocationPlaceHelper;->y(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Location-------------- fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", do update"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    invoke-direct {v1, v0, v5}, Lcom/transsion/room/helper/LocationPlaceHelper;->y(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method private final q(DDLkotlin/jvm/functions/Function1;)V
    .locals 17

    move-object/from16 v0, p5

    invoke-direct/range {p0 .. p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->r()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/api/Places;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v3, "getNearbyPlaces initialize place"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "LocationP"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/libraries/places/api/Places;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->b:Lcom/google/android/libraries/places/api/net/PlacesClient;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/api/Places;->createClient(Landroid/content/Context;)Lcom/google/android/libraries/places/api/net/PlacesClient;

    move-result-object v1

    sput-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->b:Lcom/google/android/libraries/places/api/net/PlacesClient;

    :cond_2
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/libraries/places/api/model/Place$Field;

    sget-object v4, Lcom/google/android/libraries/places/api/model/Place$Field;->NAME:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/libraries/places/api/model/Place$Field;->ADDRESS:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/libraries/places/api/model/Place$Field;->LAT_LNG:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v5

    new-instance v8, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;

    invoke-direct {v8, v0, v3, v1, v2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/maps/model/LatLng;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_3
    :goto_0
    sget-object v11, Llg/a;->a:Llg/a$a;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "LocationP"

    const-string v13, "getNearbyPlaces apiKey isNullOrEmpty"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final r()Ljava/lang/String;
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_lo_place_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private final s()I
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_lo_place_api"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    :goto_1
    return v2
.end method

.method private static final u(ZLcf/f;Ljava/util/List;ZZ)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "scope"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "deniedList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "LocationP"

    const-string v5, "location \u8bf7\u6c42\u6743\u9650\u4e4b\u540e\uff0c"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p0, :cond_1

    sget-object v9, Llg/a;->a:Llg/a$a;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "LocationP"

    const-string v11, "\u8bf7\u6c42\u6743\u9650\uff0c\u9700\u8981\u8df3\u5230\u8bbe\u7f6e\u9875\uff0c\u5148\u5c55\u793a\u63d0\u793a\u5f39\u7a97"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v2, Lbf/a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$string;->location_permission_dialog_tips:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$string;->Enable:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    sget v3, Lcom/tn/lib/widget/R$drawable;->ic_location_permission_tips:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    sget v3, Lcom/tn/lib/widget/R$color;->white_20:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v16, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v22}, Lbf/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v2}, Lcf/f;->c(Ljava/util/List;Lbf/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p2}, Lcf/f;->a(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_2
    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "LocationP"

    const-string v5, "\u76f4\u63a5\u8bf7\u6c42\u6743\u9650"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Lcf/f;->b(Ljava/util/List;)V

    return-void
.end method

.method private static final v(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 0

    return-void
.end method

.method private static final w(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    const-string v0, "grantedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lye/c;->a:Lye/c;

    invoke-virtual {p0}, Lye/c;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "location \u8bf7\u6c42\u6743\u9650\u7ed3\u679c:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocationP"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final x(Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->r()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v9, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;

    const/4 v8, 0x0

    const/16 v3, 0x4e20

    move-object v1, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    move-object v8, v9

    move v9, p1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_2
    :goto_0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :goto_1
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final y(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/location/LocationRequest$Builder;

    const/16 v1, 0x64

    const-wide/16 v2, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setWaitForAccurateLocation(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;

    invoke-direct {v1, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->c:Lcom/google/android/gms/location/LocationCallback;

    const-string p2, "null cannot be cast to non-null type com.google.android.gms.location.LocationCallback"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/transsion/room/helper/j;

    invoke-direct {p2}, Lcom/transsion/room/helper/j;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final z(Ljava/lang/Exception;)V
    .locals 7

    const-string v0, "e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updates request failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LocationP"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final n(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "activity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "LocationP"

    const-string v5, "Location-------------- start getCurrentLocation"

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v4, "key_lo_mock_test_lab_lat"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v3, 0x0

    const-string v4, "|"

    const/4 v5, 0x0

    const/4 v12, 0x2

    invoke-static {v6, v4, v5, v12, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v15, Lcom/transsion/room/api/bean/LocationPlace;

    const/16 v13, 0xf

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/transsion/room/api/bean/LocationPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v15, v7}, Lcom/transsion/room/api/bean/LocationPlace;->setName(Ljava/lang/String;)V

    const-string v8, "<1m"

    invoke-virtual {v15, v8}, Lcom/transsion/room/api/bean/LocationPlace;->setDistance(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Lcom/transsion/room/api/bean/LocationPlace;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Lcom/transsion/room/api/bean/LocationPlace;->setLat(Ljava/lang/Double;)V

    invoke-virtual {v15, v6}, Lcom/transsion/room/api/bean/LocationPlace;->setLon(Ljava/lang/Double;)V

    const-string v4, "LocationP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Location-------------- mock \u7684\u5b9a\u4f4d\u6570\u636e name:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".\u4e0d\u4f7f\u7528\u5b9e\u9645\u5b9a\u4f4d,\u9700\u8981\u771f\u5b9e\u5b9a\u4f4d\u8bf7\u6c42\u6e05\u695amock\u6570\u636e"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    const-string v3, "getFusedLocationProviderClient(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/transsion/room/helper/f;

    invoke-direct {v4, v0, v2}, Lcom/transsion/room/helper/f;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final p(DDLkotlin/jvm/functions/Function1;)V
    .locals 4

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->s()I

    move-result v0

    const-string v1, "LocationP"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    sget-object p1, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "place api ,null "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v3, "place api use search"

    invoke-virtual {v0, v1, v3, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/transsion/room/helper/LocationPlaceHelper;->x(Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v3, "place api use detail"

    invoke-virtual {v0, v1, v3, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p5}, Lcom/transsion/room/helper/LocationPlaceHelper;->q(DDLkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public final t(Landroidx/fragment/app/FragmentActivity;ZLkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lye/c;->a:Lye/c;

    invoke-virtual {v0, p1}, Lye/c;->e(Landroidx/fragment/app/FragmentActivity;)Lye/a;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lye/a;->b([Ljava/lang/String;)Lcf/h;

    move-result-object v0

    invoke-interface {v0}, Lcf/h;->b()Lcf/h;

    move-result-object v0

    new-instance v1, Lcom/transsion/room/helper/g;

    invoke-direct {v1, p2}, Lcom/transsion/room/helper/g;-><init>(Z)V

    invoke-interface {v0, v1}, Lcf/h;->c(Lze/b;)Lcf/h;

    move-result-object p2

    new-instance v0, Lcom/transsion/room/helper/h;

    invoke-direct {v0}, Lcom/transsion/room/helper/h;-><init>()V

    invoke-interface {p2, v0}, Lcf/h;->d(Lze/a;)Lcf/h;

    move-result-object p2

    new-instance v0, Lcom/transsion/room/helper/i;

    invoke-direct {v0, p1, p3}, Lcom/transsion/room/helper/i;-><init>(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p2, v0}, Lcf/h;->a(Lze/c;)V

    return-void
.end method
