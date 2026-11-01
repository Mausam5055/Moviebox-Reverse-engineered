.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0O;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOOO0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/recyclerview/widget/RecyclerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->rv_menu_items:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
