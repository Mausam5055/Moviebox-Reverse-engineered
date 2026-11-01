.class public final Lcf/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcf/o0;

.field private final b:Lcf/e;


# direct methods
.method public constructor <init>(Lcf/o0;Lcf/e;)V
    .locals 1

    const-string v0, "pb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/f;->a:Lcf/o0;

    iput-object p2, p0, Lcf/f;->b:Lcf/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcf/f;->a:Lcf/o0;

    invoke-virtual {v0, p1}, Lcf/o0;->l(Ljava/util/List;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcf/f;->b:Lcf/e;

    invoke-interface {v0, p1}, Lcf/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public final c(Ljava/util/List;Lbf/a;)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcf/f;->a:Lcf/o0;

    iget-object v1, p0, Lcf/f;->b:Lcf/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcf/o0;->O(Lcf/e;ZLjava/util/List;Lbf/a;)V

    return-void
.end method

.method public final d(Lcom/permissionx/guolindev/dialog/RationaleDialog;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcf/f;->a:Lcf/o0;

    iget-object v1, p0, Lcf/f;->b:Lcf/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcf/o0;->N(Lcf/e;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V

    return-void
.end method

.method public final e(Ljava/util/List;Lbf/a;)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcf/f;->a:Lcf/o0;

    iget-object v1, p0, Lcf/f;->b:Lcf/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcf/o0;->O(Lcf/e;ZLjava/util/List;Lbf/a;)V

    return-void
.end method
