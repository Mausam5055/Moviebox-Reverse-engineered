.class public abstract Landroidx/work/impl/utils/n;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/utils/n;->d(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/utils/n;->e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V

    return-void
.end method

.method public static final c(Landroid/content/Context;La4/d;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const-string v3, "context"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sqLiteDatabase"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "androidx.work.util.id"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "next_job_scheduler_id"

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "next_alarm_manager_id"

    invoke-interface {p0, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {p1}, La4/d;->A()V

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v5, v8, v0

    invoke-interface {p1, v2, v8}, La4/d;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v4

    aput-object v3, v1, v0

    invoke-interface {p1, v2, v1}, La4/d;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p1}, La4/d;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, La4/d;->L()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, La4/d;->L()V

    throw p0
.end method

.method private static final d(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h0()Landroidx/work/impl/model/i;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/work/impl/model/i;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_1
    invoke-static {p0, p1, v1}, Landroidx/work/impl/utils/n;->e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V

    return v0
.end method

.method private static final e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h0()Landroidx/work/impl/model/i;

    move-result-object p0

    new-instance v0, Landroidx/work/impl/model/h;

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroidx/work/impl/model/h;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p0, v0}, Landroidx/work/impl/model/i;->a(Landroidx/work/impl/model/h;)V

    return-void
.end method
