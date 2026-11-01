.class public final synthetic Lko/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/d0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lko/d0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/x;->a:Lko/d0;

    iput p2, p0, Lko/x;->b:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lko/x;->a:Lko/d0;

    iget v1, p0, Lko/x;->b:I

    invoke-static {v0, v1}, Lko/d0;->f(Lko/d0;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
