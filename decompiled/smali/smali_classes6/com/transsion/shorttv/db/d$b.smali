.class Lcom/transsion/shorttv/db/d$b;
.super Landroidx/room/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/db/d;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/db/d;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/db/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/db/d$b;->a:Lcom/transsion/shorttv/db/d;

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv/db/e;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/db/d$b;->d(Lz3/e;Lcom/transsion/shorttv/db/e;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `short_tv_ad_unlock_state` SET `subjectId` = ?,`unlockedEps` = ? WHERE `subjectId` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/shorttv/db/e;)V
    .locals 2

    invoke-virtual {p2}, Lcom/transsion/shorttv/db/e;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/e;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/e;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    return-void
.end method
