.class public final Lds/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lds/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lds/g;

    invoke-direct {v0}, Lds/g;-><init>()V

    sput-object v0, Lds/g;->a:Lds/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "dark_mode_follow_sys"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method
