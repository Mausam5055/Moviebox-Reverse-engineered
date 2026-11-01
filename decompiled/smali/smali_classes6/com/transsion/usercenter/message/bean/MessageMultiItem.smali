.class public final Lcom/transsion/usercenter/message/bean/MessageMultiItem;
.super Ljava/lang/Object;

# interfaces
.implements Ln6/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/message/bean/MessageMultiItem$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00112\u00020\u00012\u00020\u0002:\u0001\u0012B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/usercenter/message/bean/MessageMultiItem;",
        "Ln6/a;",
        "Ljava/io/Serializable;",
        "",
        "itemType",
        "<init>",
        "(I)V",
        "I",
        "getItemType",
        "()I",
        "Lcom/transsion/usercenter/message/bean/MessageEntity;",
        "data",
        "Lcom/transsion/usercenter/message/bean/MessageEntity;",
        "getData",
        "()Lcom/transsion/usercenter/message/bean/MessageEntity;",
        "setData",
        "(Lcom/transsion/usercenter/message/bean/MessageEntity;)V",
        "Companion",
        "a",
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


# static fields
.field public static final Companion:Lcom/transsion/usercenter/message/bean/MessageMultiItem$a;


# instance fields
.field public data:Lcom/transsion/usercenter/message/bean/MessageEntity;

.field private final itemType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/message/bean/MessageMultiItem$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/message/bean/MessageMultiItem$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/message/bean/MessageMultiItem;->Companion:Lcom/transsion/usercenter/message/bean/MessageMultiItem$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/usercenter/message/bean/MessageMultiItem;->itemType:I

    return-void
.end method


# virtual methods
.method public final getData()Lcom/transsion/usercenter/message/bean/MessageEntity;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/message/bean/MessageMultiItem;->data:Lcom/transsion/usercenter/message/bean/MessageEntity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "data"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/message/bean/MessageMultiItem;->itemType:I

    return v0
.end method

.method public final setData(Lcom/transsion/usercenter/message/bean/MessageEntity;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/message/bean/MessageMultiItem;->data:Lcom/transsion/usercenter/message/bean/MessageEntity;

    return-void
.end method
