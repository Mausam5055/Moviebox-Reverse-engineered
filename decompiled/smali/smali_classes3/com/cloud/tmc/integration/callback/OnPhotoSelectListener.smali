.class public interface abstract Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J \u0010\u0008\u001a\u00020\u00032\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000cH&JH\u0010\u0008\u001a\u00020\u00032\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000c2\u001c\u0008\u0002\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000e\u0018\u0001`\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;",
        "",
        "onAuthorized",
        "",
        "granted",
        "",
        "onCancel",
        "onDialogClickCancel",
        "onSelected",
        "data",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "selectPosition",
        "",
        "finishActivity",
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
.method public abstract onAuthorized(Z)V
.end method

.method public abstract onCancel()V
.end method

.method public abstract onDialogClickCancel()V
.end method

.method public abstract onSelected(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation
.end method
