.class public final Lcom/mbridge/msdk/dycreator/binding/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mbridge/msdk/dycreator/binding/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/dycreator/binding/c;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/dycreator/binding/c;->a:Lcom/mbridge/msdk/dycreator/binding/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/dycreator/binding/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/dycreator/binding/c;->a:Lcom/mbridge/msdk/dycreator/binding/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/c;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/c;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/dycreator/binding/c;->a:Lcom/mbridge/msdk/dycreator/binding/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mbridge/msdk/dycreator/binding/c;->a:Lcom/mbridge/msdk/dycreator/binding/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mbridge/msdk/dycreator/binding/base/BaseStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mbridge/msdk/dycreator/binding/base/BaseStrategy;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/strategy/c;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/strategy/c;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/strategy/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/strategy/b;-><init>()V

    goto :goto_0

    :cond_1
    const-string v0, "deeplink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/strategy/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/strategy/a;-><init>()V

    :cond_3
    :goto_0
    const-string v0, "feedback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/strategy/d;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/strategy/d;-><init>()V

    :cond_4
    const-string v0, "notice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/strategy/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/strategy/e;-><init>()V

    :cond_5
    const-string v0, "permissionInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/mbridge/msdk/dycreator/binding/strategy/f;

    invoke-direct {v0}, Lcom/mbridge/msdk/dycreator/binding/strategy/f;-><init>()V

    move-object v1, v0

    :cond_6
    const-string v0, "privateAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance v1, Lcom/mbridge/msdk/dycreator/binding/strategy/g;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/binding/strategy/g;-><init>()V

    :cond_7
    return-object v1
.end method
