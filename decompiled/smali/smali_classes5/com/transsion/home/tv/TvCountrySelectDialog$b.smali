.class public final Lcom/transsion/home/tv/TvCountrySelectDialog$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/TvCountrySelectDialog;->E0(Lgl/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgl/i;

.field final synthetic b:Lcom/transsion/home/tv/TvCountrySelectDialog;


# direct methods
.method constructor <init>(Lgl/i;Lcom/transsion/home/tv/TvCountrySelectDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/TvCountrySelectDialog$b;->a:Lgl/i;

    iput-object p2, p0, Lcom/transsion/home/tv/TvCountrySelectDialog$b;->b:Lcom/transsion/home/tv/TvCountrySelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/home/tv/TvCountrySelectDialog$b;->a:Lgl/i;

    iget-object v0, v0, Lgl/i;->d:Landroid/widget/ImageView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/home/tv/TvCountrySelectDialog$b;->b:Lcom/transsion/home/tv/TvCountrySelectDialog;

    invoke-static {v0}, Lcom/transsion/home/tv/TvCountrySelectDialog;->u0(Lcom/transsion/home/tv/TvCountrySelectDialog;)Lcom/transsion/home/tv/adapter/l;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/home/tv/TvCountrySelectDialog$b;->b:Lcom/transsion/home/tv/TvCountrySelectDialog;

    invoke-static {v1, p1}, Lcom/transsion/home/tv/TvCountrySelectDialog;->t0(Lcom/transsion/home/tv/TvCountrySelectDialog;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
