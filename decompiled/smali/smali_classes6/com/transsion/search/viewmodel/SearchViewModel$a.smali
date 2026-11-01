.class public final Lcom/transsion/search/viewmodel/SearchViewModel$a;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/viewmodel/SearchViewModel;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/search/viewmodel/SearchViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/search/viewmodel/SearchViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$a;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$a;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/search/bean/HotSubjectEntity;

    invoke-virtual {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$a;->e(Lcom/transsion/search/bean/HotSubjectEntity;)V

    return-void
.end method

.method public e(Lcom/transsion/search/bean/HotSubjectEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel$a;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method
