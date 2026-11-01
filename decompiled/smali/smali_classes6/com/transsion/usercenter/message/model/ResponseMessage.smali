.class public final Lcom/transsion/usercenter/message/model/ResponseMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/usercenter/message/model/ResponseMessage;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "list",
        "",
        "Lcom/transsion/usercenter/message/bean/MessageEntity;",
        "getList",
        "()Ljava/util/List;",
        "pager",
        "Lcom/transsion/usercenter/message/model/PagerEntity;",
        "getPager",
        "()Lcom/transsion/usercenter/message/model/PagerEntity;",
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
.field private final list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/message/bean/MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final pager:Lcom/transsion/usercenter/message/model/PagerEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pager"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/message/bean/MessageEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/usercenter/message/model/ResponseMessage;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/usercenter/message/model/PagerEntity;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/message/model/ResponseMessage;->pager:Lcom/transsion/usercenter/message/model/PagerEntity;

    return-object v0
.end method
