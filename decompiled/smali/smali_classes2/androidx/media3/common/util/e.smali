.class public final synthetic Landroidx/media3/common/util/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/g;

.field public final synthetic b:Lcom/google/common/base/f;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/g;Lcom/google/common/base/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/e;->a:Landroidx/media3/common/util/g;

    iput-object p2, p0, Landroidx/media3/common/util/e;->b:Lcom/google/common/base/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/e;->a:Landroidx/media3/common/util/g;

    iget-object v1, p0, Landroidx/media3/common/util/e;->b:Lcom/google/common/base/f;

    invoke-static {v0, v1}, Landroidx/media3/common/util/g;->a(Landroidx/media3/common/util/g;Lcom/google/common/base/f;)V

    return-void
.end method
