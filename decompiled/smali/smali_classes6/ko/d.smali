.class public final synthetic Lko/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/d0;

.field public final synthetic b:Lbo/d;


# direct methods
.method public synthetic constructor <init>(Lko/d0;Lbo/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/d;->a:Lko/d0;

    iput-object p2, p0, Lko/d;->b:Lbo/d;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lko/d;->a:Lko/d0;

    iget-object v1, p0, Lko/d;->b:Lbo/d;

    invoke-static {v0, v1}, Lko/d0;->y(Lko/d0;Lbo/d;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
