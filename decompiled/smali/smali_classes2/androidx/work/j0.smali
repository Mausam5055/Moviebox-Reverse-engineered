.class public final synthetic Landroidx/work/j0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/work/Worker;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/Worker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/j0;->a:Landroidx/work/Worker;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/work/j0;->a:Landroidx/work/Worker;

    invoke-static {v0}, Landroidx/work/Worker;->o(Landroidx/work/Worker;)Landroidx/work/s$a;

    move-result-object v0

    return-object v0
.end method
