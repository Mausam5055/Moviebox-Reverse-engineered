.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x1

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-static {p2}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->j0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-static {v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->l0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$e;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-static {v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->k0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->Q0(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    :cond_4
    return p3

    :cond_5
    :goto_1
    sget-object p1, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/transsion/subtitle/R$string;->subtitle_search_empty_tips:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    return p3
.end method
