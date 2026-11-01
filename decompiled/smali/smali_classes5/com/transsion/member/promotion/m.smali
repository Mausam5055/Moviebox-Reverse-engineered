.class public final Lcom/transsion/member/promotion/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/member/promotion/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/promotion/m;

    invoke-direct {v0}, Lcom/transsion/member/promotion/m;-><init>()V

    sput-object v0, Lcom/transsion/member/promotion/m;->a:Lcom/transsion/member/promotion/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/member/promotion/m;Lcom/transsion/memberapi/SkuPromotionItem;JILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/member/promotion/m;->c(Lcom/transsion/memberapi/SkuPromotionItem;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private final e(Lcom/transsion/memberapi/SkuPromotionItem;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuPromotionItem;->getMarketingActivityItemId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "kv_promotion_dialog_marketing_activity_item_id"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "premium_discount"

    const-string v6, "PromotionCountdownManager --> resetCountdownIfActivityItemChanged() --> \u6d3b\u52a8ID\u4e0d\u4e00\u81f4\uff0c\u91cd\u7f6e\u6570\u636e"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/member/promotion/m;->f()V

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "kv_promotion_dialog_first_show_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private final f()V
    .locals 6

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "kv_promotion_push_show_window_start_time"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "kv_promotion_push_show_count_in_window"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "kv_promotion_dialog_show_window_start_time"

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "kv_promotion_dialog_show_count_in_window"

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "kv_promotion_dialog_first_show_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized b(JLcom/transsion/memberapi/SkuPromotionItem;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/transsion/member/promotion/m;->e(Lcom/transsion/memberapi/SkuPromotionItem;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/member/promotion/m;->a()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-eqz p3, :cond_0

    cmp-long p3, v0, v2

    if-ltz p3, :cond_0

    sub-long/2addr v0, v2

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/transsion/memberapi/SkuPromotionItem;J)J
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/member/promotion/m;->e(Lcom/transsion/memberapi/SkuPromotionItem;)V

    invoke-virtual {p0}, Lcom/transsion/member/promotion/m;->a()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    const-string v4, "premium_discount"

    const-string v5, "PromotionCountdownManager --> resetCountdownIfActivityItemChanged() --> \u4fdd\u5b58\u9996\u6b21\u5c55\u793a\u65f6\u95f4"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "kv_promotion_dialog_first_show_time"

    invoke-virtual {v1, v2, p2, p3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "kv_promotion_dialog_marketing_activity_item_id"

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuPromotionItem;->getMarketingActivityItemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-wide p2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
