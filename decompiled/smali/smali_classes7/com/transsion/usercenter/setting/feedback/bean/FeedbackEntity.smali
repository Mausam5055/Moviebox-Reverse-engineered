.class public final Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "result",
        "",
        "getResult",
        "()Z",
        "setResult",
        "(Z)V",
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
.field private result:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;->result:Z

    return v0
.end method

.method public final setResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;->result:Z

    return-void
.end method
