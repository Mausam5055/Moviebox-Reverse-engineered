.class public final Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/ShorttvModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UGCVideoInteractiveInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008#\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B[\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010$\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003Jb\u0010\'\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020\u00072\u0008\u0010*\u001a\u0004\u0018\u00010+H\u00d6\u0003J\t\u0010,\u001a\u00020-H\u00d6\u0001J\t\u0010.\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000e\"\u0004\u0008\u001d\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000e\"\u0004\u0008\u001f\u0010\u0010\u00a8\u0006/"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;",
        "Ljava/io/Serializable;",
        "likeNum",
        "",
        "favoriteNum",
        "shareNum",
        "hasLike",
        "",
        "hasFavorite",
        "viewNum",
        "commentNum",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V",
        "getLikeNum",
        "()Ljava/lang/String;",
        "setLikeNum",
        "(Ljava/lang/String;)V",
        "getFavoriteNum",
        "setFavoriteNum",
        "getShareNum",
        "setShareNum",
        "getHasLike",
        "()Ljava/lang/Boolean;",
        "setHasLike",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getHasFavorite",
        "setHasFavorite",
        "getViewNum",
        "setViewNum",
        "getCommentNum",
        "setCommentNum",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "shortTvLib_release"
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
.field private commentNum:Ljava/lang/String;

.field private favoriteNum:Ljava/lang/String;

.field private hasFavorite:Ljava/lang/Boolean;

.field private hasLike:Ljava/lang/Boolean;

.field private likeNum:Ljava/lang/String;

.field private shareNum:Ljava/lang/String;

.field private viewNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->likeNum:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->favoriteNum:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->shareNum:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasLike:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasFavorite:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->viewNum:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_3
    move-object v3, p4

    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_4
    move-object v4, p5

    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    move-object v5, v0

    goto :goto_3

    :cond_5
    move-object v5, p6

    :goto_3
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    move-object p8, v0

    goto :goto_4

    :cond_6
    move-object p8, p7

    :goto_4
    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    move-object p7, v5

    invoke-direct/range {p1 .. p8}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->likeNum:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->favoriteNum:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->shareNum:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasLike:Ljava/lang/Boolean;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasFavorite:Ljava/lang/Boolean;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->viewNum:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->commentNum:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->likeNum:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->favoriteNum:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->shareNum:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasLike:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasFavorite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->viewNum:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;
    .locals 9

    new-instance v8, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->likeNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->likeNum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->favoriteNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->favoriteNum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->shareNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->shareNum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasLike:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasLike:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasFavorite:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasFavorite:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->viewNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->viewNum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->commentNum:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->commentNum:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCommentNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public final getFavoriteNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->favoriteNum:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasFavorite()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasFavorite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasLike()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasLike:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLikeNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->likeNum:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->shareNum:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->viewNum:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->likeNum:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->favoriteNum:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->shareNum:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasLike:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasFavorite:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->viewNum:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->commentNum:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCommentNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public final setFavoriteNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->favoriteNum:Ljava/lang/String;

    return-void
.end method

.method public final setHasFavorite(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasFavorite:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHasLike(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasLike:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLikeNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->likeNum:Ljava/lang/String;

    return-void
.end method

.method public final setShareNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->shareNum:Ljava/lang/String;

    return-void
.end method

.method public final setViewNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->viewNum:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->likeNum:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->favoriteNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->shareNum:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasLike:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hasFavorite:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->viewNum:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->commentNum:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UGCVideoInteractiveInfo(likeNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", favoriteNum="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shareNum="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hasLike="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hasFavorite="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", viewNum="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", commentNum="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
