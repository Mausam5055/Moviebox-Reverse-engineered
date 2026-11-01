.class public final Lcom/transsion/baselib/db/video/ShortTvFavoriteState;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/baselib/db/video/ShortTvFavoriteState;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "subjectId",
        "",
        "getSubjectId",
        "()Ljava/lang/String;",
        "setSubjectId",
        "(Ljava/lang/String;)V",
        "favoriteNum",
        "getFavoriteNum",
        "setFavoriteNum",
        "hasFavorite",
        "",
        "getHasFavorite",
        "()Z",
        "setHasFavorite",
        "(Z)V",
        "favoriteTime",
        "getFavoriteTime",
        "setFavoriteTime",
        "BaseLib_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private favoriteNum:Ljava/lang/String;

.field private favoriteTime:Ljava/lang/String;

.field private hasFavorite:Z

.field private subjectId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->subjectId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFavoriteNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->favoriteNum:Ljava/lang/String;

    return-object v0
.end method

.method public final getFavoriteTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->favoriteTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->hasFavorite:Z

    return v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final setFavoriteNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->favoriteNum:Ljava/lang/String;

    return-void
.end method

.method public final setFavoriteTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->favoriteTime:Ljava/lang/String;

    return-void
.end method

.method public final setHasFavorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->hasFavorite:Z

    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->subjectId:Ljava/lang/String;

    return-void
.end method
