.class public final synthetic Lko/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/d0;


# direct methods
.method public synthetic constructor <init>(Lko/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/m;->a:Lko/d0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lko/m;->a:Lko/d0;

    invoke-static {v0}, Lko/d0;->i(Lko/d0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
