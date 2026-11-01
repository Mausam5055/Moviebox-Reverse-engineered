.class public final Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/CapsuleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/CapsuleView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
