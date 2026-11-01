.class public final Lcom/transsnet/downloader/util/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/util/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/util/h;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/h;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/h;->a:Lcom/transsnet/downloader/util/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/memberapi/IPremiumApi;->u()Z

    move-result v0

    :cond_0
    return v0
.end method
