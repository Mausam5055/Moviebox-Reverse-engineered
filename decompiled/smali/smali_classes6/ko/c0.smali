.class public final synthetic Lko/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/d0;

.field public final synthetic b:Landroid/view/SurfaceView;


# direct methods
.method public synthetic constructor <init>(Lko/d0;Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/c0;->a:Lko/d0;

    iput-object p2, p0, Lko/c0;->b:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lko/c0;->a:Lko/d0;

    iget-object v1, p0, Lko/c0;->b:Landroid/view/SurfaceView;

    invoke-static {v0, v1}, Lko/d0;->t(Lko/d0;Landroid/view/SurfaceView;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
