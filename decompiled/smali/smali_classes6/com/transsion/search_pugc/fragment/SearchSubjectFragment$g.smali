.class public final Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->O0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->s0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    const-string p2, "input"

    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->L0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->o0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {p3}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->p0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Lcom/transsion/search_pugc/g;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/transsion/search_pugc/g;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
