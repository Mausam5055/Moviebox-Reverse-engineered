.class public Lcom/mbridge/msdk/out/MBBidNativeHandler;
.super Lcom/mbridge/msdk/mbnative/demand/a;

# interfaces
.implements Lcom/mbridge/msdk/out/BaseExtraInterfaceForHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/out/MBBidNativeHandler$KeyWordInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.mbridge.msdk.out.MBBidNativeHandler"

.field public static final TEMPLATE_ID:Ljava/lang/String; = "id"

.field public static final TEMPLATE_NUM:Ljava/lang/String; = "ad_num"

.field private static mUnitID:Ljava/lang/String;


# instance fields
.field private adListener:Lcom/mbridge/msdk/mbnative/listener/a;

.field private clickControler:Lcom/mbridge/msdk/click/a;

.field private context:Landroid/content/Context;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

.field private templateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/NativeListener$Template;",
            ">;"
        }
    .end annotation
.end field

.field private trackingListener:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/demand/a;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/mbnative/listener/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/mbnative/listener/a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    iput-object p1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->context:Landroid/content/Context;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/controller/a;->b(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->map:Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v0, "unit_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->map:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbnative/listener/a;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "native_video_height"

    const-string v1, "native_video_width"

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbnative/demand/a;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    new-instance v2, Lcom/mbridge/msdk/mbnative/listener/a;

    invoke-direct {v2}, Lcom/mbridge/msdk/mbnative/listener/a;-><init>()V

    iput-object v2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    iput-object p2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->map:Ljava/util/Map;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mbridge/msdk/foundation/controller/a;->b(Landroid/content/Context;)V

    :cond_0
    const-string p2, "unit_id"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/mbnative/listener/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static getNativeProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lcom/mbridge/msdk/out/MBBidNativeHandler;->mUnitID:Ljava/lang/String;

    const-string v1, "unit_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "MVNativePlugin"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string p1, "plugin_name"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "layout_type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getTemplateString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/NativeListener$Template;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "[{$native_info}]"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ","

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/out/NativeListener$Template;

    const-string v4, "{\"id\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/NativeListener$Template;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\"ad_num\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/NativeListener$Template;->getAdNum()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "},"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string p0, "{$native_info}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadMB(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz v0, :cond_0

    const-string p1, "bidToken can not be null, bid first"

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbnative/listener/a;->onAdLoadError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->buildTemplateString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    const-string v2, "native_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "com.mbridge.msdk"

    const-string v1, "MBSDK set template error"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/mbnative/service/a;-><init>(Lcom/mbridge/msdk/mbnative/listener/a;Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mbridge/msdk/mbnative/service/a;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/Map;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbnative/service/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/mbridge/msdk/out/MBBidNativeHandler;->TAG:Ljava/lang/String;

    const-string v0, "no unit id."

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public addTemplate(Lcom/mbridge/msdk/out/NativeListener$Template;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bidLoad(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->loadMB(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/mbridge/msdk/out/MBBidNativeHandler;->TAG:Ljava/lang/String;

    const-string v0, "no unit id."

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bidRelease()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/service/a;->g()V

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    sget-object v1, Lcom/mbridge/msdk/out/MBBidNativeHandler;->mUnitID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public buildTemplateString()Ljava/lang/String;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "[{$native_info}]"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ","

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/out/NativeListener$Template;

    const-string v5, "{\"id\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/NativeListener$Template;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\"ad_num\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/NativeListener$Template;->getAdNum()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "},"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v2, "{$native_info}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearCacheByUnitid(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clearVideoCache()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/service/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mbridge/msdk/out/MBBidNativeHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAdListener()Lcom/mbridge/msdk/mbnative/listener/a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    return-object v0
.end method

.method public getCreativeIdWithUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/service/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTrackingListener()Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    return-object v0
.end method

.method public handleResult(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->clickControler:Lcom/mbridge/msdk/click/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/mbridge/msdk/click/a;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/mbridge/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->clickControler:Lcom/mbridge/msdk/click/a;

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->clickControler:Lcom/mbridge/msdk/click/a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    return-void
.end method

.method public registerView(Landroid/view/View;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/mbnative/service/a;-><init>(Lcom/mbridge/msdk/mbnative/listener/a;Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mbridge/msdk/mbnative/service/a;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/mbnative/service/a;->a(Landroid/view/View;Lcom/mbridge/msdk/out/Campaign;)V

    return-void
.end method

.method public registerView(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mbridge/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/mbnative/service/a;-><init>(Lcom/mbridge/msdk/mbnative/listener/a;Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mbridge/msdk/mbnative/service/a;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/mbnative/service/a;->a(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V

    return-void
.end method

.method public setAdListener(Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/mbnative/listener/a;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/mbnative/listener/a;-><init>(Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    sget-object p1, Lcom/mbridge/msdk/out/MBBidNativeHandler;->mUnitID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbnative/listener/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/mbnative/service/a;->a(Lcom/mbridge/msdk/mbnative/listener/a;)V

    :cond_0
    return-void
.end method

.method public setExtraInfo(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    sget-object v1, Lcom/mbridge/msdk/out/MBBidNativeHandler;->mUnitID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setMustBrowser(Z)V
    .locals 0

    sput-boolean p1, Lcom/mbridge/msdk/foundation/tools/s0;->b:Z

    return-void
.end method

.method public setTrackingListener(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbnative/service/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    :cond_0
    return-void
.end method

.method public unregisterView(Landroid/view/View;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/mbnative/service/a;-><init>(Lcom/mbridge/msdk/mbnative/listener/a;Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mbridge/msdk/mbnative/service/a;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/mbnative/service/a;->b(Landroid/view/View;Lcom/mbridge/msdk/out/Campaign;)V

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    sget-object p2, Lcom/mbridge/msdk/out/MBBidNativeHandler;->mUnitID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public unregisterView(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mbridge/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lcom/mbridge/msdk/mbnative/listener/a;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/mbnative/service/a;-><init>(Lcom/mbridge/msdk/mbnative/listener/a;Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mbridge/msdk/mbnative/service/a;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lcom/mbridge/msdk/mbnative/service/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/mbnative/service/a;->b(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    sget-object p2, Lcom/mbridge/msdk/out/MBBidNativeHandler;->mUnitID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
