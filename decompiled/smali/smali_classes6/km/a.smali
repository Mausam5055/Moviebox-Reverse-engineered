.class public final Lkm/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkm/b$a;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1

    const-string v0, "steps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkm/a;->a:Ljava/util/List;

    iput p2, p0, Lkm/a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lkm/a;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;
    .locals 8

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkm/a;->b:I

    iget-object v1, p0, Lkm/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lkm/a;->a:Ljava/util/List;

    iget v1, p0, Lkm/a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkm/b;

    iget v1, p0, Lkm/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkm/a;->b:I

    invoke-interface {v0, p1, p0}, Lkm/b;->a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;Lkm/b$a;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    move-result-object p1

    return-object p1
.end method
