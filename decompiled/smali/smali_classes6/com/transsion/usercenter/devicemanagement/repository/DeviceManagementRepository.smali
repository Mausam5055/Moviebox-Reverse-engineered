.class public final Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$a;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;->b:Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/usercenter/devicemanagement/repository/a;

    invoke-direct {v0}, Lcom/transsion/usercenter/devicemanagement/repository/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lhw/a;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;->b()Lhw/a;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lhw/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lhw/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhw/a;

    return-object v0
.end method

.method private final c()Lhw/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhw/a;

    return-object v0
.end method

.method private final f()Ljava/util/List;
    .locals 8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "BRAND"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;

    sget-object v1, Lih/b;->a:Lih/b;

    invoke-virtual {v1}, Lih/b;->h()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getLinkedDevicesOrLocal$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getLinkedDevicesOrLocal$1;

    iget v1, v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getLinkedDevicesOrLocal$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getLinkedDevicesOrLocal$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getLinkedDevicesOrLocal$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getLinkedDevicesOrLocal$1;-><init>(Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p1, v4, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getLinkedDevicesOrLocal$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getLinkedDevicesOrLocal$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    :try_start_1
    sget-object p1, Lbh/b;->a:Lbh/b$a;

    const-string v1, "{}"

    invoke-virtual {p1, v1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;->f()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p0}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;->c()Lhw/a;

    move-result-object v1

    iput v2, v4, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getLinkedDevicesOrLocal$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lhw/a$a;->a(Lhw/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;->f()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkedDevices failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DeviceManagementRepository"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;->f()Ljava/util/List;

    move-result-object p1

    :cond_8
    :goto_5
    return-object p1
.end method

.method public final e(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;

    iget v1, v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;-><init>(Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p3, v4, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-direct {p0}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;->c()Lhw/a;

    move-result-object v1

    if-eqz p2, :cond_3

    const-string p2, "pro"

    :goto_2
    move-object v3, p2

    goto :goto_3

    :cond_3
    const-string p2, "basic"

    goto :goto_2

    :goto_3
    iput-object p1, v4, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;->L$0:Ljava/lang/Object;

    iput v2, v4, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository$getUpgradeRightsWithCache$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lhw/a$a;->b(Lhw/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_4

    return-object v0

    :cond_4
    :goto_4
    check-cast p3, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;

    if-eqz p2, :cond_5

    sget-object p3, Liw/b;->a:Liw/b;

    invoke-virtual {p3, p1, p2}, Liw/b;->f(Ljava/lang/String;Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;)V

    goto :goto_6

    :cond_5
    const/4 p2, 0x0

    goto :goto_6

    :cond_6
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "DeviceManagementRepository"

    const-string v2, "getUpgradeRights business failed"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p2, Liw/b;->a:Liw/b;

    invoke-virtual {p2, p1}, Liw/b;->c(Ljava/lang/String;)Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpgradeRights failed: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DeviceManagementRepository"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p2, Liw/b;->a:Liw/b;

    invoke-virtual {p2, p1}, Liw/b;->c(Ljava/lang/String;)Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;

    move-result-object p2

    :goto_6
    return-object p2
.end method
