.class public final synthetic Lko/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/d0;

.field public final synthetic b:Landroid/view/TextureView;


# direct methods
.method public synthetic constructor <init>(Lko/d0;Landroid/view/TextureView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/y;->a:Lko/d0;

    iput-object p2, p0, Lko/y;->b:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lko/y;->a:Lko/d0;

    iget-object v1, p0, Lko/y;->b:Landroid/view/TextureView;

    invoke-static {v0, v1}, Lko/d0;->p(Lko/d0;Landroid/view/TextureView;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
