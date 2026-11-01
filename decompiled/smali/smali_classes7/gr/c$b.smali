.class public final Lgr/c$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgr/c;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lgr/c;


# direct methods
.method constructor <init>(Lgr/c;)V
    .locals 0

    iput-object p1, p0, Lgr/c$b;->d:Lgr/c;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lgr/c$b;->d:Lgr/c;

    invoke-virtual {p1}, Lgr/c;->l()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/search_pugc/bean/UGCRankSearchData;

    invoke-virtual {p0, p1}, Lgr/c$b;->e(Lcom/transsion/search_pugc/bean/UGCRankSearchData;)V

    return-void
.end method

.method public e(Lcom/transsion/search_pugc/bean/UGCRankSearchData;)V
    .locals 1

    iget-object v0, p0, Lgr/c$b;->d:Lgr/c;

    invoke-virtual {v0}, Lgr/c;->l()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method
