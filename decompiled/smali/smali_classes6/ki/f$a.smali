.class Lki/f$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lki/f;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lki/f;


# direct methods
.method constructor <init>(Lki/f;)V
    .locals 0

    iput-object p1, p0, Lki/f$a;->a:Lki/f;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/ad/db/mcc/LocalMcc;

    invoke-virtual {p0, p1, p2}, Lki/f$a;->f(Lz3/e;Lcom/transsion/ad/db/mcc/LocalMcc;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `local_mcc` (`id`,`Country`,`Mcc`,`Iso`,`CountryCode`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/ad/db/mcc/LocalMcc;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getMcc()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getIso()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getIso()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/ad/db/mcc/LocalMcc;->getCountryCode()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_3
    return-void
.end method
