.class public final synthetic Lko/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/d0;

.field public final synthetic b:Lmo/d;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lko/d0;Lmo/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/p;->a:Lko/d0;

    iput-object p2, p0, Lko/p;->b:Lmo/d;

    iput p3, p0, Lko/p;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lko/p;->a:Lko/d0;

    iget-object v1, p0, Lko/p;->b:Lmo/d;

    iget v2, p0, Lko/p;->c:I

    invoke-static {v0, v1, v2}, Lko/d0;->n(Lko/d0;Lmo/d;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
