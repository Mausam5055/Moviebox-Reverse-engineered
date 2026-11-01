.class public final synthetic Lko/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/d0;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lko/d0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/r;->a:Lko/d0;

    iput-boolean p2, p0, Lko/r;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lko/r;->a:Lko/d0;

    iget-boolean v1, p0, Lko/r;->b:Z

    invoke-static {v0, v1}, Lko/d0;->j(Lko/d0;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
