.class public interface abstract Lcom/transsion/mpush/api/IPushFeature;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mpush/api/IPushFeature$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u0001H\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/mpush/api/IPushFeature;",
        "",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "onTrigger",
        "source",
        "",
        "onMessageReceive",
        "msgId",
        "",
        "message",
        "refreshMessage",
        "",
        "destroy",
        "MBPush_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract onMessageReceive(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onTrigger(I)V
.end method

.method public abstract refreshMessage(Ljava/lang/Object;)Z
.end method
