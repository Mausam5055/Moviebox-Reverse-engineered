.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOOO0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0oo:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
