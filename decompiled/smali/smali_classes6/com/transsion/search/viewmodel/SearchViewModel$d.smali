.class final Lcom/transsion/search/viewmodel/SearchViewModel$d;
.super Ljava/lang/Object;

# interfaces
.implements Llz/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/viewmodel/SearchViewModel;->z(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/viewmodel/SearchViewModel;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$d;->a:Lcom/transsion/search/viewmodel/SearchViewModel;

    iput-object p2, p0, Lcom/transsion/search/viewmodel/SearchViewModel$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$d;->a:Lcom/transsion/search/viewmodel/SearchViewModel;

    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->t()Landroidx/lifecycle/b0;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel$d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
