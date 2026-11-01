.class public Lcom/mbridge/msdk/splash/common/b;
.super Lcom/mbridge/msdk/splash/common/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/splash/common/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/common/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
