.class public final Lcom/transsion/ad/strategy/AppManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/strategy/AppManager$AppEnum;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ad/strategy/AppManager;

.field private static b:Lcom/transsion/ad/strategy/AppManager$AppEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/strategy/AppManager;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/AppManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/AppManager;->a:Lcom/transsion/ad/strategy/AppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/ad/strategy/AppManager;->b:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/AppManager$AppEnum;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_key_app_name"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "default_null"

    :cond_1
    return-object v0
.end method

.method public final b(Lcom/transsion/ad/strategy/AppManager$AppEnum;)V
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/ad/strategy/AppManager;->b:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_key_app_name"

    invoke-virtual {p1}, Lcom/transsion/ad/strategy/AppManager$AppEnum;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
