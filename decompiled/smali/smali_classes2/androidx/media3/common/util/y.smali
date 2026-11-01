.class public final synthetic Landroidx/media3/common/util/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/z;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/z;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/y;->a:Landroidx/media3/common/util/z;

    iput-object p2, p0, Landroidx/media3/common/util/y;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/y;->a:Landroidx/media3/common/util/z;

    iget-object v1, p0, Landroidx/media3/common/util/y;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/media3/common/util/z;->a(Landroidx/media3/common/util/z;Landroid/content/Context;)V

    return-void
.end method
