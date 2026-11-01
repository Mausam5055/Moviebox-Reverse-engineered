.class public interface abstract Lcom/transsion/mpush/api/IPushImageLoader$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mpush/api/IPushImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/mpush/api/IPushImageLoader$Callback;",
        "",
        "onSuccess",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "onFailed",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
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
.method public abstract onFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Landroid/graphics/Bitmap;)V
.end method
