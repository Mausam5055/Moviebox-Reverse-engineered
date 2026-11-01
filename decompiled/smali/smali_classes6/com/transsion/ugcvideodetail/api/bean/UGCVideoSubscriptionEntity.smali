.class public final Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "targetUID",
        "",
        "getTargetUID",
        "()Ljava/lang/String;",
        "setTargetUID",
        "(Ljava/lang/String;)V",
        "subscribe",
        "",
        "getSubscribe",
        "()Z",
        "setSubscribe",
        "(Z)V",
        "UGCVideoDetailApi_psRelease"
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
.field private subscribe:Z

.field private targetUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionEntity;->subscribe:Z

    return-void
.end method


# virtual methods
.method public final getSubscribe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionEntity;->subscribe:Z

    return v0
.end method

.method public final getTargetUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionEntity;->targetUID:Ljava/lang/String;

    return-object v0
.end method

.method public final setSubscribe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionEntity;->subscribe:Z

    return-void
.end method

.method public final setTargetUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionEntity;->targetUID:Ljava/lang/String;

    return-void
.end method
