.class public Lcom/transsion/subroom/app/SubRoomApp;
.super Lcom/tencent/tinker/loader/app/TinkerApplication;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    new-instance v0, LAbdullah/loader;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0xf

    const-string v2, "com.transsion.subroom.app.SubRoomAppLike"

    const-string v3, "com.tencent.tinker.loader.TinkerLoader"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/loader/app/TinkerApplication;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method
