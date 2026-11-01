.class public final Lcom/transsion/publish/net/PostResuleEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/publish/net/PostResuleEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "postId",
        "",
        "getPostId",
        "()Ljava/lang/String;",
        "setPostId",
        "(Ljava/lang/String;)V",
        "score",
        "getScore",
        "setScore",
        "Publish_psRelease"
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
.field private postId:Ljava/lang/String;

.field private score:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/publish/net/PostResuleEntity;->postId:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/publish/net/PostResuleEntity;->score:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPostId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/net/PostResuleEntity;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/net/PostResuleEntity;->score:Ljava/lang/String;

    return-object v0
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/net/PostResuleEntity;->postId:Ljava/lang/String;

    return-void
.end method

.method public final setScore(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/net/PostResuleEntity;->score:Ljava/lang/String;

    return-void
.end method
