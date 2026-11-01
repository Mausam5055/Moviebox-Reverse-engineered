.class public interface abstract Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001:\u0001\u000eJ\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0008\u0010\u000c\u001a\u00020\u0003H&J\u001a\u0010\r\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;",
        "",
        "onAddView",
        "",
        "customObject",
        "Lcom/google/gson/JsonObject;",
        "onViewChangeCallback",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;",
        "onDestory",
        "onPause",
        "onRemove",
        "onResume",
        "onStop",
        "onUpdateView",
        "ViewAction",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onAddView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
.end method

.method public abstract onDestory()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRemove()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onUpdateView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
.end method
