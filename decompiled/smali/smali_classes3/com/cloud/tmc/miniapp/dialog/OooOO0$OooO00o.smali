.class public final Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOO0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOO0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Cancel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getEnable()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oo:Lcom/cloud/tmc/miniapp/dialog/OooOO0O;

    if-eqz p2, :cond_2

    invoke-interface {p2, p3, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOO0O;->OooO00o(ILcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;)V

    :cond_2
    return-void
.end method
