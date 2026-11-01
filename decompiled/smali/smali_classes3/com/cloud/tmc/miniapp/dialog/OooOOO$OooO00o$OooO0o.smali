.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0o;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->tv_name:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
