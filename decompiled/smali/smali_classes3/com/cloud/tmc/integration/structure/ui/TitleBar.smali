.class public interface abstract Lcom/cloud/tmc/integration/structure/ui/TitleBar;
.super Ljava/lang/Object;


# virtual methods
.method public abstract attachPage(Lcom/cloud/tmc/integration/structure/Page;)V
.end method

.method public abstract getAddScreenVisibility()Z
.end method

.method public abstract getContent()Landroid/view/View;
.end method

.method public abstract getHomeAction()Ljava/lang/Integer;
.end method

.method public abstract isTransparent()Z
.end method

.method public abstract setAddScreenVisibility(Z)V
.end method

.method public abstract setHomeAction(IZ)V
.end method

.method public abstract setHomeVisibility(Z)V
.end method

.method public abstract setOnAddScreenClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnBackClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnHomeClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setThemeMode(I)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTitleBarVisible(Z)V
.end method

.method public abstract setTitleColor(Z)V
.end method

.method public abstract setTitleVisible(Z)V
.end method

.method public abstract setTransparent(Z)V
.end method
