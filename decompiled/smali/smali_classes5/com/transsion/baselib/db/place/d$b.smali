.class Lcom/transsion/baselib/db/place/d$b;
.super Landroidx/room/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/place/d;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/place/d;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/place/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/place/d$b;->a:Lcom/transsion/baselib/db/place/d;

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/place/PlaceDBBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/place/d$b;->d(Lz3/e;Lcom/transsion/baselib/db/place/PlaceDBBean;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `place_list` WHERE `latitude` = ? AND `longitude` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/baselib/db/place/PlaceDBBean;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLatitude()D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->a(ID)V

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLongitude()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->a(ID)V

    return-void
.end method
