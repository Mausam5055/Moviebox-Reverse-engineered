.class public final Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0O0;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0O0:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
