.class public final Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;
.super Ljava/lang/Object;

# interfaces
.implements Ln6/a;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\r\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;",
        "Ln6/a;",
        "Ljava/io/Serializable;",
        "",
        "date",
        "<init>",
        "(Ljava/lang/String;)V",
        "Ljava/lang/String;",
        "getDate",
        "()Ljava/lang/String;",
        "",
        "getItemType",
        "()I",
        "itemType",
        "UserCenter_psRelease"
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
.field private final date:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
