.class public final Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO0O0;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00O0O;)V
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
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_image_album:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method
