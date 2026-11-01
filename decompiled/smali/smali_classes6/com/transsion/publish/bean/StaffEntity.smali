.class public final Lcom/transsion/publish/bean/StaffEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0007\"\u0004\u0008\u0013\u0010\tR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007\"\u0004\u0008\u0016\u0010\tR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/publish/bean/StaffEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "releaseDate",
        "",
        "getReleaseDate",
        "()Ljava/lang/String;",
        "setReleaseDate",
        "(Ljava/lang/String;)V",
        "staffType",
        "",
        "getStaffType",
        "()Ljava/lang/Integer;",
        "setStaffType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "name",
        "getName",
        "setName",
        "character",
        "getCharacter",
        "setCharacter",
        "avatarUrl",
        "getAvatarUrl",
        "setAvatarUrl",
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
.field private avatarUrl:Ljava/lang/String;

.field private character:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private releaseDate:Ljava/lang/String;

.field private staffType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/StaffEntity;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCharacter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/StaffEntity;->character:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/StaffEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getReleaseDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/StaffEntity;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getStaffType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/StaffEntity;->staffType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/StaffEntity;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public final setCharacter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/StaffEntity;->character:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/StaffEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public final setReleaseDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/StaffEntity;->releaseDate:Ljava/lang/String;

    return-void
.end method

.method public final setStaffType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/StaffEntity;->staffType:Ljava/lang/Integer;

    return-void
.end method
