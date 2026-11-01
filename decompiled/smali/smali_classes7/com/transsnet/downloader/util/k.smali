.class public final Lcom/transsnet/downloader/util/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/util/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/util/k;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/k;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/k;->a:Lcom/transsnet/downloader/util/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 13

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "key_download_st_show_last_time"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v5, "key_download_st_showed_times"

    invoke-virtual {v0, v5, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, "key_storage_per_total_show_times"

    const/4 v10, 0x0

    invoke-static {v0, v9, v10, v7, v8}, Lsm/f;->d(Lsm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    const-wide/16 v7, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_0

    :cond_0
    move-wide v11, v7

    :goto_0
    cmp-long v0, v11, v3

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v7, v11

    :goto_1
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/c0;->f(J)Z

    move-result v0

    if-nez v0, :cond_2

    cmp-long v0, v7, v5

    if-lez v0, :cond_2

    const/4 v10, 0x1

    :cond_2
    return v10
.end method
