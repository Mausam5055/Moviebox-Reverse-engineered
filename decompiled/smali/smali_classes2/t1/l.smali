.class public final synthetic Lt1/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroidx/media3/common/util/l;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/common/util/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lt1/l;->b:Landroidx/media3/common/util/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt1/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lt1/l;->b:Landroidx/media3/common/util/l;

    invoke-static {v0, v1}, Lt1/m;->a(Landroid/content/Context;Landroidx/media3/common/util/l;)V

    return-void
.end method
