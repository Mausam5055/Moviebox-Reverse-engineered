.class public final Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView$OooO00o;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_msg_jump:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method
