.class public final synthetic Landroidx/media3/common/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/g;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/g;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/d;->a:Landroidx/media3/common/util/g;

    iput-object p2, p0, Landroidx/media3/common/util/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/d;->a:Landroidx/media3/common/util/g;

    iget-object v1, p0, Landroidx/media3/common/util/d;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/media3/common/util/g;->b(Landroidx/media3/common/util/g;Ljava/lang/Object;)V

    return-void
.end method
