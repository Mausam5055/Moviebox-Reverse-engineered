.class public interface abstract Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.KeyboardImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "hideKeyboard",
        "",
        "v",
        "Landroid/view/View;",
        "initKeyBoardChange",
        "releaseKeyBoardChange",
        "setKeyBoardListener",
        "listener",
        "Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;",
        "showKeyboard",
        "toggleSoftInput",
        "com.cloud.tmc.integration"
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
.method public abstract hideKeyboard(Landroid/view/View;)V
.end method

.method public abstract initKeyBoardChange(Landroid/view/View;)V
.end method

.method public abstract releaseKeyBoardChange(Landroid/view/View;)V
.end method

.method public abstract setKeyBoardListener(Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;)V
.end method

.method public abstract showKeyboard(Landroid/view/View;)V
.end method

.method public abstract toggleSoftInput(Landroid/view/View;)V
.end method
