.class final Lrm/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Llz/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrm/e;->o(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lrm/e$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lrm/e$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lrm/e$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/reactivex/rxjava3/core/m;
    .locals 4

    sget-object v0, Lrm/e;->a:Lrm/e;

    invoke-static {v0}, Lrm/e;->c(Lrm/e;)Lrm/a;

    move-result-object v0

    iget-object v1, p0, Lrm/e$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lrm/e$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Lrm/e$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, v3}, Lrm/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lrm/e$a;->a(Ljava/lang/String;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method
