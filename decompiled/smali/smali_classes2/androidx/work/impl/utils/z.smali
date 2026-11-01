.class public Landroidx/work/impl/utils/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/z;->a:Landroidx/work/impl/WorkDatabase;

    return-void
.end method

.method public static c(Landroid/content/Context;La4/d;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const-string v3, "androidx.work.util.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "reschedule_needed"

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "last_cancel_all_time_ms"

    if-nez v5, :cond_0

    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-wide/16 v7, 0x0

    invoke-interface {p0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v7, 0x1

    :cond_1
    invoke-interface {p1}, La4/d;->A()V

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v4

    aput-object v5, v9, v0

    invoke-interface {p1, v2, v9}, La4/d;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v4

    aput-object v5, v1, v0

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

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, La4/d;->L()V

    throw p0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h0()Landroidx/work/impl/model/i;

    move-result-object v0

    const-string v1, "last_force_stop_ms"

    invoke-interface {v0, v1}, Landroidx/work/impl/model/i;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/utils/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h0()Landroidx/work/impl/model/i;

    move-result-object v0

    const-string v1, "reschedule_needed"

    invoke-interface {v0, v1}, Landroidx/work/impl/model/i;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(J)V
    .locals 1

    new-instance v0, Landroidx/work/impl/model/h;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "last_force_stop_ms"

    invoke-direct {v0, p2, p1}, Landroidx/work/impl/model/h;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Landroidx/work/impl/utils/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->h0()Landroidx/work/impl/model/i;

    move-result-object p1

    invoke-interface {p1, v0}, Landroidx/work/impl/model/i;->a(Landroidx/work/impl/model/h;)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    new-instance v0, Landroidx/work/impl/model/h;

    const-string v1, "reschedule_needed"

    invoke-direct {v0, v1, p1}, Landroidx/work/impl/model/h;-><init>(Ljava/lang/String;Z)V

    iget-object p1, p0, Landroidx/work/impl/utils/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->h0()Landroidx/work/impl/model/i;

    move-result-object p1

    invoke-interface {p1, v0}, Landroidx/work/impl/model/i;->a(Landroidx/work/impl/model/h;)V

    return-void
.end method
