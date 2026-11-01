.class Lcom/hisavana/common/base/BaseNative$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/common/base/BaseNative;->setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/common/base/BaseNative;

.field final synthetic val$nativeInfo:Lcom/hisavana/common/bean/AdNativeInfo;


# direct methods
.method constructor <init>(Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNative$3;->this$0:Lcom/hisavana/common/base/BaseNative;

    iput-object p2, p0, Lcom/hisavana/common/base/BaseNative$3;->val$nativeInfo:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNative$3;->this$0:Lcom/hisavana/common/base/BaseNative;

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative$3;->val$nativeInfo:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    return-void
.end method
