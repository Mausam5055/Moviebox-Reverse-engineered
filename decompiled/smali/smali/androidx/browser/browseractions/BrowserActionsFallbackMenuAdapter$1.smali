.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/browser/browseractions/a;

.field final synthetic val$bitmapFuture:Lcom/google/common/util/concurrent/r;

.field final synthetic val$titleText:Ljava/lang/String;

.field final synthetic val$viewHolder:Landroidx/browser/browseractions/a$a;


# direct methods
.method constructor <init>(Landroidx/browser/browseractions/a;Ljava/lang/String;Landroidx/browser/browseractions/a$a;Lcom/google/common/util/concurrent/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$1;->val$titleText:Ljava/lang/String;

    iput-object p4, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$1;->val$bitmapFuture:Lcom/google/common/util/concurrent/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
