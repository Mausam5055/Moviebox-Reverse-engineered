.class public final Lcom/apm/insight/runtime/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/apm/insight/runtime/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONObject;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apm/insight/runtime/d;->b:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/apm/insight/runtime/d;->c:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apm/insight/runtime/d;->d:Z

    iput-object p2, p0, Lcom/apm/insight/runtime/d;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/apm/insight/runtime/d;->a(Lorg/json/JSONObject;)V

    sget-object p1, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/apm/insight/runtime/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "after update aid "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apm/insight/runtime/d;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lcom/apm/insight/runtime/d;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance v0, Lcom/apm/insight/runtime/d;

    invoke-direct {v0, p1, p0}, Lcom/apm/insight/runtime/d;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    iput-object p1, p0, Lcom/apm/insight/runtime/d;->b:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string v0, "error_module"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "switcher"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "err_sampling_rate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/apm/insight/runtime/d;->d:Z

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/apm/insight/runtime/d;->b:Lorg/json/JSONObject;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/apm/insight/runtime/d;
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/d;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 4

    sget-object v0, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/d;

    const-wide/32 v0, 0x36ee80

    if-eqz p0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/apm/insight/runtime/d;->b:Lorg/json/JSONObject;

    const-string v2, "over_all"

    const-string v3, "get_settings_interval"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/apm/insight/a;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :catchall_0
    :cond_0
    return-wide v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/d;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/apm/insight/runtime/d;->b:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string v1, "crash_module"

    const-string v2, "switcher"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/apm/insight/a;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/d;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/apm/insight/runtime/d;->b:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string v1, "crash_module"

    const-string v2, "switcher"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/apm/insight/a;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/apm/insight/runtime/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/d;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/apm/insight/runtime/d;->b:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string v1, "crash_module"

    const-string v2, "switcher"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/apm/insight/a;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    return v1

    :cond_0
    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/apm/insight/runtime/d;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/apm/insight/runtime/d;->d:Z

    return v0
.end method
