.class public final synthetic Landroidx/work/impl/j1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/work/i0;

.field public final synthetic b:Landroidx/work/impl/f1;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/i0;Landroidx/work/impl/f1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/j1;->a:Landroidx/work/i0;

    iput-object p2, p0, Landroidx/work/impl/j1;->b:Landroidx/work/impl/f1;

    iput-object p3, p0, Landroidx/work/impl/j1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/j1;->a:Landroidx/work/i0;

    iget-object v1, p0, Landroidx/work/impl/j1;->b:Landroidx/work/impl/f1;

    iget-object v2, p0, Landroidx/work/impl/j1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/m1;->d(Landroidx/work/i0;Landroidx/work/impl/f1;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
