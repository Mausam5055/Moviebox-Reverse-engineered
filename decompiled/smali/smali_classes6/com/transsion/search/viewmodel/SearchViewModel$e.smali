.class public final Lcom/transsion/search/viewmodel/SearchViewModel$e;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/viewmodel/SearchViewModel;->A(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/search/viewmodel/SearchViewModel;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    iput-object p2, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->e:Ljava/lang/String;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->t()Landroidx/lifecycle/b0;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/search/bean/SearchSuggestEntity;

    invoke-virtual {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$e;->e(Lcom/transsion/search/bean/SearchSuggestEntity;)V

    return-void
.end method

.method public e(Lcom/transsion/search/bean/SearchSuggestEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->e:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->j(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;Lcom/transsion/search/bean/SearchSuggestEntity;)V

    return-void
.end method
