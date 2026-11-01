.class public final Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView$OooO0OO;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/drawable/Drawable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
