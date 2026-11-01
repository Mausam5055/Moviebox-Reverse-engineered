.class Lcom/cloud/hisavana/sdk/d2$d;
.super Landroidx/room/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/d2;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/d2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/d2;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d2$d;->d:Lcom/cloud/hisavana/sdk/d2;

    invoke-direct {p0, p2}, Landroidx/room/j0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE default_ad_room SET file_path = \'\' WHERE file_path LIKE \'%\' || ? || \'.0\'"

    return-object v0
.end method
