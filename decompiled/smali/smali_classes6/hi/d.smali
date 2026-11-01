.class public final Lhi/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lhi/d;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhi/d;

    invoke-direct {v0}, Lhi/d;-><init>()V

    sput-object v0, Lhi/d;->a:Lhi/d;

    const-string v0, ""

    sput-object v0, Lhi/d;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lhi/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 5

    sget-object v0, Lhi/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Loi/a;->a:Loi/a;

    const-string v1, "HotSceneManager --> loadHotSplashAd() --> \u6ca1\u6709\u914d\u7f6e\u70ed\u542f\u52a8\u573a\u666fID\uff0c\u62d2\u7edd\u52a0\u8f7d\u5e7f\u544a"

    const/4 v2, 0x6

    const-string v3, "ad_int"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lhi/d;->b:Ljava/lang/String;

    return-void
.end method
