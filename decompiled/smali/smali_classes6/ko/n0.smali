.class public final synthetic Lko/n0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/o0;


# direct methods
.method public synthetic constructor <init>(Lko/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/n0;->a:Lko/o0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lko/n0;->a:Lko/o0;

    invoke-static {v0}, Lko/o0;->c(Lko/o0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
