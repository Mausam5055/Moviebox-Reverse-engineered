.class Llj/h1$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llj/h1;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llj/h1;


# direct methods
.method constructor <init>(Llj/h1;)V
    .locals 0

    iput-object p1, p0, Llj/h1$a;->a:Llj/h1;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    invoke-virtual {p0, p1, p2}, Llj/h1$a;->f(Lz3/e;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `subtitle_language_map_table` (`lan`,`lanIOS3`,`lanName`,`inSearch`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLan()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLan()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanIOS3()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanIOS3()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getInSearch()Z

    move-result p2

    const/4 v0, 0x4

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    return-void
.end method
