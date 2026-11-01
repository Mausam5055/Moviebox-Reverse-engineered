.class final Lgr/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Llz/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgr/c;->q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgr/c;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgr/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgr/c$c;->a:Lgr/c;

    iput-object p2, p0, Lgr/c$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgr/c$c;->a:Lgr/c;

    iget-object v1, p0, Lgr/c$c;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lgr/c;->e(Lgr/c;Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;

    invoke-virtual {p0, p1}, Lgr/c$c;->a(Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    return-void
.end method
