.class public final Lcom/cloud/tmc/miniapp/base/ShowPageStore;
.super Ljava/lang/Object;


# instance fields
.field private final showPages:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/miniapp/base/ShowPageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->showPages:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final findShowPages()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/miniapp/base/ShowPageData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->showPages:Ljava/util/Stack;

    return-object v0
.end method

.method public final putShowPage(Lcom/cloud/tmc/miniapp/base/ShowPageData;)V
    .locals 1

    const-string v0, "showPageData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->showPages:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
