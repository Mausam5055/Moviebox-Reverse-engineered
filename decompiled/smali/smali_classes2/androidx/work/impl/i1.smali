.class public final synthetic Landroidx/work/impl/i1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/work/impl/f1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/work/i0;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/i1;->a:Landroidx/work/impl/f1;

    iput-object p2, p0, Landroidx/work/impl/i1;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/work/impl/i1;->c:Landroidx/work/i0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/i1;->a:Landroidx/work/impl/f1;

    iget-object v1, p0, Landroidx/work/impl/i1;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/i1;->c:Landroidx/work/i0;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/m1;->a(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/i0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
