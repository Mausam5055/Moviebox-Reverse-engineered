.class public final Lgr/c$e;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgr/c;->r(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lgr/c;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgr/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgr/c$e;->d:Lgr/c;

    iput-object p2, p0, Lgr/c$e;->e:Ljava/lang/String;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lgr/c$e;->d:Lgr/c;

    invoke-virtual {p1}, Lgr/c;->m()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;

    invoke-virtual {p0, p1}, Lgr/c$e;->e(Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    return-void
.end method

.method public e(Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V
    .locals 2

    iget-object v0, p0, Lgr/c$e;->d:Lgr/c;

    iget-object v1, p0, Lgr/c$e;->e:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lgr/c;->e(Lgr/c;Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    return-void
.end method
