.class public final Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lsq/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$d;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$d;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->access$getSelectGroup$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/publish/api/GroupBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/publish/api/GroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$d;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    invoke-static {v1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->access$getMSearchViewModel$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
