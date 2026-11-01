.class Lmj/d$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmj/d;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmj/d;


# direct methods
.method constructor <init>(Lmj/d;)V
    .locals 0

    iput-object p1, p0, Lmj/d$a;->a:Lmj/d;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    invoke-virtual {p0, p1, p2}, Lmj/d$a;->f(Lz3/e;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `home_preferences_interval_time` (`id`,`showTime`,`closeTime`,`chooseTime`,`showIntervalSeconds`,`closeIntervalSeconds`,`chooseIntervalSeconds`) VALUES (?,?,?,?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowIntervalSeconds()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseIntervalSeconds()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseIntervalSeconds()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    return-void
.end method
