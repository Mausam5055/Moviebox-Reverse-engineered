.class Lmn/o$b;
.super Landroidx/room/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmn/o;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmn/o;


# direct methods
.method constructor <init>(Lmn/o;)V
    .locals 0

    iput-object p1, p0, Lmn/o$b;->a:Lmn/o;

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/mpush/api/PermanentPushMessage;

    invoke-virtual {p0, p1, p2}, Lmn/o$b;->d(Lz3/e;Lcom/transsion/mpush/api/PermanentPushMessage;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `permanent_push_message` WHERE `id` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/mpush/api/PermanentPushMessage;)V
    .locals 2

    invoke-virtual {p2}, Lcom/transsion/mpush/api/PermanentPushMessage;->getId()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Lz3/e;->c(IJ)V

    return-void
.end method
