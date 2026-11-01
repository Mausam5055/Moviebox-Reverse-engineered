.class Lmi/f$b;
.super Landroidx/room/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmi/f;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmi/f;


# direct methods
.method constructor <init>(Lmi/f;)V
    .locals 0

    iput-object p1, p0, Lmi/f$b;->a:Lmi/f;

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/ad/db/pslink/AppInstalledBean;

    invoke-virtual {p0, p1, p2}, Lmi/f$b;->d(Lz3/e;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `app_installed` WHERE `packageName` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V
    .locals 2

    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
